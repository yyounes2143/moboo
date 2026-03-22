package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.du  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1410du implements View.OnClickListener {
    public final /* synthetic */ D0 A00;

    public View$OnClickListenerC1410du(D0 d0) {
        this.A00 = d0;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C1017Ua c1017Ua;
        C1376dL c1376dL;
        E1 e1;
        boolean A07;
        E1 e12;
        E1 e13;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            c1017Ua = this.A00.A03;
            c1017Ua.A04(UZ.A0l, null);
            c1376dL = this.A00.A02;
            c1376dL.A0F().A3e();
            e1 = this.A00.A00;
            if (e1 != null) {
                A07 = this.A00.A07();
                if (A07) {
                    e13 = this.A00.A00;
                    e13.setVolume(1.0f);
                } else {
                    e12 = this.A00.A00;
                    e12.setVolume(0.0f);
                }
                this.A00.A09();
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
