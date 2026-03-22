package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class G0 implements InterfaceC1323cT {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C0657Fy A01;

    public G0(C0657Fy c0657Fy, int i) {
        this.A01 = c0657Fy;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1323cT
    public final void ABr() {
        this.A01.A0E();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1323cT
    public final void ACZ() {
        this.A01.A0V(false, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1323cT
    public final void ACy(int i) {
        C0657Fy.A02(this.A01, i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1323cT
    public final void ADI(float f) {
        boolean z;
        z = this.A01.A08;
        if (!z) {
            this.A01.A0J(f);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1323cT
    public final void AFE(boolean z) {
        this.A01.A0U(z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1323cT
    public final void AFg(String str) {
        C1376dL c1376dL;
        InterfaceC1105Xn interfaceC1105Xn;
        YY yy;
        c1376dL = this.A01.A0D;
        c1376dL.A0F().A3S(str);
        interfaceC1105Xn = this.A01.A0I;
        yy = this.A01.A0J;
        interfaceC1105Xn.A4b(yy.A7t());
        this.A01.A0K(3);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1323cT
    public final void AJr() {
        AbstractC1104Xm abstractC1104Xm;
        AbstractC1104Xm abstractC1104Xm2;
        this.A01.setUnskippableSecondsComplete(false);
        abstractC1104Xm = this.A01.A0H;
        abstractC1104Xm.setProgressImmediate(0.0f);
        abstractC1104Xm2 = this.A01.A0H;
        abstractC1104Xm2.setToolbarActionMode(2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1323cT
    public final void AJs(float f) {
        AbstractC1104Xm abstractC1104Xm;
        abstractC1104Xm = this.A01.A0H;
        abstractC1104Xm.setProgress(100.0f * f);
    }
}
