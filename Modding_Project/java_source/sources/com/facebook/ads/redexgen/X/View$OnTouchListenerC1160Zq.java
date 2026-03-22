package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Zq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnTouchListenerC1160Zq implements View.OnTouchListener {
    public final /* synthetic */ View$OnClickListenerC1161Zr A00;

    public View$OnTouchListenerC1160Zq(View$OnClickListenerC1161Zr view$OnClickListenerC1161Zr) {
        this.A00 = view$OnClickListenerC1161Zr;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.A00.A00(motionEvent.getX(), motionEvent.getY());
            return false;
        }
        return false;
    }
}
