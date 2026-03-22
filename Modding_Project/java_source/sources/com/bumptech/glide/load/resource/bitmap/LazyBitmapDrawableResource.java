package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class LazyBitmapDrawableResource implements Resource<BitmapDrawable>, Initializable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Resource<Bitmap> f4807Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Resources f4808Wwwwwwwwwwwwwwwwwwwwwwwww;

    public LazyBitmapDrawableResource(@NonNull Resources resources, @NonNull Resource<Bitmap> resource) {
        this.f4808Wwwwwwwwwwwwwwwwwwwwwwwww = (Resources) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resources);
        this.f4807Wwwwwwwwwwwwwwwwwwwwwwww = (Resource) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource);
    }

    @Nullable
    public static Resource<BitmapDrawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resources resources, @Nullable Resource<Bitmap> resource) {
        if (resource == null) {
            return null;
        }
        return new LazyBitmapDrawableResource(resources, resource);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public BitmapDrawable get() {
        return new BitmapDrawable(this.f4808Wwwwwwwwwwwwwwwwwwwwwwwww, this.f4807Wwwwwwwwwwwwwwwwwwwwwwww.get());
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<BitmapDrawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return this.f4807Wwwwwwwwwwwwwwwwwwwwwwww.getSize();
    }

    @Override // com.bumptech.glide.load.engine.Initializable
    public void initialize() {
        Resource<Bitmap> resource = this.f4807Wwwwwwwwwwwwwwwwwwwwwwww;
        if (resource instanceof Initializable) {
            ((Initializable) resource).initialize();
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
        this.f4807Wwwwwwwwwwwwwwwwwwwwwwww.recycle();
    }
}
