package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DrawableTransformation implements Transformation<Drawable> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f4772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Transformation<Bitmap> f4773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DrawableTransformation(Transformation<Bitmap> transformation, boolean z) {
        this.f4773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = transformation;
        this.f4772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final Resource<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Resource<Bitmap> resource) {
        return LazyBitmapDrawableResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context.getResources(), resource);
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        this.f4773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest);
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context, @NonNull Resource<Drawable> resource, int i, int i2) {
        BitmapPool Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context).Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Drawable drawable = resource.get();
        Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DrawableToBitmapConverter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, drawable, i, i2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            if (!this.f4772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return resource;
            }
            throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
        }
        Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f4773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i, i2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.recycle();
            return resource;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof DrawableTransformation) {
            return this.f4773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(((DrawableTransformation) obj).f4773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f4773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public Transformation<BitmapDrawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this;
    }
}
