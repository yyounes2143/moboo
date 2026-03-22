package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class ThumbnailImageViewTarget<T> extends ImageViewTarget<T> {
    public abstract Drawable Wwwwwwwwwwwwwww(T t);

    @Override // com.bumptech.glide.request.target.ImageViewTarget
    public void Wwwwwwwwwwwwwwwww(@Nullable T t) {
        ViewGroup.LayoutParams layoutParams = ((ImageView) this.f5144Wwwwwwwwwwwwwwwwwwwwwwww).getLayoutParams();
        Drawable Wwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwww(t);
        if (layoutParams != null && layoutParams.width > 0 && layoutParams.height > 0) {
            Wwwwwwwwwwwwwww2 = new FixedSizeDrawable(Wwwwwwwwwwwwwww2, layoutParams.width, layoutParams.height);
        }
        ((ImageView) this.f5144Wwwwwwwwwwwwwwwwwwwwwwww).setImageDrawable(Wwwwwwwwwwwwwww2);
    }
}
