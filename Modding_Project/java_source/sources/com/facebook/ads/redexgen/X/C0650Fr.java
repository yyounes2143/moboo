package com.facebook.ads.redexgen.X;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
/* renamed from: com.facebook.ads.redexgen.X.Fr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0650Fr extends AbstractRunnableC1061Vt {
    public final /* synthetic */ InterfaceC1326cW A00;
    public final /* synthetic */ C1327cX A01;

    public C0650Fr(C1327cX c1327cX, InterfaceC1326cW interfaceC1326cW) {
        this.A01 = c1327cX;
        this.A00 = interfaceC1326cW;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(300L);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setAnimationListener(new C0651Fs(this));
        this.A01.startAnimation(alphaAnimation);
    }
}
