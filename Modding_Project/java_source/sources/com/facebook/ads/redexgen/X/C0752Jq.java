package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Jq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0752Jq implements InterfaceC1070Wc {
    public final /* synthetic */ C03915d A00;

    public C0752Jq(C03915d c03915d) {
        this.A00 = c03915d;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1070Wc
    public final void ACp() {
        AbstractC1104Xm abstractC1104Xm;
        AbstractC1104Xm abstractC1104Xm2;
        this.A00.A0B = false;
        abstractC1104Xm = this.A00.A06;
        if (abstractC1104Xm != null) {
            abstractC1104Xm2 = this.A00.A06;
            abstractC1104Xm2.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1070Wc
    public final void AEn(float f) {
        AbstractC1104Xm abstractC1104Xm;
        AbstractC1104Xm abstractC1104Xm2;
        abstractC1104Xm = this.A00.A06;
        if (abstractC1104Xm != null) {
            abstractC1104Xm2 = this.A00.A06;
            abstractC1104Xm2.setProgressImmediate(100.0f * (1.0f - (f / ((float) this.A00.getAdInfo().A0K().A00()))));
        }
    }
}
