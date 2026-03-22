package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface GifDecoder {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface BitmapProvider {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull int[] iArr);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull byte[] bArr);

        @NonNull
        int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i);

        @NonNull
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, @NonNull Bitmap.Config config);

        @NonNull
        byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Bitmap bitmap);
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface GifDecodeStatus {
    }

    int Wwwwwwwwwwwwwwwwwwwwwwwwwww();

    int Wwwwwwwwwwwwwwwwwwwwwwwwwwww();

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Bitmap.Config config);

    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @Nullable
    Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    void clear();

    @NonNull
    ByteBuffer getData();
}
