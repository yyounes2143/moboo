package io.flutter.view;

import android.graphics.SurfaceTexture;
import android.media.Image;
import android.view.Surface;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface TextureRegistry {

    /* compiled from: Proguard */
    @Keep
    /* loaded from: classes6.dex */
    public interface GLTextureConsumer {
        @NonNull
        SurfaceTexture getSurfaceTexture();
    }

    /* compiled from: Proguard */
    @Keep
    /* loaded from: classes6.dex */
    public interface ImageConsumer {
        @Nullable
        Image acquireLatestImage();
    }

    /* compiled from: Proguard */
    @Keep
    /* loaded from: classes6.dex */
    public interface ImageTextureEntry extends TextureEntry {
        void pushImage(Image image);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface OnFrameConsumedListener {
        void onFrameConsumed();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface OnTrimMemoryListener {
        void onTrimMemory(int i);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum SurfaceLifecycle {
        manual,
        resetInBackground
    }

    /* compiled from: Proguard */
    @Keep
    /* loaded from: classes6.dex */
    public interface SurfaceProducer extends TextureEntry {

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public interface Callback {
            void onSurfaceAvailable();

            void onSurfaceCleanup();

            @Deprecated(forRemoval = true, since = "Flutter 3.27")
            void onSurfaceCreated();

            @Deprecated(forRemoval = true, since = "Flutter 3.28")
            void onSurfaceDestroyed();
        }

        int getHeight();

        Surface getSurface();

        int getWidth();

        boolean handlesCropAndRotation();

        void scheduleFrame();

        void setCallback(Callback callback);

        void setSize(int i, int i2);
    }

    /* compiled from: Proguard */
    @Keep
    /* loaded from: classes6.dex */
    public interface SurfaceTextureEntry extends TextureEntry {
        void setOnFrameConsumedListener(@Nullable OnFrameConsumedListener onFrameConsumedListener);

        void setOnTrimMemoryListener(@Nullable OnTrimMemoryListener onTrimMemoryListener);

        @NonNull
        SurfaceTexture surfaceTexture();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface TextureEntry {
        long id();

        void release();
    }

    @NonNull
    ImageTextureEntry createImageTexture();

    @NonNull
    SurfaceProducer createSurfaceProducer();

    @NonNull
    SurfaceProducer createSurfaceProducer(SurfaceLifecycle surfaceLifecycle);

    @NonNull
    SurfaceTextureEntry createSurfaceTexture();

    void onTrimMemory(int i);

    @NonNull
    SurfaceTextureEntry registerSurfaceTexture(@NonNull SurfaceTexture surfaceTexture);
}
