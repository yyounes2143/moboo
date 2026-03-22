package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.cy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnTouchListenerC1354cy implements View.OnTouchListener {
    public final /* synthetic */ C1355cz A00;

    public View$OnTouchListenerC1354cy(C1355cz c1355cz) {
        this.A00 = c1355cz;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        US us;
        AbstractC1657hy abstractC1657hy;
        if (motionEvent.getAction() == 1) {
            this.A00.A01 = System.currentTimeMillis();
            C1355cz.A00(this.A00);
            us = this.A00.A07;
            abstractC1657hy = this.A00.A04;
            us.ABJ(abstractC1657hy.A25(), new C1159Zp().A03(this.A00.getViewabilityChecker()).A02(this.A00.getTouchDataRecorder()).A05());
            return false;
        }
        return false;
    }
}
