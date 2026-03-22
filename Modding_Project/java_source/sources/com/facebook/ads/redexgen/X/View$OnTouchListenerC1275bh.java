package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.bh  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnTouchListenerC1275bh implements View.OnTouchListener {
    public final /* synthetic */ C5K A00;

    public View$OnTouchListenerC1275bh(C5K c5k) {
        this.A00 = c5k;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C1279bl c1279bl;
        c1279bl = this.A00.A0E;
        c1279bl.dispatchTouchEvent(MotionEvent.obtain(motionEvent));
        return false;
    }
}
