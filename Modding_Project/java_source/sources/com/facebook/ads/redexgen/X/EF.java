package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* loaded from: assets/audience_network.dex */
public class EF extends AbstractRunnableC1061Vt {
    public final /* synthetic */ E1 A00;

    public EF(E1 e1) {
        this.A00 = e1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        boolean z;
        C0996Te c0996Te;
        Handler handler;
        int i;
        z = this.A00.A04;
        if (!z) {
            c0996Te = this.A00.A0C;
            final int currentPositionInMillis = this.A00.getCurrentPositionInMillis();
            c0996Te.A02(new DY(currentPositionInMillis) { // from class: com.facebook.ads.redexgen.X.3Q
            });
            handler = this.A00.A08;
            i = this.A00.A01;
            handler.postDelayed(this, i);
        }
    }
}
