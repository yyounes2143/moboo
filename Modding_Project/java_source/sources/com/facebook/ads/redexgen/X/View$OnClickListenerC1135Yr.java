package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Yr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1135Yr implements View.OnClickListener {
    public final /* synthetic */ O6 A00;
    public final /* synthetic */ C1125Yh A01;
    public final /* synthetic */ LU A02;

    public View$OnClickListenerC1135Yr(LU lu, C1125Yh c1125Yh, O6 o6) {
        this.A02 = lu;
        this.A01 = c1125Yh;
        this.A00 = o6;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A01.A01();
            this.A02.A0B.AEP(this.A00);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
