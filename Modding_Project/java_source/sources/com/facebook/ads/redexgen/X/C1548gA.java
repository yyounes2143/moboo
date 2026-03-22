package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.gA  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1548gA implements InterfaceC0928Qn {
    public final /* synthetic */ C04206g A00;

    public C1548gA(C04206g c04206g) {
        this.A00 = c04206g;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0928Qn
    public final void AGP(AbstractC0921Qg abstractC0921Qg, QJ qj, QJ qj2) {
        this.A00.A1l(abstractC0921Qg, qj, qj2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0928Qn
    public final void AGR(AbstractC0921Qg abstractC0921Qg, QJ qj, QJ qj2) {
        this.A00.A0r.A0Y(abstractC0921Qg);
        this.A00.A1m(abstractC0921Qg, qj, qj2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0928Qn
    public final void AGT(AbstractC0921Qg abstractC0921Qg, QJ qj, QJ qj2) {
        abstractC0921Qg.A0d(false);
        if (this.A00.A0C) {
            if (this.A00.A05.A0R(abstractC0921Qg, abstractC0921Qg, qj, qj2)) {
                this.A00.A1O();
            }
        } else if (!this.A00.A05.A0Q(abstractC0921Qg, qj, qj2)) {
        } else {
            this.A00.A1O();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0928Qn
    public final void AJo(AbstractC0921Qg abstractC0921Qg) {
        this.A00.A06.A1F(abstractC0921Qg.A0H, this.A00.A0r);
    }
}
