package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class YZ implements View.OnClickListener {
    public final /* synthetic */ C1120Yc A00;

    public YZ(C1120Yc c1120Yc) {
        this.A00 = c1120Yc;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        InterfaceC1123Yf interfaceC1123Yf;
        InterfaceC1123Yf interfaceC1123Yf2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            z = this.A00.A05;
            if (z) {
                interfaceC1123Yf2 = this.A00.A04;
                interfaceC1123Yf2.A4v();
                return;
            }
            interfaceC1123Yf = this.A00.A04;
            interfaceC1123Yf.A4w();
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
