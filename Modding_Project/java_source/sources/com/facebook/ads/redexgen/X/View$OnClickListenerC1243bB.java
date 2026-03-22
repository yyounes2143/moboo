package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.bB  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1243bB implements View.OnClickListener {
    public final /* synthetic */ JS A00;

    public View$OnClickListenerC1243bB(JS js) {
        this.A00 = js;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1334ce interfaceC1334ce;
        InterfaceC1334ce interfaceC1334ce2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1334ce = this.A00.A02;
            if (interfaceC1334ce != null) {
                interfaceC1334ce2 = this.A00.A02;
                interfaceC1334ce2.A9d();
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
