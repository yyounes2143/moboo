package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.fn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1526fn extends AbstractRunnableC1061Vt {
    public final /* synthetic */ C1525fm A00;
    public final /* synthetic */ C5G A01;

    public C1526fn(C1525fm c1525fm, C5G c5g) {
        this.A00 = c1525fm;
        this.A01 = c5g;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        this.A01.setAdViewabilityChecker(this.A00.A02.A1B());
        this.A00.A02.A1f(true, true);
    }
}
