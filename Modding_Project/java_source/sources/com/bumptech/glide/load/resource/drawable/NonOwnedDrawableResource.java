package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class NonOwnedDrawableResource extends DrawableResource<Drawable> {
    public NonOwnedDrawableResource(Drawable drawable) {
        super(drawable);
    }

    @Nullable
    public static Resource<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        if (drawable != null) {
            return new NonOwnedDrawableResource(drawable);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4861Wwwwwwwwwwwwwwwwwwwwwwwww.getClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return Math.max(1, this.f4861Wwwwwwwwwwwwwwwwwwwwwwwww.getIntrinsicWidth() * this.f4861Wwwwwwwwwwwwwwwwwwwwwwwww.getIntrinsicHeight() * 4);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
    }
}
