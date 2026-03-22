package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Util;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class UnitBitmapDecoder implements ResourceDecoder<Bitmap, Bitmap> {
    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Bitmap bitmap, @NonNull Options options) {
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Bitmap bitmap, int i, int i2, @NonNull Options options) {
        return new NonOwnedBitmapResource(bitmap);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class NonOwnedBitmapResource implements Resource<Bitmap> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bitmap f4836Wwwwwwwwwwwwwwwwwwwwwwwww;

        public NonOwnedBitmapResource(@NonNull Bitmap bitmap) {
            this.f4836Wwwwwwwwwwwwwwwwwwwwwwwww = bitmap;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        @NonNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Bitmap get() {
            return this.f4836Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        @NonNull
        public Class<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public int getSize() {
            return Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4836Wwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public void recycle() {
        }
    }
}
