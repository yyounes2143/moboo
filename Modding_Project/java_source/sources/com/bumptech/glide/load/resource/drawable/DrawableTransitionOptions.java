package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.TransitionOptions;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class DrawableTransitionOptions extends TransitionOptions<DrawableTransitionOptions, Drawable> {
    @Override // com.bumptech.glide.TransitionOptions
    public boolean equals(Object obj) {
        if ((obj instanceof DrawableTransitionOptions) && super.equals(obj)) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.TransitionOptions
    public int hashCode() {
        return super.hashCode();
    }
}
