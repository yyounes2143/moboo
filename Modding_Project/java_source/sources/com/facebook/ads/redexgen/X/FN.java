package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class FN implements InterfaceC1334ce {
    public final /* synthetic */ C03533r A00;

    public FN(C03533r c03533r) {
        this.A00 = c03533r;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1334ce
    public final void A9d() {
        AbstractC1210ae abstractC1210ae;
        AbstractC1210ae abstractC1210ae2;
        abstractC1210ae = this.A00.A03;
        if (abstractC1210ae instanceof C03915d) {
            abstractC1210ae2 = this.A00.A03;
            ((C03915d) abstractC1210ae2).A1W();
            C1017Ua.A02(UZ.A0e, null, ((G2) this.A00).A02.A25(), ((G2) this.A00).A04.A0A());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1334ce
    public final void AJF() {
        AbstractC1210ae abstractC1210ae;
        AbstractC1210ae abstractC1210ae2;
        C03443i c03443i;
        abstractC1210ae = this.A00.A03;
        if (abstractC1210ae instanceof C03915d) {
            abstractC1210ae2 = this.A00.A03;
            c03443i = this.A00.A0M;
            ((C03915d) abstractC1210ae2).A1a(c03443i);
            C1017Ua.A02(UZ.A0e, null, ((G2) this.A00).A02.A25(), ((G2) this.A00).A04.A0A());
        }
        this.A00.A0k();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1334ce
    public final void AJT() {
        AbstractC1210ae abstractC1210ae;
        AbstractC1210ae abstractC1210ae2;
        this.A00.A0c();
        abstractC1210ae = this.A00.A03;
        if (abstractC1210ae instanceof C03915d) {
            abstractC1210ae2 = this.A00.A03;
            ((C03915d) abstractC1210ae2).getAdDetailsView().setVisibility(8);
        }
    }
}
