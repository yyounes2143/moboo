package com.tencent.thumbplayer.tcmedia.core.decoder;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import androidx.media3.decoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils;
import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog;
import com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo;
import com.tencent.thumbplayer.tcmedia.g.a;
import com.tencent.thumbplayer.tcmedia.g.b;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes6.dex */
public abstract class TPBaseMediaCodecDecoder implements ITPMediaCodecDecoder {
    private static final int DUMP_BYTE_BUFFER_BYTES = 100;
    private static final int DUMP_ONE_LINE_BYTES = 20;
    private static final int MEDIA_CODEC_ERROR_INDEX = -1000;
    private static long MEDIA_CODEC_INPUT_TIMEOUT_US = 2000;
    private static long MEDIA_CODEC_OUTPUT_TIMEOUT_US = 2000;
    private static final int MSG_FLUSH = 1002;
    private static final int MSG_RELEASE = 1003;
    private static final int MSG_RELEASE_OUTPUT_BUFFER = 1000;
    private static final int MSG_SET_OUTPUT_SURFACE = 1001;
    private static boolean sTMediaCodecInited = false;
    protected int mCodecId;
    private b mCodec = null;
    protected Surface mSurface = null;
    protected boolean mStarted = false;
    private TPFrameInfo mFrameInfo = new TPFrameInfo();
    private boolean mEnableSetOutputSurfaceApi = false;
    private MediaCodec.CryptoInfo mCryptoInfo = null;
    protected MediaCrypto mMediaCrypto = null;
    protected boolean mEnableAsyncMode = false;
    private HandlerThread mDecodeThread = null;
    private AsyncDecodeHandler mDecoderHandler = null;
    private BlockingQueue<Integer> mInputQueue = new LinkedBlockingQueue();
    private BlockingQueue<TPFrameInfo> mOutputQueue = new LinkedBlockingQueue();
    private boolean mRestartCodecOnException = false;
    protected int mDrmType = -1;
    private boolean mEnableAudioPassThrough = false;
    protected boolean mEnableMediaCodecReuse = false;
    private final Object mThreadLock = new Object();
    private int mHandlerResult = 0;

