package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class GifDrawableTransformation implements Transformation<GifDrawable> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Transformation<Bitmap> f4886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public GifDrawableTransformation(Transformation<Bitmap> transformation) {
        this.f4886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Transformation) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(transformation);
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        this.f4886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest);
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<GifDrawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context, @NonNull Resource<GifDrawable> resource, int i, int i2) {
        GifDrawable gifDrawable = resource.get();
        Resource<Bitmap> bitmapResource = new BitmapResource(gifDrawable.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context).Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Resource<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, bitmapResource, i, i2);
        if (!bitmapResource.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            bitmapResource.recycle();
        }
        gifDrawable.Wwwwwwwwwwwwwwwwwwwwww(this.f4886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get());
        return resource;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof GifDrawableTransformation) {
            return this.f4886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(((GifDrawableTransformation) obj).f4886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f4886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }
}
