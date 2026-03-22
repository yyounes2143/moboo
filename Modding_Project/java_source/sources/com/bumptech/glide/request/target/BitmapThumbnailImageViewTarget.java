package com.bumptech.glide.request.target;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BitmapThumbnailImageViewTarget extends ThumbnailImageViewTarget<Bitmap> {
    @Override // com.bumptech.glide.request.target.ThumbnailImageViewTarget
    /* renamed from: Wwwwwwwwwwwwww */
    public Drawable Wwwwwwwwwwwwwww(Bitmap bitmap) {
        return new BitmapDrawable(((ImageView) this.f5144Wwwwwwwwwwwwwwwwwwwwwwww).getResources(), bitmap);
    }
}
