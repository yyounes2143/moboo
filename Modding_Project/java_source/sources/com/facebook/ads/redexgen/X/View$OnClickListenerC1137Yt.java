package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Yt  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1137Yt implements View.OnClickListener {
    public final /* synthetic */ C1139Yv A00;

    public View$OnClickListenerC1137Yt(C1139Yv c1139Yv) {
        this.A00 = c1139Yv;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1123Yf interfaceC1123Yf;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1123Yf = this.A00.A02;
            interfaceC1123Yf.A9U();
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
