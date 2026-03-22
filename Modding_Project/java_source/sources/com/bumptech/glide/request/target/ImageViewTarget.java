package com.bumptech.glide.request.target;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.transition.Transition;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class ImageViewTarget<Z> extends ViewTarget<ImageView, Z> implements Transition.ViewAdapter {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Animatable f5127Wwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwww(@Nullable Z z) {
        Wwwwwwwwwwwwwwwww(z);
        Wwwwwwwwwwwwwwwwww(z);
    }

    public abstract void Wwwwwwwwwwwwwwwww(@Nullable Z z);

    public final void Wwwwwwwwwwwwwwwwww(@Nullable Z z) {
        if (z instanceof Animatable) {
            Animatable animatable = (Animatable) z;
            this.f5127Wwwwwwwwwwwwwwwww = animatable;
            animatable.start();
            return;
        }
        this.f5127Wwwwwwwwwwwwwwwww = null;
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwww(drawable);
        Wwwwwwwwwwwwwwww(null);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable);
    }

    @Override // com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Z z, @Nullable Transition<? super Z> transition) {
        if (transition != null && transition.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z, this)) {
            Wwwwwwwwwwwwwwwwww(z);
        } else {
            Wwwwwwwwwwwwwwww(z);
        }
    }

    @Override // com.bumptech.glide.request.target.ViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable);
        Animatable animatable = this.f5127Wwwwwwwwwwwwwwwww;
        if (animatable != null) {
            animatable.stop();
        }
        Wwwwwwwwwwwwwwww(null);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable);
    }

    @Override // com.bumptech.glide.request.target.ViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable);
        Wwwwwwwwwwwwwwww(null);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable);
    }

    @Override // com.bumptech.glide.request.transition.Transition.ViewAdapter
    @Nullable
    public Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return ((ImageView) this.f5144Wwwwwwwwwwwwwwwwwwwwwwww).getDrawable();
    }

    @Override // com.bumptech.glide.request.transition.Transition.ViewAdapter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Drawable drawable) {
        ((ImageView) this.f5144Wwwwwwwwwwwwwwwwwwwwwwww).setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
        Animatable animatable = this.f5127Wwwwwwwwwwwwwwwww;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
        Animatable animatable = this.f5127Wwwwwwwwwwwwwwwww;
        if (animatable != null) {
            animatable.stop();
        }
    }
}
