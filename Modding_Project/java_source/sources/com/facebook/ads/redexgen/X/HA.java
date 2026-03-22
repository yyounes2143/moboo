package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class HA extends AbstractRunnableC1061Vt {
    public final /* synthetic */ C4Z A00;

    public HA(C4Z c4z) {
        this.A00 = c4z;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        C1251bJ c1251bJ;
        c1251bJ = this.A00.A0H;
        XP.A0D(1000, c1251bJ);
        this.A00.postDelayed(this, 2000L);
    }
}
