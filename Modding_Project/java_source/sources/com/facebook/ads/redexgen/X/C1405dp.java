package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.dp  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1405dp extends AnimatorListenerAdapter {
    public final /* synthetic */ C03342y A00;

    public C1405dp(C03342y c03342y) {
        this.A00 = c03342y;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Handler handler;
        handler = this.A00.A00.A04;
        handler.postDelayed(new D5(this), 2000L);
    }
}
