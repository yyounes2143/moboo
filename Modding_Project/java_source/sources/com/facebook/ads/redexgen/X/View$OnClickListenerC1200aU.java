package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.aU  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1200aU implements View.OnClickListener {
    public final /* synthetic */ KE A00;
    public final /* synthetic */ String A01;

    public View$OnClickListenerC1200aU(KE ke, String str) {
        this.A00 = ke;
        this.A01 = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0E(this.A01);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
