package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Ya  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1118Ya implements View.OnClickListener {
    public final /* synthetic */ C1120Yc A00;

    public View$OnClickListenerC1118Ya(C1120Yc c1120Yc) {
        this.A00 = c1120Yc;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1123Yf interfaceC1123Yf;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1123Yf = this.A00.A04;
            interfaceC1123Yf.AAg();
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
