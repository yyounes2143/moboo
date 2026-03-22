package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.dP  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnTouchListenerC1380dP implements View.OnTouchListener {
    public final /* synthetic */ E1 A00;

    public View$OnTouchListenerC1380dP(E1 e1) {
        this.A00 = e1;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C0996Te c0996Te;
        c0996Te = this.A00.A0C;
        c0996Te.A02(new DH(view, motionEvent));
        return false;
    }
}
