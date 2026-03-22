package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.ViewPropertyTransition;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ViewPropertyAnimationFactory<R> implements TransitionFactory<R> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ViewPropertyTransition<R> f5167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ViewPropertyTransition.Animator f5168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource, boolean z) {
        if (dataSource != DataSource.MEMORY_CACHE && z) {
            if (this.f5167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                this.f5167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ViewPropertyTransition<>(this.f5168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return this.f5167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return NoTransition.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
