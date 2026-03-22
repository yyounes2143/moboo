package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class GifBitmapProvider implements GifDecoder.BitmapProvider {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f4872Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapPool f4873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public GifBitmapProvider(BitmapPool bitmapPool, @Nullable ArrayPool arrayPool) {
        this.f4873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmapPool;
        this.f4872Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayPool;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull int[] iArr) {
        ArrayPool arrayPool = this.f4872Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (arrayPool == null) {
            return;
        }
        arrayPool.put(iArr);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull byte[] bArr) {
        ArrayPool arrayPool = this.f4872Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (arrayPool == null) {
            return;
        }
        arrayPool.put(bArr);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    @NonNull
    public int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        ArrayPool arrayPool = this.f4872Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (arrayPool == null) {
            return new int[i];
        }
        return (int[]) arrayPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, int[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    @NonNull
    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, @NonNull Bitmap.Config config) {
        return this.f4873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    @NonNull
    public byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        ArrayPool arrayPool = this.f4872Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (arrayPool == null) {
            return new byte[i];
        }
        return (byte[]) arrayPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, byte[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Bitmap bitmap) {
        this.f4873Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
    }
}
