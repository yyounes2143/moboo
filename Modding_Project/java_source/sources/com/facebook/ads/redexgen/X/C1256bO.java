package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: com.facebook.ads.redexgen.X.bO  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1256bO extends AnimatorListenerAdapter {
    public final /* synthetic */ C0728Is A00;
    public final /* synthetic */ boolean A01;

    public C1256bO(C0728Is c0728Is, boolean z) {
        this.A00 = c0728Is;
        this.A01 = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        boolean z;
        LJ lj;
        LJ lj2;
        super.onAnimationEnd(animator);
        C0728Is c0728Is = this.A00;
        z = this.A00.A0D;
        c0728Is.A0q(z, true);
        if (!this.A01) {
            lj = this.A00.A08;
            if (lj != null) {
                lj2 = this.A00.A08;
                lj2.destroy();
            }
        }
    }
}
