package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class G6 implements InterfaceC1070Wc {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractRunnableC1061Vt A01;
    public final /* synthetic */ G2 A02;
    public final /* synthetic */ C0577Cw A03;

    public G6(G2 g2, int i, C0577Cw c0577Cw, AbstractRunnableC1061Vt abstractRunnableC1061Vt) {
        this.A02 = g2;
        this.A00 = i;
        this.A03 = c0577Cw;
        this.A01 = abstractRunnableC1061Vt;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1070Wc
    public final void ACp() {
        this.A01.run();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1070Wc
    public final void AEn(float f) {
        this.A02.A08.setProgress(100.0f * (1.0f - (f / this.A00)));
        if (this.A03 != null) {
            C0577Cw c0577Cw = this.A03;
            float percentage = this.A00;
            c0577Cw.A07((int) ((percentage - f) * 1000.0f));
        }
    }
}
