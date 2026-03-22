package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Jt  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0755Jt implements InterfaceC1070Wc {
    public final /* synthetic */ C03935f A00;

    public C0755Jt(C03935f c03935f) {
        this.A00 = c03935f;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1070Wc
    public final void ACp() {
        AbstractC1104Xm abstractC1104Xm;
        AbstractC1104Xm abstractC1104Xm2;
        this.A00.A02 = false;
        abstractC1104Xm = this.A00.A07;
        if (abstractC1104Xm != null) {
            abstractC1104Xm2 = this.A00.A07;
            abstractC1104Xm2.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1070Wc
    public final void AEn(float f) {
        AbstractC1104Xm abstractC1104Xm;
        AbstractC1104Xm abstractC1104Xm2;
        abstractC1104Xm = this.A00.A07;
        if (abstractC1104Xm != null) {
            abstractC1104Xm2 = this.A00.A07;
            abstractC1104Xm2.setProgressImmediate(100.0f * (1.0f - (f / ((float) this.A00.getAdInfo().A0K().A00()))));
        }
    }
}
