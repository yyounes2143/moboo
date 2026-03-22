package com.bumptech.glide.request.transition;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import com.bumptech.glide.request.transition.Transition;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ViewTransition<R> implements Transition<R> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ViewTransitionAnimationFactory f5170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface ViewTransitionAnimationFactory {
        Animation Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context);
    }

    public ViewTransition(ViewTransitionAnimationFactory viewTransitionAnimationFactory) {
        this.f5170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = viewTransitionAnimationFactory;
    }

    @Override // com.bumptech.glide.request.transition.Transition
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(R r, Transition.ViewAdapter viewAdapter) {
        View view = viewAdapter.getView();
        if (view != null) {
            view.clearAnimation();
            view.startAnimation(this.f5170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view.getContext()));
            return false;
        }
        return false;
    }
}
