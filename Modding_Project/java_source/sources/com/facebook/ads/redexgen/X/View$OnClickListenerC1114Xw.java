package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
/* renamed from: com.facebook.ads.redexgen.X.Xw  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1114Xw implements View.OnClickListener {
    public final /* synthetic */ FullScreenAdToolbar A00;

    public View$OnClickListenerC1114Xw(FullScreenAdToolbar fullScreenAdToolbar) {
        this.A00 = fullScreenAdToolbar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1103Xl interfaceC1103Xl;
        YO yo;
        InterfaceC1103Xl interfaceC1103Xl2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            interfaceC1103Xl = this.A00.A02;
            if (interfaceC1103Xl != null) {
                yo = this.A00.A09;
                if (yo.A06()) {
                    interfaceC1103Xl2 = this.A00.A02;
                    interfaceC1103Xl2.ACC(this.A00);
                }
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
