package com.bumptech.glide.request.transition;

import android.view.View;
import com.bumptech.glide.request.transition.Transition;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ViewPropertyTransition<R> implements Transition<R> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Animator f5169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface Animator {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view);
    }

    public ViewPropertyTransition(Animator animator) {
        this.f5169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = animator;
    }

    @Override // com.bumptech.glide.request.transition.Transition
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(R r, Transition.ViewAdapter viewAdapter) {
        if (viewAdapter.getView() != null) {
            this.f5169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewAdapter.getView());
            return false;
        }
        return false;
    }
}
