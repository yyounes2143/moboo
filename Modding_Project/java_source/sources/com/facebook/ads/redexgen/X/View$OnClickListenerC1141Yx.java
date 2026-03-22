package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Yx  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1141Yx implements View.OnClickListener {
    public final /* synthetic */ C1125Yh A00;
    public final /* synthetic */ LS A01;

    public View$OnClickListenerC1141Yx(LS ls, C1125Yh c1125Yh) {
        this.A01 = ls;
        this.A00 = c1125Yh;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A01();
            this.A01.A0B.AEC(O4.A04);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
