package com.facebook.ads.redexgen.X;

import android.animation.Animator;
/* renamed from: com.facebook.ads.redexgen.X.e3  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1419e3 implements Animator.AnimatorListener {
    public final /* synthetic */ C0569Co A00;

    public C1419e3(C0569Co c0569Co) {
        this.A00 = c0569Co;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.A00.A07(false);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.A00.A01 = null;
        this.A00.A02 = EnumC1417e1.A02;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
