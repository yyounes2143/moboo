package com.bumptech.glide.request.transition;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.ViewTransition;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ViewAnimationFactory<R> implements TransitionFactory<R> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Transition<R> f5163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ViewTransition.ViewTransitionAnimationFactory f5164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class ConcreteViewTransitionAnimationFactory implements ViewTransition.ViewTransitionAnimationFactory {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Animation f5165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.request.transition.ViewTransition.ViewTransitionAnimationFactory
        public Animation Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            return this.f5165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class ResourceViewTransitionAnimationFactory implements ViewTransition.ViewTransitionAnimationFactory {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.request.transition.ViewTransition.ViewTransitionAnimationFactory
        public Animation Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            return AnimationUtils.loadAnimation(context, this.f5166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource, boolean z) {
        if (dataSource != DataSource.MEMORY_CACHE && z) {
            if (this.f5163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                this.f5163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ViewTransition(this.f5164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return this.f5163Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return NoTransition.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
