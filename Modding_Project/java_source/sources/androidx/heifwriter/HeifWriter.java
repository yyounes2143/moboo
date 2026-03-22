package androidx.heifwriter;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.heifwriter.HeifEncoder;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final class HeifWriter implements AutoCloseable {
    private static final boolean DEBUG = false;
    public static final int INPUT_MODE_BITMAP = 2;
    public static final int INPUT_MODE_BUFFER = 0;
    public static final int INPUT_MODE_SURFACE = 1;
    private static final int MUXER_DATA_FLAG = 16;
    private static final String TAG = "HeifWriter";
    private final Handler mHandler;
    private final HandlerThread mHandlerThread;
    private HeifEncoder mHeifEncoder;
    private final int mInputMode;
    final int mMaxImages;
    MediaMuxer mMuxer;
    int mNumTiles;
    int mOutputIndex;
    final int mPrimaryIndex;
    final int mRotation;
    private boolean mStarted;
    int[] mTrackIndexArray;
    final ResultWaiter mResultWaiter = new ResultWaiter();
    final AtomicBoolean mMuxerStarted = new AtomicBoolean(false);
    private final List<Pair<Integer, ByteBuffer>> mExifList = new ArrayList();

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class Builder {
        private final FileDescriptor mFd;
        private boolean mGridEnabled;
        private Handler mHandler;
        private final int mHeight;
        private final int mInputMode;
        private int mMaxImages;
        private final String mPath;
        private int mPrimaryIndex;
        private int mQuality;
        private int mRotation;
        private final int mWidth;

        public Builder(@NonNull String str, int i, int i2, int i3) {
            this(str, null, i, i2, i3);
        }

        public HeifWriter build() throws IOException {
            return new HeifWriter(this.mPath, this.mFd, this.mWidth, this.mHeight, this.mRotation, this.mGridEnabled, this.mQuality, this.mMaxImages, this.mPrimaryIndex, this.mInputMode, this.mHandler);
        }

        public Builder setGridEnabled(boolean z) {
            this.mGridEnabled = z;
            return this;
        }

        public Builder setHandler(@Nullable Handler handler) {
            this.mHandler = handler;
            return this;
        }

        public Builder setMaxImages(int i) {
            if (i > 0) {
                this.mMaxImages = i;
                return this;
            }
            throw new IllegalArgumentException("Invalid maxImage: " + i);
        }

        public Builder setPrimaryIndex(int i) {
            if (i >= 0) {
                this.mPrimaryIndex = i;
                return this;
            }
            throw new IllegalArgumentException("Invalid primaryIndex: " + i);
        }

        public Builder setQuality(int i) {
            if (i >= 0 && i <= 100) {
                this.mQuality = i;
                return this;
            }
            throw new IllegalArgumentException("Invalid quality: " + i);
        }

        public Builder setRotation(int i) {
            if (i != 0 && i != 90 && i != 180 && i != 270) {
                throw new IllegalArgumentException("Invalid rotation angle: " + i);
            }
            this.mRotation = i;
            return this;
        }

        public Builder(@NonNull FileDescriptor fileDescriptor, int i, int i2, int i3) {
            this(null, fileDescriptor, i, i2, i3);
        }

        private Builder(String str, FileDescriptor fileDescriptor, int i, int i2, int i3) {
            this.mGridEnabled = true;
            this.mQuality = 100;
            this.mMaxImages = 1;
            this.mPrimaryIndex = 0;
            this.mRotation = 0;
            if (i > 0 && i2 > 0) {
                this.mPath = str;
                this.mFd = fileDescriptor;
                this.mWidth = i;
                this.mHeight = i2;
                this.mInputMode = i3;
                return;
            }
            throw new IllegalArgumentException("Invalid image size: " + i + "x" + i2);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public class HeifCallback extends HeifEncoder.Callback {
        private boolean mEncoderStopped;

        public HeifCallback() {
        }

        private void stopAndNotify(@Nullable Exception exc) {
            if (this.mEncoderStopped) {
                return;
            }
            this.mEncoderStopped = true;
            HeifWriter.this.mResultWaiter.signalResult(exc);
        }

        @Override // androidx.heifwriter.HeifEncoder.Callback
        public void onComplete(@NonNull HeifEncoder heifEncoder) {
            stopAndNotify(null);
        }

        @Override // androidx.heifwriter.HeifEncoder.Callback
        public void onDrainOutputBuffer(@NonNull HeifEncoder heifEncoder, @NonNull ByteBuffer byteBuffer) {
            if (!this.mEncoderStopped) {
                HeifWriter heifWriter = HeifWriter.this;
                if (heifWriter.mTrackIndexArray == null) {
                    stopAndNotify(new IllegalStateException("Output buffer received before format info"));
                    return;
                }
                if (heifWriter.mOutputIndex < heifWriter.mMaxImages * heifWriter.mNumTiles) {
                    MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                    bufferInfo.set(byteBuffer.position(), byteBuffer.remaining(), 0L, 0);
                    HeifWriter heifWriter2 = HeifWriter.this;
                    heifWriter2.mMuxer.writeSampleData(heifWriter2.mTrackIndexArray[heifWriter2.mOutputIndex / heifWriter2.mNumTiles], byteBuffer, bufferInfo);
                }
                HeifWriter heifWriter3 = HeifWriter.this;
                int i = heifWriter3.mOutputIndex + 1;
                heifWriter3.mOutputIndex = i;
                if (i == heifWriter3.mMaxImages * heifWriter3.mNumTiles) {
                    stopAndNotify(null);
                }
            }
        }

        @Override // androidx.heifwriter.HeifEncoder.Callback
        public void onError(@NonNull HeifEncoder heifEncoder, @NonNull MediaCodec.CodecException codecException) {
            stopAndNotify(codecException);
        }

        @Override // androidx.heifwriter.HeifEncoder.Callback
        public void onOutputFormatChanged(@NonNull HeifEncoder heifEncoder, @NonNull MediaFormat mediaFormat) {
            int i;
            if (this.mEncoderStopped) {
                return;
            }
            if (HeifWriter.this.mTrackIndexArray != null) {
                stopAndNotify(new IllegalStateException("Output format changed after muxer started"));
                return;
            }
            try {
                HeifWriter.this.mNumTiles = mediaFormat.getInteger("grid-rows") * mediaFormat.getInteger("grid-cols");
            } catch (ClassCastException | NullPointerException unused) {
                HeifWriter.this.mNumTiles = 1;
            }
            HeifWriter heifWriter = HeifWriter.this;
            heifWriter.mTrackIndexArray = new int[heifWriter.mMaxImages];
            if (heifWriter.mRotation > 0) {
                int i2 = HeifWriter.this.mRotation;
                HeifWriter heifWriter2 = HeifWriter.this;
                heifWriter2.mMuxer.setOrientationHint(heifWriter2.mRotation);
            }
            int i3 = 0;
            while (true) {
                HeifWriter heifWriter3 = HeifWriter.this;
                if (i3 < heifWriter3.mTrackIndexArray.length) {
                    if (i3 == heifWriter3.mPrimaryIndex) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    mediaFormat.setInteger("is-default", i);
                    HeifWriter heifWriter4 = HeifWriter.this;
                    heifWriter4.mTrackIndexArray[i3] = heifWriter4.mMuxer.addTrack(mediaFormat);
                    i3++;
                } else {
                    heifWriter3.mMuxer.start();
                    HeifWriter.this.mMuxerStarted.set(true);
                    HeifWriter.this.processExifData();
                    return;
                }
            }
        }
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface InputMode {
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class ResultWaiter {
        private boolean mDone;
        private Exception mException;

        public synchronized void signalResult(@Nullable Exception exc) {
            if (!this.mDone) {
                this.mDone = true;
                this.mException = exc;
                notifyAll();
            }
        }

        public synchronized void waitForResult(long j) throws Exception {
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i >= 0) {
                if (i == 0) {
                    while (!this.mDone) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                } else {
                    long currentTimeMillis = System.currentTimeMillis();
                    while (!this.mDone && j > 0) {
                        try {
                            wait(j);
                        } catch (InterruptedException unused2) {
                        }
                        j -= System.currentTimeMillis() - currentTimeMillis;
                    }
                }
                if (!this.mDone) {
                    this.mDone = true;
                    this.mException = new TimeoutException("timed out waiting for result");
                }
                Exception exc = this.mException;
                if (exc != null) {
                    throw exc;
                }
            } else {
                throw new IllegalArgumentException("timeoutMs is negative");
            }
        }
    }

    @SuppressLint({"WrongConstant"})
    public HeifWriter(@NonNull String str, @NonNull FileDescriptor fileDescriptor, int i, int i2, int i3, boolean z, int i4, int i5, int i6, int i7, @Nullable Handler handler) throws IOException {
        Looper looper;
        MediaMuxer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (i6 < i5) {
            MediaFormat.createVideoFormat("image/vnd.android.heic", i, i2);
            this.mNumTiles = 1;
            this.mRotation = i3;
            this.mInputMode = i7;
            this.mMaxImages = i5;
            this.mPrimaryIndex = i6;
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
            if (str != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new MediaMuxer(str, 3);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileDescriptor, 3);
            }
            this.mMuxer = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            this.mHeifEncoder = new HeifEncoder(i, i2, z, i4, i7, handler2, new HeifCallback());
            return;
        }
        throw new IllegalArgumentException("Invalid maxImages (" + i5 + ") or primaryIndex (" + i6 + ")");
    }

    private void checkMode(int i) {
        if (this.mInputMode == i) {
            return;
        }
        throw new IllegalStateException("Not valid in input mode " + this.mInputMode);
    }

    private void checkStarted(boolean z) {
        if (this.mStarted == z) {
            return;
        }
        throw new IllegalStateException("Already started");
    }

    private void checkStartedAndMode(int i) {
        checkStarted(true);
        checkMode(i);
    }

    public void addBitmap(@NonNull Bitmap bitmap) {
        checkStartedAndMode(2);
        synchronized (this) {
            try {
                HeifEncoder heifEncoder = this.mHeifEncoder;
                if (heifEncoder != null) {
                    heifEncoder.addBitmap(bitmap);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addExifData(int i, @NonNull byte[] bArr, int i2, int i3) {
        checkStarted(true);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i3);
        allocateDirect.put(bArr, i2, i3);
        allocateDirect.flip();
        synchronized (this.mExifList) {
            this.mExifList.add(new Pair<>(Integer.valueOf(i), allocateDirect));
        }
        processExifData();
    }

    public void addYuvBuffer(int i, @NonNull byte[] bArr) {
        checkStartedAndMode(0);
        synchronized (this) {
            try {
                HeifEncoder heifEncoder = this.mHeifEncoder;
                if (heifEncoder != null) {
                    heifEncoder.addYuvBuffer(i, bArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mHandler.postAtFrontOfQueue(new Runnable() { // from class: androidx.heifwriter.HeifWriter.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HeifWriter.this.closeInternal();
                } catch (Exception unused) {
                }
            }
        });
    }

    public void closeInternal() {
        MediaMuxer mediaMuxer = this.mMuxer;
        if (mediaMuxer != null) {
            mediaMuxer.stop();
            this.mMuxer.release();
            this.mMuxer = null;
        }
        HeifEncoder heifEncoder = this.mHeifEncoder;
        if (heifEncoder != null) {
            heifEncoder.close();
            synchronized (this) {
                this.mHeifEncoder = null;
            }
        }
    }

    @NonNull
    public Surface getInputSurface() {
        checkStarted(false);
        checkMode(1);
        return this.mHeifEncoder.getInputSurface();
    }

    @SuppressLint({"WrongConstant"})
    public void processExifData() {
        Pair<Integer, ByteBuffer> remove;
        if (!this.mMuxerStarted.get()) {
            return;
        }
        while (true) {
            synchronized (this.mExifList) {
                try {
                    if (this.mExifList.isEmpty()) {
                        return;
                    }
                    remove = this.mExifList.remove(0);
                } catch (Throwable th) {
                    throw th;
                }
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            bufferInfo.set(((ByteBuffer) remove.second).position(), ((ByteBuffer) remove.second).remaining(), 0L, 16);
            this.mMuxer.writeSampleData(this.mTrackIndexArray[((Integer) remove.first).intValue()], (ByteBuffer) remove.second, bufferInfo);
        }
    }

    public void setInputEndOfStreamTimestamp(long j) {
        checkStartedAndMode(1);
        synchronized (this) {
            try {
                HeifEncoder heifEncoder = this.mHeifEncoder;
                if (heifEncoder != null) {
                    heifEncoder.setEndOfInputStreamTimestamp(j);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void start() {
        checkStarted(false);
        this.mStarted = true;
        this.mHeifEncoder.start();
    }

    public void stop(long j) throws Exception {
        checkStarted(true);
        synchronized (this) {
            try {
                HeifEncoder heifEncoder = this.mHeifEncoder;
                if (heifEncoder != null) {
                    heifEncoder.stopAsync();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mResultWaiter.waitForResult(j);
        processExifData();
        closeInternal();
    }
}
