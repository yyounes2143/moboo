package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.TransitionOptions;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class BitmapTransitionOptions extends TransitionOptions<BitmapTransitionOptions, Bitmap> {
    @Override // com.bumptech.glide.TransitionOptions
    public boolean equals(Object obj) {
        if ((obj instanceof BitmapTransitionOptions) && super.equals(obj)) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.TransitionOptions
    public int hashCode() {
        return super.hashCode();
    }
}
