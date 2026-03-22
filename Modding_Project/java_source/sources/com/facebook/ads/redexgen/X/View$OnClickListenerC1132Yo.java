package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Yo  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1132Yo implements View.OnClickListener {
    public final /* synthetic */ C1125Yh A00;
    public final /* synthetic */ LU A01;

    public View$OnClickListenerC1132Yo(LU lu, C1125Yh c1125Yh) {
        this.A01 = lu;
        this.A00 = c1125Yh;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A01();
            this.A01.A0B.AEC(O4.A06);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
