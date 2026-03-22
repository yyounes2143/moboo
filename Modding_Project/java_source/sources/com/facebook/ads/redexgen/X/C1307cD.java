package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;
/* renamed from: com.facebook.ads.redexgen.X.cD  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1307cD implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ C4Z A00;

    public C1307cD(C4Z c4z) {
        this.A00 = c4z;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        E1 e1;
        E1 e12;
        e1 = this.A00.A0b;
        e1.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        e12 = this.A00.A0b;
        e12.requestLayout();
    }
}
