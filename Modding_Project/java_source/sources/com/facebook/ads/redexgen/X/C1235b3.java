package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: com.facebook.ads.redexgen.X.b3  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1235b3 extends AnimatorListenerAdapter {
    public final /* synthetic */ JU A00;
    public final /* synthetic */ boolean A01;

    public C1235b3(JU ju, boolean z) {
        this.A00 = ju;
        this.A01 = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C1251bJ c1251bJ;
        C0577Cw c0577Cw;
        AbstractC1657hy abstractC1657hy;
        C0577Cw c0577Cw2;
        C0577Cw c0577Cw3;
        LJ lj;
        LJ lj2;
        super.onAnimationEnd(animator);
        c1251bJ = this.A00.A0O;
        c1251bJ.setTranslationY(0.0f);
        this.A00.A0W();
        if (!this.A01) {
            lj = this.A00.A0L;
            if (lj != null) {
                lj2 = this.A00.A0L;
                lj2.destroy();
            }
        }
        c0577Cw = this.A00.A0m;
        if (c0577Cw != null) {
            abstractC1657hy = this.A00.A0H;
            if (!abstractC1657hy.A1a()) {
                c0577Cw3 = this.A00.A0m;
                c0577Cw3.setVisibility(this.A01 ? 8 : 0);
                return;
            }
            c0577Cw2 = this.A00.A0m;
            c0577Cw2.setVisibility(8);
        }
    }
}
