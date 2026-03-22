package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.Transition;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class NoTransition<R> implements Transition<R> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final NoTransition<?> f5162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new NoTransition<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final TransitionFactory<?> f5161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new NoAnimationFactory();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class NoAnimationFactory<R> implements TransitionFactory<R> {
        @Override // com.bumptech.glide.request.transition.TransitionFactory
        public Transition<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource, boolean z) {
            return NoTransition.f5162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public static <R> TransitionFactory<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (TransitionFactory<R>) f5161Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static <R> Transition<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f5162Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.request.transition.Transition
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, Transition.ViewAdapter viewAdapter) {
        return false;
    }
}