    /* loaded from: classes6.dex */
    public class AsyncDecodeHandler extends Handler {
        public AsyncDecodeHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (TPBaseMediaCodecDecoder.this.mThreadLock) {
                try {
                    boolean z = false;
                    int onReleaseOutputBuffer = 0;
                    switch (message.what) {
                        case 1000:
                            TPBaseMediaCodecDecoder tPBaseMediaCodecDecoder = TPBaseMediaCodecDecoder.this;
                            int i = message.arg1;
                            if (message.arg2 == 1) {
                                z = true;
                            }
                            onReleaseOutputBuffer = tPBaseMediaCodecDecoder.onReleaseOutputBuffer(i, z);
                            break;
                        case 1001:
                            onReleaseOutputBuffer = TPBaseMediaCodecDecoder.this.onSetOutputSurface((Surface) message.obj);
                            break;
                        case 1002:
                            onReleaseOutputBuffer = TPBaseMediaCodecDecoder.this.onFlush();
                            break;
                        case 1003:
                            onReleaseOutputBuffer = TPBaseMediaCodecDecoder.this.onRelease();
                            break;
                    }
                    TPBaseMediaCodecDecoder.this.handleMessageComplete(onReleaseOutputBuffer);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* loaded from: classes6.dex */
    public class BufferCallback extends b.a {
        private BufferCallback() {
        }

        @Override // com.tencent.thumbplayer.tcmedia.g.b.a
        public void onError(b bVar, MediaCodec.CodecException codecException) {
            String logTag = TPBaseMediaCodecDecoder.this.getLogTag();
            TPNativeLog.printLog(4, logTag, "onError: " + TPBaseMediaCodecDecoder.this.getStackTrace(codecException));
            TPBaseMediaCodecDecoder.this.handleRelease();
        }

        @Override // com.tencent.thumbplayer.tcmedia.g.b.a
        public void onInputBufferAvailable(b bVar, int i) {
            try {
                TPBaseMediaCodecDecoder.this.mInputQueue.put(Integer.valueOf(i));
            } catch (Exception e) {
                TPNativeLog.printLog(3, TPBaseMediaCodecDecoder.this.getLogTag(), TPBaseMediaCodecDecoder.this.getStackTrace(e));
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.g.b.a
        public void onOutputBufferAvailable(b bVar, int i, MediaCodec.BufferInfo bufferInfo) {
            try {
                TPFrameInfo tPFrameInfo = new TPFrameInfo();
                tPFrameInfo.errCode = 0;
                tPFrameInfo.bufferIndex = i;
                tPFrameInfo.ptsUs = bufferInfo.presentationTimeUs;
                TPBaseMediaCodecDecoder.this.processOutputBuffer(bVar, i, bufferInfo, tPFrameInfo);
                TPBaseMediaCodecDecoder.this.mOutputQueue.put(tPFrameInfo);
            } catch (Exception e) {
                TPNativeLog.printLog(3, TPBaseMediaCodecDecoder.this.getLogTag(), TPBaseMediaCodecDecoder.this.getStackTrace(e));
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.g.b.a
        public void onOutputFormatChanged(b bVar, MediaFormat mediaFormat) {
            TPBaseMediaCodecDecoder.this.processOutputFormatChanged(mediaFormat);
        }
    }

    public TPBaseMediaCodecDecoder(int i) {
        this.mCodecId = i;
        initTMediaCodec();
    }

    private void bufferSizeCheck(ByteBuffer byteBuffer, byte[] bArr) {
        if (byteBuffer.remaining() < bArr.length) {
            String logTag = getLogTag();
            TPNativeLog.printLog(4, logTag, "decodeAsync, not enough space, byteBuffer.remaining:" + byteBuffer.remaining() + ", buffer size:" + bArr.length);
            try {
                dumpByteArray(bArr, 0, 100, 20);
            } catch (Exception e) {
                TPNativeLog.printLog(4, getLogTag(), e.toString());
            }
        }
    }

    private int decodeAsync(byte[] bArr, boolean z, long j, boolean z2) {
        Integer poll = this.mInputQueue.poll();
        if (poll == null) {
            return 1;
        }
        try {
            ByteBuffer c = this.mCodec.c(poll.intValue());
            if (c != null) {
                bufferSizeCheck(c, bArr);
                c.put(bArr);
            }
            if (z2 && this.mCryptoInfo != null) {
                this.mCodec.a(poll.intValue(), 0, this.mCryptoInfo, j, z ? 1 : 0);
            } else {
                this.mCodec.a(poll.intValue(), 0, bArr.length, j, z ? 1 : 0);
            }
            return 0;
        } catch (Exception e) {
            return onMediaCodecException(e);
        }
    }

    private TPFrameInfo dequeueOutputBufferAsync() {
        this.mFrameInfo.errCode = 1;
        TPFrameInfo poll = this.mOutputQueue.poll();
        if (poll == null) {
            return this.mFrameInfo;
        }
        return poll;
    }

    private void dumpByteArray(byte[] bArr, int i, int i2, int i3) {
        if (bArr != null && i >= 0 && i2 > 0 && i < bArr.length && i < i2 && i3 > 0) {
            if (bArr.length <= i2) {
                i2 = bArr.length;
            }
            int min = Math.min(i2 - i, 100) + i;
            StringBuilder sb = new StringBuilder();
            TPNativeLog.printLog(2, getLogTag(), "dumpByteArray begin:");
            int i4 = 0;
            while (i < min) {
                String hexString = Integer.toHexString(bArr[i] & 255);
                if (hexString.length() == 1) {
                    hexString = "0".concat(hexString);
                }
                sb.append(hexString.toUpperCase());
                i4++;
                if (i4 % i3 == 0) {
                    TPNativeLog.printLog(2, getLogTag(), sb.toString());
                    sb.setLength(0);
                } else {
                    sb.append(" ");
                }
                i++;
            }
            TPNativeLog.printLog(2, getLogTag(), "dumpByteArray end.");
            return;
        }
        throw new IllegalArgumentException();
    }

    private void exitDecodeThread() {
        HandlerThread handlerThread = this.mDecodeThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            try {
                this.mDecodeThread.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    private int flushAsync() {
        TPNativeLog.printLog(2, getLogTag(), "flushAsync: ");
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1002;
        return waitingForHandleMessage(obtainMessage);
    }

    private int handleFlush() {
        TPNativeLog.printLog(2, getLogTag(), "handleFlush: ");
        b bVar = this.mCodec;
        if (bVar == null) {
            return 104;
        }
        try {
            bVar.h();
            return 0;
        } catch (Exception e) {
            return onMediaCodecException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessageComplete(int i) {
        this.mHandlerResult = i;
        this.mThreadLock.notify();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int handleRelease() {
        b bVar = this.mCodec;
        if (bVar == null) {
            return 101;
        }
        this.mStarted = false;
        try {
            try {
                bVar.f();
                return 0;
            } catch (Exception e) {
                String logTag = getLogTag();
                TPNativeLog.printLog(4, logTag, "stop: failed!" + getStackTrace(e));
                this.mCodec.g();
                this.mCodec = null;
                return 3;
            }
        } finally {
            this.mCodec.g();
            this.mCodec = null;
        }
    }

    private int handleReleaseOutputBuffer(int i, boolean z) {
        b bVar = this.mCodec;
        if (bVar != null && i >= 0) {
            try {
                bVar.a(i, z);
                return 0;
            } catch (Exception e) {
                return onMediaCodecException(e);
            }
        }
        return 3;
    }

    private int handleSetOutputSurface(Surface surface) {
        TPNativeLog.printLog(2, getLogTag(), "setOutputSurface: ".concat(String.valueOf(surface)));
        Surface surface2 = this.mSurface;
        if (surface2 == surface) {
            TPNativeLog.printLog(3, getLogTag(), "setOutputSurface: set the same surface.");
            return 0;
        }
        this.mSurface = surface;
        if (this.mCodec == null) {
            return 0;
        }
        if (surface2 != null && surface != null) {
            try {
                if (surface.isValid() && this.mEnableSetOutputSurfaceApi) {
                    this.mCodec.a(surface);
                    return 0;
                }
            } catch (Exception e) {
                String logTag = getLogTag();
                TPNativeLog.printLog(4, logTag, "setOutputSurface onMediaCodecException:\n" + getStackTrace(e));
            }
        }
        return 3;
    }

    private int handleSignalEndOfStream(int i) {
        try {
            this.mCodec.a(i, 0, 0, 0L, 4);
            return 0;
        } catch (Exception e) {
            String logTag = getLogTag();
            TPNativeLog.printLog(4, logTag, "handleSignalEndOfStream: failed!" + getStackTrace(e));
            return 3;
        }
    }

    private boolean initMediaCodecInternal() {
        boolean z;
        boolean z2;
        boolean z3;
        try {
            List<String> mimeCandidates = getMimeCandidates();
            boolean z4 = false;
            String str = null;
            String str2 = null;
            for (int i = 0; i < mimeCandidates.size() && str == null; i++) {
                str2 = mimeCandidates.get(i);
                TPNativeLog.printLog(2, getLogTag(), "initMediaCodec with mime:" + str2 + " mDrmType:" + this.mDrmType);
                MediaCrypto mediaCrypto = this.mMediaCrypto;
                if (mediaCrypto != null) {
                    z3 = mediaCrypto.requiresSecureDecoderComponent(str2);
                } else {
                    z3 = false;
                }
                if (z3 && TPCodecUtils.isInDRMLevel1Blacklist(this.mDrmType)) {
                    TPNativeLog.printLog(2, getLogTag(), "Device " + TPSystemInfo.getDeviceName() + " DrmType " + this.mDrmType + " fallback to L3.");
                    z4 = false;
                } else {
                    z4 = z3;
                }
                str = getCodecName(str2, z4);
                TPNativeLog.printLog(2, getLogTag(), "initMediaCodec got codecName:" + str + " secureComponent " + z4);
            }
            if (str == null) {
                TPNativeLog.printLog(4, getLogTag(), "initMediaCodec failed, codecName is null.");
                return false;
            }
            if ("audio/vnd.dts".equals(str2)) {
                TPNativeLog.printLog(2, getLogTag(), "initMediaCodec current mime type:" + str2 + " is audio dts, need set input timeout to 0!");
                MEDIA_CODEC_INPUT_TIMEOUT_US = 0L;
                MEDIA_CODEC_OUTPUT_TIMEOUT_US = 0L;
            }
            b a2 = b.a(str);
            this.mCodec = a2;
            if (this.mEnableMediaCodecReuse && !this.mEnableAsyncMode) {
                z = true;
            } else {
                z = false;
            }
            a2.a(z);
            this.mCodec.a(new com.tencent.thumbplayer.tcmedia.g.a.b() { // from class: com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder.2
                @Override // com.tencent.thumbplayer.tcmedia.g.a.b, com.tencent.thumbplayer.tcmedia.g.a.a
                public void onReuseCodecAPIException(String str3, Throwable th) {
                    super.onReuseCodecAPIException(str3, th);
                    TPMediaCodecManager.onMediaCodecException(TPBaseMediaCodecDecoder.this.mCodecId, str3);
                }

                @Override // com.tencent.thumbplayer.tcmedia.g.a.b, com.tencent.thumbplayer.tcmedia.g.a.a
                public void onStarted(Boolean bool, String str3) {
                    super.onStarted(bool, str3);
                    TPMediaCodecManager.onMediaCodecReady(TPBaseMediaCodecDecoder.this.mCodecId, str3);
                }
            });
            TPNativeLog.printLog(2, getLogTag(), "initMediaCodec codec name: ".concat(str));
            if (this.mEnableAsyncMode) {
                TPNativeLog.printLog(2, getLogTag(), "MediaCodec EnableAsyncMode！");
                HandlerThread handlerThread = new HandlerThread("MediaCodecThread");
                this.mDecodeThread = handlerThread;
                handlerThread.start();
                this.mDecoderHandler = new AsyncDecodeHandler(this.mDecodeThread.getLooper());
                this.mCodec.a(new BufferCallback(), this.mDecoderHandler);
            }
            TPMediaCodecManager.onMediaCodecReportEvent(this.mCodecId, 1);
            configCodec(this.mCodec, str2);
            TPMediaCodecManager.onMediaCodecReportEvent(this.mCodecId, 2);
            TPMediaCodecManager.onMediaCodecReportEvent(this.mCodecId, 3);
            TPNativeLog.printLog(2, getLogTag(), "initMediaCodec, start codec start");
            this.mCodec.e();
            TPNativeLog.printLog(2, getLogTag(), "initMediaCodec, start codec finished");
            TPMediaCodecManager.onMediaCodecReportEvent(this.mCodecId, 4);
            this.mStarted = true;
            if (this.mDrmType != -1) {
                if (TPCodecUtils.getDecoderName(str2, true) != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                TPMediaDrmInfo tPMediaDrmInfo = new TPMediaDrmInfo();
                tPMediaDrmInfo.supportSecureDecoder = z2;
                tPMediaDrmInfo.supportSecureDecrypt = z4;
                tPMediaDrmInfo.componentName = str;
                tPMediaDrmInfo.drmType = this.mDrmType;
                TPNativeLog.printLog(2, getLogTag(), "DRM Info: supportSecureDecoder: " + tPMediaDrmInfo.supportSecureDecoder + " supportSecureDecrypt:" + tPMediaDrmInfo.supportSecureDecrypt + " componentName: " + tPMediaDrmInfo.componentName + " drmType: " + tPMediaDrmInfo.drmType);
                TPMediaCodecManager.onMediaDrmInfo(this.mCodecId, tPMediaDrmInfo);
            }
            return true;
        } catch (Exception e) {
            TPMediaCodecManager.onMediaCodecReportEvent(this.mCodecId, 4);
            TPNativeLog.printLog(4, getLogTag(), getStackTrace(e));
            return false;
        }
    }

    private static synchronized void initTMediaCodec() {
        synchronized (TPBaseMediaCodecDecoder.class) {
            if (sTMediaCodecInited) {
                return;
            }
            a.b();
            a.a().a(true);
            a.a().a(new com.tencent.thumbplayer.tcmedia.g.h.a() { // from class: com.tencent.thumbplayer.tcmedia.core.decoder.TPBaseMediaCodecDecoder.1
                @Override // com.tencent.thumbplayer.tcmedia.g.h.a
                public final void d(String str, String str2) {
                    TPNativeLog.printLog(1, str, str2);
                }

                @Override // com.tencent.thumbplayer.tcmedia.g.h.a
                public final void e(String str, String str2, Throwable th) {
                    TPNativeLog.printLog(4, str, str2);
                }

                @Override // com.tencent.thumbplayer.tcmedia.g.h.a
                public final void i(String str, String str2) {
                    TPNativeLog.printLog(2, str, str2);
                }

                @Override // com.tencent.thumbplayer.tcmedia.g.h.a
                public final void v(String str, String str2) {
                    TPNativeLog.printLog(0, str, str2);
                }

                @Override // com.tencent.thumbplayer.tcmedia.g.h.a
                public final void w(String str, String str2, Throwable th) {
                    TPNativeLog.printLog(3, str, str2);
                }
            });
            sTMediaCodecInited = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int onFlush() {
        this.mInputQueue.clear();
        this.mOutputQueue.clear();
        int handleFlush = handleFlush();
        this.mCodec.e();
        return handleFlush;
    }

    private int onMediaCodecException(Exception exc) {
        String logTag = getLogTag();
        TPNativeLog.printLog(4, logTag, "onMediaCodecException!\n" + getStackTrace(exc));
        resetFrameInfo();
        processMediaCodecException(exc);
        if (this.mRestartCodecOnException) {
            initMediaCodecInternal();
            return 4;
        }
        handleRelease();
        return 103;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int onRelease() {
        this.mInputQueue.clear();
        this.mOutputQueue.clear();
        return handleRelease();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int onReleaseOutputBuffer(int i, boolean z) {
        return handleReleaseOutputBuffer(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int onSetOutputSurface(Surface surface) {
        return handleSetOutputSurface(surface);
    }

    private int queueInputBuffer(byte[] bArr, long j, boolean z) {
        MediaCodec.CryptoInfo cryptoInfo;
        try {
            ByteBuffer[] j2 = this.mCodec.j();
            int a2 = this.mCodec.a(MEDIA_CODEC_INPUT_TIMEOUT_US);
            if (a2 >= 0) {
                ByteBuffer byteBuffer = j2[a2];
                bufferSizeCheck(byteBuffer, bArr);
                byteBuffer.put(bArr);
                if (z && (cryptoInfo = this.mCryptoInfo) != null) {
                    this.mCodec.a(a2, 0, cryptoInfo, j, 0);
                    return 0;
                }
                this.mCodec.a(a2, 0, bArr.length, j, 0);
                return 0;
            } else if (a2 == -1) {
                return 1;
            } else {
                return 103;
            }
        } catch (Exception e) {
            return onMediaCodecException(e);
        }
    }

    private int releaseAsync() {
        TPNativeLog.printLog(2, getLogTag(), "releaseAsync: ");
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1003;
        int waitingForHandleMessage = waitingForHandleMessage(obtainMessage);
        exitDecodeThread();
        return waitingForHandleMessage;
    }

    private int releaseOutputBufferAsync(int i, boolean z) {
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1000;
        obtainMessage.arg1 = i;
        obtainMessage.arg2 = z ? 1 : 0;
        return waitingForHandleMessage(obtainMessage);
    }

    private void resetFrameInfo() {
        TPFrameInfo tPFrameInfo = this.mFrameInfo;
        tPFrameInfo.bufferIndex = -1000;
        tPFrameInfo.ptsUs = -1L;
        tPFrameInfo.data = null;
        tPFrameInfo.errCode = 103;
    }

    private MediaCodecInfo selectCodec(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (!codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        return codecInfoAt;
                    }
                }
                continue;
            }
        }
        return null;
    }

    private int setOutputSurfaceAsync(Surface surface) {
        TPNativeLog.printLog(2, getLogTag(), "setOutputSurfaceAsync: ".concat(String.valueOf(surface)));
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1001;
        obtainMessage.obj = surface;
        return waitingForHandleMessage(obtainMessage);
    }

    private int signalEndOfStreamAsync() {
        Integer poll = this.mInputQueue.poll();
        if (poll == null) {
            return 1;
        }
        return handleSignalEndOfStream(poll.intValue());
    }

    private int waitingForHandleMessage(Message message) {
        synchronized (this.mThreadLock) {
            message.sendToTarget();
            try {
                this.mThreadLock.wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return this.mHandlerResult;
    }

    public abstract void configCodec(b bVar, String str);

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public int decode(byte[] bArr, boolean z, long j, boolean z2) {
        if (this.mStarted && this.mCodec != null) {
            if (this.mEnableAsyncMode) {
                return decodeAsync(bArr, z, j, z2);
            }
            return queueInputBuffer(bArr, j, z2);
        }
        return 101;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public TPFrameInfo dequeueOutputBuffer() {
        String logTag;
        String str;
        if (this.mCodec == null) {
            return this.mFrameInfo;
        }
        resetFrameInfo();
        if (this.mEnableAsyncMode) {
            return dequeueOutputBufferAsync();
        }
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        try {
            int a2 = this.mCodec.a(bufferInfo, MEDIA_CODEC_OUTPUT_TIMEOUT_US);
            if (a2 >= 0) {
                int i = bufferInfo.flags;
                if (i == 4) {
                    logTag = getLogTag();
                    str = "dequeueOutputBuffer: BUFFER_FLAG_END_OF_STREAM";
                    TPNativeLog.printLog(1, logTag, str);
                    this.mFrameInfo.errCode = 2;
                    return this.mFrameInfo;
                }
                if (i == 2 && this.mEnableAudioPassThrough) {
                    TPNativeLog.printLog(1, getLogTag(), "dequeueOutputBuffer: BUFFER_FLAG_CODEC_CONFIG, AudioPassThrough");
                    TPFrameInfo tPFrameInfo = this.mFrameInfo;
                    tPFrameInfo.bufferIndex = a2;
                    tPFrameInfo.ptsUs = bufferInfo.presentationTimeUs;
                    processOutputConfigData(this.mCodec, a2, bufferInfo, tPFrameInfo);
                } else {
                    TPFrameInfo tPFrameInfo2 = this.mFrameInfo;
                    tPFrameInfo2.bufferIndex = a2;
                    tPFrameInfo2.ptsUs = bufferInfo.presentationTimeUs;
                    tPFrameInfo2.errCode = 0;
                    processOutputBuffer(this.mCodec, a2, bufferInfo, tPFrameInfo2);
                }
                return this.mFrameInfo;
            }
            if (a2 == -2) {
                processOutputFormatChanged(this.mCodec.i());
            } else if (a2 != -1) {
                if (a2 == -3) {
                    TPNativeLog.printLog(1, getLogTag(), "dequeueOutputBuffer: INFO_OUTPUT_BUFFERS_CHANGED!");
                } else if (bufferInfo.flags == 4) {
                    logTag = getLogTag();
                    str = "dequeueOutputBuffer: BUFFER_FLAG_END_OF_STREAM!";
                    TPNativeLog.printLog(1, logTag, str);
                    this.mFrameInfo.errCode = 2;
                    return this.mFrameInfo;
                } else {
                    TPNativeLog.printLog(4, getLogTag(), "dequeueOutputBuffer: TP_ERROR_DECODE_FAILED! index = ".concat(String.valueOf(a2)));
                    this.mFrameInfo.errCode = 103;
                    return this.mFrameInfo;
                }
            }
            this.mFrameInfo.errCode = 1;
            return this.mFrameInfo;
        } catch (Exception e) {
            this.mFrameInfo.errCode = onMediaCodecException(e);
            return this.mFrameInfo;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public int flush() {
        TPNativeLog.printLog(2, getLogTag(), "flush: ");
        if (this.mCodec == null) {
            return 104;
        }
        if (this.mEnableAsyncMode) {
            return flushAsync();
        }
        return handleFlush();
    }

    public abstract String getCodecName(String str, boolean z);

    public abstract String getLogTag();

    public abstract List<String> getMimeCandidates();

    public String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public abstract void processMediaCodecException(Exception exc);

    public abstract void processOutputBuffer(b bVar, int i, MediaCodec.BufferInfo bufferInfo, TPFrameInfo tPFrameInfo);

    public abstract void processOutputConfigData(b bVar, int i, MediaCodec.BufferInfo bufferInfo, TPFrameInfo tPFrameInfo);

    public abstract void processOutputFormatChanged(MediaFormat mediaFormat);

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public int release() {
        if (this.mEnableAsyncMode) {
            return releaseAsync();
        }
        return handleRelease();
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public int releaseOutputBuffer(int i, boolean z) {
        if (this.mCodec != null && i >= 0) {
            if (this.mEnableAsyncMode) {
                return releaseOutputBufferAsync(i, z);
            }
            return handleReleaseOutputBuffer(i, z);
        }
        return 3;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public void setCryptoInfo(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        if (this.mCryptoInfo == null) {
            this.mCryptoInfo = new MediaCodec.CryptoInfo();
        }
        this.mCryptoInfo.set(i, iArr, iArr2, bArr, bArr2, i2);
        if (Build.VERSION.SDK_INT >= 24) {
            this.mCryptoInfo.setPattern(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3, i4));
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public int setOperateRate(float f) {
        if (this.mCodec != null) {
            try {
                TPNativeLog.printLog(2, getLogTag(), "setOperateRate: ".concat(String.valueOf(f)));
                Bundle bundle = new Bundle();
                bundle.putShort(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, (short) 0);
                bundle.putFloat("operating-rate", f);
                this.mCodec.a(bundle);
            } catch (Exception unused) {
                String logTag = getLogTag();
                TPNativeLog.printLog(3, logTag, "setOperateRate: " + f + " failed.");
            }
        }
        return 0;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public int setOutputSurface(Surface surface) {
        if (this.mEnableAsyncMode) {
            return setOutputSurfaceAsync(surface);
        }
        return handleSetOutputSurface(surface);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBool(int i, boolean z) {
        String logTag;
        String str;
        if (i != 0) {
            int i2 = 3;
            if (i != 1) {
                if (i != 3) {
                    if (i != 4) {
                        TPNativeLog.printLog(3, getLogTag(), "Unknown paramKey: ".concat(String.valueOf(i)));
                        return false;
                    }
                    this.mEnableMediaCodecReuse = z;
                } else {
                    this.mEnableAudioPassThrough = z;
                    logTag = getLogTag();
                    str = "BOOL_SET_IS_AUDIO_PASSTHROUGH mEnableAudioPassThrough:" + this.mEnableAudioPassThrough;
                    i2 = 2;
                    TPNativeLog.printLog(i2, logTag, str);
                }
            } else if (!this.mStarted) {
                this.mEnableAsyncMode = z;
            } else {
                logTag = getLogTag();
                str = "BOOL_ENABLE_ASYNC_MODE must setup before started!";
                TPNativeLog.printLog(i2, logTag, str);
            }
        } else {
            this.mEnableSetOutputSurfaceApi = z;
        }
        return true;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBytes(int i, byte[] bArr) {
        return false;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public boolean setParamInt(int i, int i2) {
        return false;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public boolean setParamLong(int i, long j) {
        return false;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public boolean setParamObject(int i, Object obj) {
        if (i == 300) {
            this.mMediaCrypto = (MediaCrypto) obj;
            return true;
        }
        return false;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public boolean setParamString(int i, String str) {
        return false;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public int signalEndOfStream() {
        TPNativeLog.printLog(2, getLogTag(), "signalEndOfStream: ");
        b bVar = this.mCodec;
        if (bVar == null) {
            return 3;
        }
        if (this.mEnableAsyncMode) {
            return signalEndOfStreamAsync();
        }
        int a2 = bVar.a(MEDIA_CODEC_INPUT_TIMEOUT_US);
        if (a2 >= 0) {
            return handleSignalEndOfStream(a2);
        }
        if (a2 != -1) {
            return 3;
        }
        return 1;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.decoder.ITPMediaCodecDecoder
    public boolean startDecoder() {
        return initMediaCodecInternal();
    }
}
