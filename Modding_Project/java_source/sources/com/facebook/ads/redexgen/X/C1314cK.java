package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;
/* renamed from: com.facebook.ads.redexgen.X.cK  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1314cK implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ C4K A00;

    public C1314cK(C4K c4k) {
        this.A00 = c4k;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        E1 e1;
        E1 e12;
        e1 = this.A00.A0X;
        e1.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        e12 = this.A00.A0X;
        e12.requestLayout();
    }
}
