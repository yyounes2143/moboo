package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class HP implements InterfaceC1070Wc {
    public final /* synthetic */ C03754n A00;

    public HP(C03754n c03754n) {
        this.A00 = c03754n;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1070Wc
    public final void ACp() {
        InterfaceC1323cT interfaceC1323cT;
        int i;
        InterfaceC1323cT interfaceC1323cT2;
        interfaceC1323cT = this.A00.A0M;
        i = this.A00.A0C;
        interfaceC1323cT.ACy(i);
        interfaceC1323cT2 = this.A00.A0M;
        interfaceC1323cT2.ACZ();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1070Wc
    public final void AEn(float f) {
        int i;
        boolean z;
        E1 e1;
        int duration;
        boolean z2;
        int i2;
        InterfaceC1323cT interfaceC1323cT;
        i = this.A00.A0C;
        float f2 = i - f;
        z = this.A00.A0a;
        if (z) {
            duration = 0;
        } else {
            e1 = this.A00.A0P;
            duration = e1.getDuration();
        }
        float totalForce = f2 + duration;
        z2 = this.A00.A0a;
        if (z2) {
            i2 = this.A00.A0C;
        } else {
            i2 = this.A00.A0B;
        }
        float seenTime = i2;
        float totalForce2 = totalForce / seenTime;
        interfaceC1323cT = this.A00.A0M;
        interfaceC1323cT.AJs(totalForce2);
    }
}
