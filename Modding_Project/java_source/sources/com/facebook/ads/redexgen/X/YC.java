package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class YC implements View.OnClickListener {
    public final /* synthetic */ C0790Lc A00;

    public YC(C0790Lc c0790Lc) {
        this.A00 = c0790Lc;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C1017Ua c1017Ua;
        InterfaceC1105Xn interfaceC1105Xn;
        YY yy;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            c1017Ua = this.A00.A0N;
            c1017Ua.A04(UZ.A07, null);
            interfaceC1105Xn = this.A00.A0Q;
            yy = this.A00.A0R;
            interfaceC1105Xn.A4b(yy.A7o());
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
