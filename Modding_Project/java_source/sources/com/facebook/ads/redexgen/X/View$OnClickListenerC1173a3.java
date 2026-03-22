package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.a3  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1173a3 implements View.OnClickListener {
    public final /* synthetic */ KG A00;

    public View$OnClickListenerC1173a3(KG kg) {
        this.A00 = kg;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A02();
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
