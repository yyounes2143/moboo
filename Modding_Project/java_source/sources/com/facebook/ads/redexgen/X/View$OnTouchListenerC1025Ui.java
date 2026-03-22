package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Ui  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnTouchListenerC1025Ui implements View.OnTouchListener {
    public final /* synthetic */ TD A00;
    public final /* synthetic */ boolean A01;

    public View$OnTouchListenerC1025Ui(TD td, boolean z) {
        this.A00 = td;
        this.A01 = z;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.A01) {
            return false;
        }
        return true;
    }
}
