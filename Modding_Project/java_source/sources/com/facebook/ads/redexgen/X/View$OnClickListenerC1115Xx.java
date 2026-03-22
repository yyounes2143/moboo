package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Xx  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1115Xx implements View.OnClickListener {
    public final /* synthetic */ C0856Nr A00;

    public View$OnClickListenerC1115Xx(C0856Nr c0856Nr) {
        this.A00 = c0856Nr;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1103Xl interfaceC1103Xl;
        YQ yq;
        InterfaceC1103Xl interfaceC1103Xl2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1103Xl = this.A00.A01;
            if (interfaceC1103Xl != null) {
                yq = this.A00.A02;
                if (yq.A02()) {
                    interfaceC1103Xl2 = this.A00.A01;
                    interfaceC1103Xl2.ACC(this.A00);
                }
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
