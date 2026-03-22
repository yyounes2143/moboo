package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.hR  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1624hR extends AbstractRunnableC1061Vt {
    public final /* synthetic */ AbstractC1623hQ A00;
    public final /* synthetic */ V1 A01;

    public C1624hR(AbstractC1623hQ abstractC1623hQ, V1 v1) {
        this.A00 = abstractC1623hQ;
        this.A01 = v1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        this.A00.A0B.A0F().A5Y(this.A01.A03().getErrorCode(), this.A01.A04());
        if (this.A00.A07 != null) {
            this.A00.A07.A0G(this.A01);
        }
    }
}
