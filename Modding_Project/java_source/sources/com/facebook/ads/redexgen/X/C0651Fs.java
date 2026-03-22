package com.facebook.ads.redexgen.X;

import android.view.animation.Animation;
/* renamed from: com.facebook.ads.redexgen.X.Fs  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0651Fs extends XO {
    public final /* synthetic */ C0650Fr A00;

    public C0651Fs(C0650Fr c0650Fr) {
        this.A00 = c0650Fr;
    }

    @Override // com.facebook.ads.redexgen.X.XO, android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        XP.A0F(this.A00.A01);
        this.A00.A00.ADh();
    }
}
