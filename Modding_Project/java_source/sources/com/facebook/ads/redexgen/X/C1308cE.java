package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: com.facebook.ads.redexgen.X.cE  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1308cE extends AnimatorListenerAdapter {
    public final /* synthetic */ C4Z A00;
    public final /* synthetic */ boolean A01;

    public C1308cE(C4Z c4z, boolean z) {
        this.A00 = c4z;
        this.A01 = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C1251bJ c1251bJ;
        LJ lj;
        LJ lj2;
        super.onAnimationEnd(animator);
        c1251bJ = this.A00.A0H;
        c1251bJ.setTranslationY(0.0f);
        this.A00.A0V();
        if (!this.A01) {
            lj = this.A00.A0G;
            if (lj != null) {
                lj2 = this.A00.A0G;
                lj2.destroy();
            }
        }
    }
}
