package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class VL extends AbstractRunnableC1061Vt {
    public final /* synthetic */ VJ A00;

    public VL(VJ vj) {
        this.A00 = vj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        long j;
        long j2;
        VJ.A00(this.A00);
        j = this.A00.A01;
        if (j > 0) {
            try {
                j2 = this.A00.A01;
                Thread.sleep(j2);
            } catch (InterruptedException unused) {
            }
        }
        this.A00.A0B();
    }
}
