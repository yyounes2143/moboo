package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.bH  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1249bH implements View.OnClickListener {
    public final /* synthetic */ JR A00;

    public View$OnClickListenerC1249bH(JR jr) {
        this.A00 = jr;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1334ce interfaceC1334ce;
        InterfaceC1334ce interfaceC1334ce2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1334ce = this.A00.A07;
            if (interfaceC1334ce != null) {
                interfaceC1334ce2 = this.A00.A07;
                interfaceC1334ce2.AJF();
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
