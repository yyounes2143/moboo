package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class JZ extends AbstractRunnableC1061Vt {
    public final /* synthetic */ JU A00;

    public JZ(JU ju) {
        this.A00 = ju;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        boolean z;
        C1251bJ c1251bJ;
        z = this.A00.A0e;
        if (!z) {
            c1251bJ = this.A00.A0O;
            XP.A0D(1000, c1251bJ);
        }
        this.A00.postDelayed(this, 2000L);
    }
}
