package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class EI extends AbstractRunnableC1061Vt {
    public final /* synthetic */ EG A00;

    public EI(EG eg) {
        this.A00 = eg;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        C1379dO c1379dO;
        E1 e1;
        DR dr;
        DX dx;
        c1379dO = this.A00.A03;
        c1379dO.A07();
        e1 = this.A00.A04;
        C0996Te<AbstractC0997Tf, C0995Td> eventBus = e1.getEventBus();
        dr = this.A00.A06;
        dx = this.A00.A05;
        eventBus.A04(dr, dx);
    }
}
