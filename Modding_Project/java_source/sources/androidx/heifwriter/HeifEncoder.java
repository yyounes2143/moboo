package androidx.heifwriter;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Range;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.FrameMetricsAggregator;
import j$.util.Objects;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final class HeifEncoder implements AutoCloseable, SurfaceTexture.OnFrameAvailableListener {
    private static final boolean DEBUG = false;
    private static final int GRID_HEIGHT = 512;
    private static final int GRID_WIDTH = 512;
    private static final int INPUT_BUFFER_POOL_SIZE = 2;
    public static final int INPUT_MODE_BITMAP = 2;
    public static final int INPUT_MODE_BUFFER = 0;
    public static final int INPUT_MODE_SURFACE = 1;
    private static final double MAX_COMPRESS_RATIO = 0.25d;
    private static final String TAG = "HeifEncoder";
    final Callback mCallback;
    private ByteBuffer mCurrentBuffer;
    private final Rect mDstRect;
    SurfaceEOSTracker mEOSTracker;
    MediaCodec mEncoder;
    private EglWindowSurface mEncoderEglSurface;
    private Surface mEncoderSurface;
    final int mGridCols;
    final int mGridHeight;
    final int mGridRows;
    final int mGridWidth;
    final Handler mHandler;
    private final HandlerThread mHandlerThread;
    final int mHeight;
    boolean mInputEOS;
    private int mInputIndex;
    private final int mInputMode;
    private Surface mInputSurface;
    private SurfaceTexture mInputTexture;
    private final int mNumTiles;
    private EglRectBlt mRectBlt;
    private final Rect mSrcRect;
    private int mTextureId;
    final boolean mUseGrid;
    final int mWidth;
    private final ArrayList<ByteBuffer> mEmptyBuffers = new ArrayList<>();
    private final ArrayList<ByteBuffer> mFilledBuffers = new ArrayList<>();
    final ArrayList<Integer> mCodecInputBuffers = new ArrayList<>();
    private final float[] mTmpMatrix = new float[16];

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class Callback {
        public abstract void onComplete(@NonNull HeifEncoder heifEncoder);

        public abstract void onDrainOutputBuffer(@NonNull HeifEncoder heifEncoder, @NonNull ByteBuffer byteBuffer);

        public abstract void onError(@NonNull HeifEncoder heifEncoder, @NonNull MediaCodec.CodecException codecException);

        public abstract void onOutputFormatChanged(@NonNull HeifEncoder heifEncoder, @NonNull MediaFormat mediaFormat);
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public class EncoderCallback extends MediaCodec.Callback {
        private boolean mOutputEOS;

        public EncoderCallback() {
        }

        private void stopAndNotify(@Nullable MediaCodec.CodecException codecException) {
            HeifEncoder.this.stopInternal();
            if (codecException == null) {
                HeifEncoder heifEncoder = HeifEncoder.this;
                heifEncoder.mCallback.onComplete(heifEncoder);
                return;
            }
            HeifEncoder heifEncoder2 = HeifEncoder.this;
            heifEncoder2.mCallback.onError(heifEncoder2, codecException);
        }

        @Override // android.media.MediaCodec.Callback
        public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
            if (mediaCodec != HeifEncoder.this.mEncoder) {
                return;
            }
            Objects.toString(codecException);
            stopAndNotify(codecException);
        }

        @Override // android.media.MediaCodec.Callback
        public void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
            HeifEncoder heifEncoder = HeifEncoder.this;
            if (mediaCodec == heifEncoder.mEncoder && !heifEncoder.mInputEOS) {
                heifEncoder.mCodecInputBuffers.add(Integer.valueOf(i));
                HeifEncoder.this.maybeCopyOneTileYUV();
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
            boolean z;
            if (mediaCodec == HeifEncoder.this.mEncoder && !this.mOutputEOS) {
                if (bufferInfo.size > 0 && (bufferInfo.flags & 2) == 0) {
                    ByteBuffer outputBuffer = mediaCodec.getOutputBuffer(i);
                    outputBuffer.position(bufferInfo.offset);
                    outputBuffer.limit(bufferInfo.offset + bufferInfo.size);
                    SurfaceEOSTracker surfaceEOSTracker = HeifEncoder.this.mEOSTracker;
                    if (surfaceEOSTracker != null) {
                        surfaceEOSTracker.updateLastOutputTime(bufferInfo.presentationTimeUs);
                    }
                    HeifEncoder heifEncoder = HeifEncoder.this;
                    heifEncoder.mCallback.onDrainOutputBuffer(heifEncoder, outputBuffer);
                }
                boolean z2 = this.mOutputEOS;
                if ((bufferInfo.flags & 4) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.mOutputEOS = z | z2;
                mediaCodec.releaseOutputBuffer(i, false);
                if (this.mOutputEOS) {
                    stopAndNotify(null);
                }
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
            if (mediaCodec != HeifEncoder.this.mEncoder) {
                return;
            }
            if (!"image/vnd.android.heic".equals(mediaFormat.getString("mime"))) {
                mediaFormat.setString("mime", "image/vnd.android.heic");
                mediaFormat.setInteger("width", HeifEncoder.this.mWidth);
                mediaFormat.setInteger("height", HeifEncoder.this.mHeight);
                HeifEncoder heifEncoder = HeifEncoder.this;
                if (heifEncoder.mUseGrid) {
                    mediaFormat.setInteger("tile-width", heifEncoder.mGridWidth);
                    mediaFormat.setInteger("tile-height", HeifEncoder.this.mGridHeight);
                    mediaFormat.setInteger("grid-rows", HeifEncoder.this.mGridRows);
                    mediaFormat.setInteger("grid-cols", HeifEncoder.this.mGridCols);
                }
            }
            HeifEncoder heifEncoder2 = HeifEncoder.this;
            heifEncoder2.mCallback.onOutputFormatChanged(heifEncoder2, mediaFormat);
        }
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface InputMode {
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public class SurfaceEOSTracker {
        private static final boolean DEBUG_EOS = false;
        final boolean mCopyTiles;
        boolean mSignaled;
        long mInputEOSTimeNs = -1;
        long mLastInputTimeNs = -1;
        long mEncoderEOSTimeUs = -1;
        long mLastEncoderTimeUs = -1;
        long mLastOutputTimeUs = -1;

        public SurfaceEOSTracker(boolean z) {
            this.mCopyTiles = z;
        }

        private void doSignalEOSLocked() {
            HeifEncoder.this.mHandler.post(new Runnable() { // from class: androidx.heifwriter.HeifEncoder.SurfaceEOSTracker.1
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodec mediaCodec = HeifEncoder.this.mEncoder;
                    if (mediaCodec != null) {
                        mediaCodec.signalEndOfInputStream();
                    }
                }
            });
            this.mSignaled = true;
        }

        private void updateEOSLocked() {
            if (!this.mSignaled) {
                if (this.mEncoderEOSTimeUs < 0) {
                    long j = this.mInputEOSTimeNs;
                    if (j >= 0 && this.mLastInputTimeNs >= j) {
                        long j2 = this.mLastEncoderTimeUs;
                        if (j2 < 0) {
                            doSignalEOSLocked();
                            return;
                        }
                        this.mEncoderEOSTimeUs = j2;
                    }
                }
                long j3 = this.mEncoderEOSTimeUs;
                if (j3 >= 0 && j3 <= this.mLastOutputTimeUs) {
                    doSignalEOSLocked();
                }
            }
        }

        public synchronized void updateInputEOSTime(long j) {
            try {
                if (this.mCopyTiles) {
                    if (this.mInputEOSTimeNs < 0) {
                        this.mInputEOSTimeNs = j;
                    }
                } else if (this.mEncoderEOSTimeUs < 0) {
                    this.mEncoderEOSTimeUs = j / 1000;
                }
                updateEOSLocked();
            } catch (Throwable th) {
                throw th;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0013 A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:3:0x0001, B:11:0x0013, B:14:0x0018), top: B:19:0x0001 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public synchronized boolean updateLastInputAndEncoderTime(long r5, long r7) {
            /*
                r4 = this;
                monitor-enter(r4)
                long r0 = r4.mInputEOSTimeNs     // Catch: java.lang.Throwable -> L16
                r2 = 0
                int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r2 < 0) goto L10
                int r0 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
                if (r0 > 0) goto Le
                goto L10
            Le:
                r0 = 0
                goto L11
            L10:
                r0 = 1
            L11:
                if (r0 == 0) goto L18
                r4.mLastEncoderTimeUs = r7     // Catch: java.lang.Throwable -> L16
                goto L18
            L16:
                r5 = move-exception
                goto L1f
            L18:
                r4.mLastInputTimeNs = r5     // Catch: java.lang.Throwable -> L16
                r4.updateEOSLocked()     // Catch: java.lang.Throwable -> L16
                monitor-exit(r4)
                return r0
            L1f:
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L16
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.heifwriter.HeifEncoder.SurfaceEOSTracker.updateLastInputAndEncoderTime(long, long):boolean");
        }

        public synchronized void updateLastOutputTime(long j) {
            this.mLastOutputTimeUs = j;
            updateEOSLocked();
        }
    }

    public HeifEncoder(int i, int i2, boolean z, int i3, int i4, @Nullable Handler handler, @NonNull Callback callback) throws IOException {
        boolean z2;
        MediaCodecInfo.CodecCapabilities capabilitiesForType;
        boolean z3;
        Looper looper;
        boolean z4;
        int i5;
        int i6;
        boolean z5;
        int i7;
        int i8;
        MediaFormat createVideoFormat;
        boolean z6;
        int i9;
        Range qualityRange;
        if (i >= 0 && i2 >= 0 && i3 >= 0 && i3 <= 100) {
            int i10 = 512;
            if (i <= 512 && i2 <= 512) {
                z2 = false;
            } else {
                z2 = true;
            }
            boolean z7 = z & z2;
            try {
                MediaCodec createEncoderByType = MediaCodec.createEncoderByType("image/vnd.android.heic");
                this.mEncoder = createEncoderByType;
                capabilitiesForType = createEncoderByType.getCodecInfo().getCapabilitiesForType("image/vnd.android.heic");
            } catch (Exception unused) {
                MediaCodec createEncoderByType2 = MediaCodec.createEncoderByType("video/hevc");
                this.mEncoder = createEncoderByType2;
                capabilitiesForType = createEncoderByType2.getCodecInfo().getCapabilitiesForType("video/hevc");
                z7 |= !capabilitiesForType.getVideoCapabilities().isSizeSupported(i, i2);
                z3 = false;
            }
            if (capabilitiesForType.getVideoCapabilities().isSizeSupported(i, i2)) {
                z3 = true;
                this.mInputMode = i4;
                this.mCallback = callback;
                if (handler != null) {
                    looper = handler.getLooper();
                } else {
                    looper = null;
                }
                if (looper == null) {
                    HandlerThread handlerThread = new HandlerThread("HeifEncoderThread", -2);
                    this.mHandlerThread = handlerThread;
                    handlerThread.start();
                    looper = handlerThread.getLooper();
                } else {
                    this.mHandlerThread = null;
                }
                Handler handler2 = new Handler(looper);
                this.mHandler = handler2;
                if (i4 != 1 && i4 != 2) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                if (z4) {
                    i5 = 2130708361;
                } else {
                    i5 = 2135033992;
                }
                int i11 = i5;
                this.mWidth = i;
                this.mHeight = i2;
                this.mUseGrid = z7;
                if (z7) {
                    i8 = (i2 + FrameMetricsAggregator.EVERY_DURATION) / 512;
                    z5 = z7;
                    i7 = (i + FrameMetricsAggregator.EVERY_DURATION) / 512;
                    i6 = 512;
                } else {
                    i10 = i;
                    i6 = i2;
                    z5 = z7;
                    i7 = 1;
                    i8 = 1;
                }
                if (z3) {
                    createVideoFormat = MediaFormat.createVideoFormat("image/vnd.android.heic", i, i2);
                } else {
                    createVideoFormat = MediaFormat.createVideoFormat("video/hevc", i10, i6);
                }
                if (z5) {
                    createVideoFormat.setInteger("tile-width", i10);
                    createVideoFormat.setInteger("tile-height", i6);
                    createVideoFormat.setInteger("grid-cols", i7);
                    createVideoFormat.setInteger("grid-rows", i8);
                }
                if (z3) {
                    this.mGridWidth = i;
                    this.mGridHeight = i2;
                    this.mGridRows = 1;
                    this.mGridCols = 1;
                } else {
                    this.mGridWidth = i10;
                    this.mGridHeight = i6;
                    this.mGridRows = i8;
                    this.mGridCols = i7;
                }
                int i12 = this.mGridRows * this.mGridCols;
                this.mNumTiles = i12;
                createVideoFormat.setInteger("i-frame-interval", 0);
                createVideoFormat.setInteger("color-format", i11);
                createVideoFormat.setInteger("frame-rate", i12);
                createVideoFormat.setInteger("capture-rate", i12 * 30);
                MediaCodecInfo.EncoderCapabilities encoderCapabilities = capabilitiesForType.getEncoderCapabilities();
                if (encoderCapabilities.isBitrateModeSupported(0)) {
                    qualityRange = encoderCapabilities.getQualityRange();
                    Objects.toString(qualityRange);
                    createVideoFormat.setInteger("bitrate-mode", 0);
                    createVideoFormat.setInteger("quality", (int) (((Integer) qualityRange.getLower()).intValue() + (((((Integer) qualityRange.getUpper()).intValue() - ((Integer) qualityRange.getLower()).intValue()) * i3) / 100.0d)));
                } else {
                    if (encoderCapabilities.isBitrateModeSupported(2)) {
                        createVideoFormat.setInteger("bitrate-mode", 2);
                    } else {
                        createVideoFormat.setInteger("bitrate-mode", 1);
                    }
                    createVideoFormat.setInteger("bitrate", (int) ((((((i * i2) * 1.5d) * 8.0d) * MAX_COMPRESS_RATIO) * i3) / 100.0d));
                }
                this.mEncoder.setCallback(new EncoderCallback(), handler2);
                this.mEncoder.configure(createVideoFormat, (Surface) null, (MediaCrypto) null, 1);
                if (z4) {
                    this.mEncoderSurface = this.mEncoder.createInputSurface();
                    if ((z5 && !z3) || i4 == 2) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    this.mEOSTracker = new SurfaceEOSTracker(z6);
                    if (z6) {
                        EglWindowSurface eglWindowSurface = new EglWindowSurface(this.mEncoderSurface);
                        this.mEncoderEglSurface = eglWindowSurface;
                        eglWindowSurface.makeCurrent();
                        if (i4 == 2) {
                            i9 = 0;
                        } else {
                            i9 = 1;
                        }
                        EglRectBlt eglRectBlt = new EglRectBlt(new Texture2dProgram(i9), i, i2);
                        this.mRectBlt = eglRectBlt;
                        this.mTextureId = eglRectBlt.createTextureObject();
                        if (i4 == 1) {
                            SurfaceTexture surfaceTexture = new SurfaceTexture(this.mTextureId, true);
                            this.mInputTexture = surfaceTexture;
                            surfaceTexture.setOnFrameAvailableListener(this);
                            this.mInputTexture.setDefaultBufferSize(i, i2);
                            this.mInputSurface = new Surface(this.mInputTexture);
                        }
                        this.mEncoderEglSurface.makeUnCurrent();
                    } else {
                        this.mInputSurface = this.mEncoderSurface;
                    }
                } else {
                    for (int i13 = 0; i13 < 2; i13++) {
                        this.mEmptyBuffers.add(ByteBuffer.allocateDirect(((this.mWidth * this.mHeight) * 3) / 2));
                    }
                }
                this.mDstRect = new Rect(0, 0, this.mGridWidth, this.mGridHeight);
                this.mSrcRect = new Rect();
                return;
            }
            this.mEncoder.release();
            this.mEncoder = null;
            throw new Exception();
        }
        throw new IllegalArgumentException("invalid encoder inputs");
    }

    private ByteBuffer acquireEmptyBuffer() {
        ByteBuffer remove;
        synchronized (this.mEmptyBuffers) {
            while (!this.mInputEOS && this.mEmptyBuffers.isEmpty()) {
                try {
                    this.mEmptyBuffers.wait();
                } catch (InterruptedException unused) {
                }
            }
            if (this.mInputEOS) {
                remove = null;
            } else {
                remove = this.mEmptyBuffers.remove(0);
            }
        }
        return remove;
    }

    private void addYuvBufferInternal(@Nullable byte[] bArr) {
        ByteBuffer acquireEmptyBuffer = acquireEmptyBuffer();
        if (acquireEmptyBuffer == null) {
            return;
        }
        acquireEmptyBuffer.clear();
        if (bArr != null) {
            acquireEmptyBuffer.put(bArr);
        }
        acquireEmptyBuffer.flip();
        synchronized (this.mFilledBuffers) {
            this.mFilledBuffers.add(acquireEmptyBuffer);
        }
        this.mHandler.post(new Runnable() { // from class: androidx.heifwriter.HeifEncoder.1
            @Override // java.lang.Runnable
            public void run() {
                HeifEncoder.this.maybeCopyOneTileYUV();
            }
        });
    }

    private long computePresentationTime(int i) {
        return ((i * 1000000) / this.mNumTiles) + 132;
    }

    private static void copyOneTileYUV(ByteBuffer byteBuffer, Image image, int i, int i2, Rect rect, Rect rect2) {
        int i3;
        int i4;
        if (rect.width() == rect2.width() && rect.height() == rect2.height()) {
            if (i % 2 == 0 && i2 % 2 == 0) {
                int i5 = 2;
                if (rect.left % 2 == 0 && rect.top % 2 == 0 && rect.right % 2 == 0 && rect.bottom % 2 == 0 && rect2.left % 2 == 0 && rect2.top % 2 == 0 && rect2.right % 2 == 0 && rect2.bottom % 2 == 0) {
                    Image.Plane[] planes = image.getPlanes();
                    int i6 = 0;
                    while (i6 < planes.length) {
                        ByteBuffer buffer = planes[i6].getBuffer();
                        int pixelStride = planes[i6].getPixelStride();
                        int min = Math.min(rect.width(), i - rect.left);
                        int min2 = Math.min(rect.height(), i2 - rect.top);
                        if (i6 > 0) {
                            i4 = ((i * i2) * (i6 + 3)) / 4;
                            i3 = i5;
                        } else {
                            i3 = 1;
                            i4 = 0;
                        }
                        for (int i7 = 0; i7 < min2 / i3; i7++) {
                            byteBuffer.position(((((rect.top / i3) + i7) * i) / i3) + i4 + (rect.left / i3));
                            buffer.position((((rect2.top / i3) + i7) * planes[i6].getRowStride()) + ((rect2.left * pixelStride) / i3));
                            int i8 = 0;
                            while (true) {
                                int i9 = min / i3;
                                if (i8 < i9) {
                                    buffer.put(byteBuffer.get());
                                    if (pixelStride > 1 && i8 != i9 - 1) {
                                        buffer.position((buffer.position() + pixelStride) - 1);
                                    }
                                    i8++;
                                }
                            }
                        }
                        i6++;
                        i5 = 2;
                    }
                    return;
                }
            }
            throw new IllegalArgumentException("src or dst are not aligned!");
        }
        throw new IllegalArgumentException("src and dst rect size are different!");
    }

    private void copyTilesGL() {
        GLES20.glViewport(0, 0, this.mGridWidth, this.mGridHeight);
        for (int i = 0; i < this.mGridRows; i++) {
            for (int i2 = 0; i2 < this.mGridCols; i2++) {
                int i3 = this.mGridWidth;
                int i4 = i2 * i3;
                int i5 = this.mGridHeight;
                int i6 = i * i5;
                this.mSrcRect.set(i4, i6, i3 + i4, i5 + i6);
                this.mRectBlt.copyRect(this.mTextureId, Texture2dProgram.V_FLIP_MATRIX, this.mSrcRect);
                EglWindowSurface eglWindowSurface = this.mEncoderEglSurface;
                int i7 = this.mInputIndex;
                this.mInputIndex = i7 + 1;
                eglWindowSurface.setPresentationTime(computePresentationTime(i7) * 1000);
                this.mEncoderEglSurface.swapBuffers();
            }
        }
    }

    private ByteBuffer getCurrentBuffer() {
        ByteBuffer remove;
        if (!this.mInputEOS && this.mCurrentBuffer == null) {
            synchronized (this.mFilledBuffers) {
                if (this.mFilledBuffers.isEmpty()) {
                    remove = null;
                } else {
                    remove = this.mFilledBuffers.remove(0);
                }
                this.mCurrentBuffer = remove;
            }
        }
        if (this.mInputEOS) {
            return null;
        }
        return this.mCurrentBuffer;
    }

    private void returnEmptyBufferAndNotify(boolean z) {
        synchronized (this.mEmptyBuffers) {
            this.mInputEOS = z | this.mInputEOS;
            this.mEmptyBuffers.add(this.mCurrentBuffer);
            this.mEmptyBuffers.notifyAll();
        }
        this.mCurrentBuffer = null;
    }

    public void addBitmap(@NonNull Bitmap bitmap) {
        if (this.mInputMode == 2) {
            if (!this.mEOSTracker.updateLastInputAndEncoderTime(computePresentationTime(this.mInputIndex) * 1000, computePresentationTime((this.mInputIndex + this.mNumTiles) - 1))) {
                return;
            }
            synchronized (this) {
                try {
                    EglWindowSurface eglWindowSurface = this.mEncoderEglSurface;
                    if (eglWindowSurface == null) {
                        return;
                    }
                    eglWindowSurface.makeCurrent();
                    this.mRectBlt.loadTexture(this.mTextureId, bitmap);
                    copyTilesGL();
                    this.mEncoderEglSurface.makeUnCurrent();
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalStateException("addBitmap is only allowed in bitmap input mode");
    }

    public void addYuvBuffer(int i, @NonNull byte[] bArr) {
        if (this.mInputMode == 0) {
            if (bArr != null && bArr.length == ((this.mWidth * this.mHeight) * 3) / 2) {
                addYuvBufferInternal(bArr);
                return;
            }
            throw new IllegalArgumentException("invalid data");
        }
        throw new IllegalStateException("addYuvBuffer is only allowed in buffer input mode");
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.mEmptyBuffers) {
            this.mInputEOS = true;
            this.mEmptyBuffers.notifyAll();
        }
        this.mHandler.postAtFrontOfQueue(new Runnable() { // from class: androidx.heifwriter.HeifEncoder.2
            @Override // java.lang.Runnable
            public void run() {
                HeifEncoder.this.stopInternal();
            }
        });
    }

    @NonNull
    public Surface getInputSurface() {
        if (this.mInputMode == 1) {
            return this.mInputSurface;
        }
        throw new IllegalStateException("getInputSurface is only allowed in surface input mode");
    }

    public void maybeCopyOneTileYUV() {
        boolean z;
        int capacity;
        while (true) {
            ByteBuffer currentBuffer = getCurrentBuffer();
            if (currentBuffer != null && !this.mCodecInputBuffers.isEmpty()) {
                int i = 0;
                int intValue = this.mCodecInputBuffers.remove(0).intValue();
                if (this.mInputIndex % this.mNumTiles == 0 && currentBuffer.remaining() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    Image inputImage = this.mEncoder.getInputImage(intValue);
                    int i2 = this.mGridWidth;
                    int i3 = this.mInputIndex;
                    int i4 = this.mGridCols;
                    int i5 = (i3 % i4) * i2;
                    int i6 = this.mGridHeight;
                    int i7 = ((i3 / i4) % this.mGridRows) * i6;
                    this.mSrcRect.set(i5, i7, i2 + i5, i6 + i7);
                    copyOneTileYUV(currentBuffer, inputImage, this.mWidth, this.mHeight, this.mSrcRect, this.mDstRect);
                }
                MediaCodec mediaCodec = this.mEncoder;
                if (z) {
                    capacity = 0;
                } else {
                    capacity = mediaCodec.getInputBuffer(intValue).capacity();
                }
                int i8 = this.mInputIndex;
                this.mInputIndex = i8 + 1;
                long computePresentationTime = computePresentationTime(i8);
                if (z) {
                    i = 4;
                }
                mediaCodec.queueInputBuffer(intValue, 0, capacity, computePresentationTime, i);
                if (z || this.mInputIndex % this.mNumTiles == 0) {
                    returnEmptyBufferAndNotify(z);
                }
            } else {
                return;
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this) {
            try {
                EglWindowSurface eglWindowSurface = this.mEncoderEglSurface;
                if (eglWindowSurface == null) {
                    return;
                }
                eglWindowSurface.makeCurrent();
                surfaceTexture.updateTexImage();
                surfaceTexture.getTransformMatrix(this.mTmpMatrix);
                if (this.mEOSTracker.updateLastInputAndEncoderTime(surfaceTexture.getTimestamp(), computePresentationTime((this.mInputIndex + this.mNumTiles) - 1))) {
                    copyTilesGL();
                }
                surfaceTexture.releaseTexImage();
                this.mEncoderEglSurface.makeUnCurrent();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setEndOfInputStreamTimestamp(long j) {
        if (this.mInputMode == 1) {
            SurfaceEOSTracker surfaceEOSTracker = this.mEOSTracker;
            if (surfaceEOSTracker != null) {
                surfaceEOSTracker.updateInputEOSTime(j);
                return;
            }
            return;
        }
        throw new IllegalStateException("setEndOfInputStreamTimestamp is only allowed in surface input mode");
    }

    public void start() {
        this.mEncoder.start();
    }

    public void stopAsync() {
        int i = this.mInputMode;
        if (i == 2) {
            this.mEOSTracker.updateInputEOSTime(0L);
        } else if (i == 0) {
            addYuvBufferInternal(null);
        }
    }

    public void stopInternal() {
        MediaCodec mediaCodec = this.mEncoder;
        if (mediaCodec != null) {
            mediaCodec.stop();
            this.mEncoder.release();
            this.mEncoder = null;
        }
        synchronized (this.mEmptyBuffers) {
            this.mInputEOS = true;
            this.mEmptyBuffers.notifyAll();
        }
        synchronized (this) {
            try {
                EglRectBlt eglRectBlt = this.mRectBlt;
                if (eglRectBlt != null) {
                    eglRectBlt.release(false);
                    this.mRectBlt = null;
                }
                EglWindowSurface eglWindowSurface = this.mEncoderEglSurface;
                if (eglWindowSurface != null) {
                    eglWindowSurface.release();
                    this.mEncoderEglSurface = null;
                }
                SurfaceTexture surfaceTexture = this.mInputTexture;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                    this.mInputTexture = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
