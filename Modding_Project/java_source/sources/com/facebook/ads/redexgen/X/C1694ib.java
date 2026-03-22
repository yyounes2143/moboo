package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.ib  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1694ib extends AbstractRunnableC1061Vt {
    public final /* synthetic */ C1692iZ A00;
    public final /* synthetic */ C5G A01;

    public C1694ib(C1692iZ c1692iZ, C5G c5g) {
        this.A00 = c1692iZ;
        this.A01 = c5g;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        C1449eX c1449eX;
        C1449eX c1449eX2;
        C1449eX c1449eX3;
        this.A00.A00.A0A();
        c1449eX = this.A00.A00.A0C;
        if (c1449eX != null) {
            C5G c5g = this.A01;
            c1449eX2 = this.A00.A00.A0C;
            c5g.setAdViewabilityChecker(c1449eX2);
            c1449eX3 = this.A00.A00.A0C;
            c1449eX3.A0U();
        }
    }
}
