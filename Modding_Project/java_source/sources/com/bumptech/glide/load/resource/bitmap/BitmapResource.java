package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BitmapResource implements Resource<Bitmap>, Initializable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapPool f4736Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap f4737Wwwwwwwwwwwwwwwwwwwwwwwww;

    public BitmapResource(@NonNull Bitmap bitmap, @NonNull BitmapPool bitmapPool) {
        this.f4737Wwwwwwwwwwwwwwwwwwwwwwwww = (Bitmap) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, "Bitmap must not be null");
        this.f4736Wwwwwwwwwwwwwwwwwwwwwwww = (BitmapPool) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmapPool, "BitmapPool must not be null");
    }

    @Nullable
    public static BitmapResource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bitmap bitmap, @NonNull BitmapPool bitmapPool) {
        if (bitmap == null) {
            return null;
        }
        return new BitmapResource(bitmap, bitmapPool);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public Bitmap get() {
        return this.f4737Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Bitmap.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4737Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.load.engine.Initializable
    public void initialize() {
        this.f4737Wwwwwwwwwwwwwwwwwwwwwwwww.prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
        this.f4736Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4737Wwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
