package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class HV implements InterfaceC1070Wc {
    public static String[] A01 = {"72ztA7TlK5AWnMBFqm0ulEGrNikWU87c", "q9jSjTIXJJeud4mNFdEJpcs0aBWF", "6LBG7Z", "4a80CIrFExPHnWcdf8FRxARvXokzjsAY", "hmt020juZcOK2XVUFVfIwXvCI0upMeB5", "bPuxHbTn8HkB22ksZqTc8mW6RF8jNMxu", "KvPASdtvPFN6v", "W7wSubo8j20OAA03KxoOzu7JM99EpBz5"};
    public final /* synthetic */ AnonymousClass50 A00;

    public HV(AnonymousClass50 anonymousClass50) {
        this.A00 = anonymousClass50;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1070Wc
    public final void ACp() {
        AbstractC1210ae abstractC1210ae;
        AbstractC1210ae abstractC1210ae2;
        InterfaceC1323cT interfaceC1323cT;
        AbstractC1210ae abstractC1210ae3;
        InterfaceC1323cT interfaceC1323cT2;
        AbstractC1104Xm abstractC1104Xm;
        InterfaceC1323cT interfaceC1323cT3;
        int i;
        AbstractC1210ae abstractC1210ae4;
        InterfaceC1323cT interfaceC1323cT4;
        AbstractC1104Xm abstractC1104Xm2;
        abstractC1210ae = this.A00.A01;
        if (abstractC1210ae instanceof C0759Jx) {
            abstractC1210ae4 = this.A00.A01;
            if (abstractC1210ae4.A1K()) {
                interfaceC1323cT4 = this.A00.A07;
                interfaceC1323cT4.AFE(true);
                abstractC1104Xm2 = this.A00.A06;
                abstractC1104Xm2.setToolbarActionMode(1);
                interfaceC1323cT3 = this.A00.A07;
                i = this.A00.A03;
                interfaceC1323cT3.ACy(i);
            }
        }
        abstractC1210ae2 = this.A00.A01;
        if (abstractC1210ae2 instanceof C0728Is) {
            abstractC1210ae3 = this.A00.A01;
            if (abstractC1210ae3.A1K()) {
                interfaceC1323cT2 = this.A00.A07;
                interfaceC1323cT2.AFE(true);
                abstractC1104Xm = this.A00.A06;
                abstractC1104Xm.setToolbarActionMode(1);
                interfaceC1323cT3 = this.A00.A07;
                i = this.A00.A03;
                interfaceC1323cT3.ACy(i);
            }
        }
        interfaceC1323cT = this.A00.A07;
        String[] strArr = A01;
        if (strArr[4].charAt(11) == strArr[3].charAt(11)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[5] = "jNYMJATRfaQqNW2YkrgQ7vcVmM2IUm0K";
        strArr2[0] = "cX4sd5TjwRWpCL8J3hPSalfD2n4ZIotM";
        interfaceC1323cT.AFE(false);
        interfaceC1323cT3 = this.A00.A07;
        i = this.A00.A03;
        interfaceC1323cT3.ACy(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1070Wc
    public final void AEn(float f) {
        InterfaceC1323cT interfaceC1323cT;
        int i;
        C0577Cw c0577Cw;
        C0577Cw c0577Cw2;
        int i2;
        interfaceC1323cT = this.A00.A07;
        i = this.A00.A03;
        interfaceC1323cT.ADI(i - f);
        c0577Cw = this.A00.A02;
        if (c0577Cw != null) {
            c0577Cw2 = this.A00.A02;
            i2 = this.A00.A03;
            c0577Cw2.A07((int) (i2 - f));
        }
    }
}
