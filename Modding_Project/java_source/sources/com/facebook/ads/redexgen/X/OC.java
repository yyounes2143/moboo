package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class OC extends QT {
    public static String[] A01 = {"LeWmJ2AEMrGR8tgfwsG9m8UwM76zwmUz", "6Bm", "ck2sw", "Oj1Ntvfg6dck0NxJmQASjzaKZXVqT4Sf", "CtYf7ZmPdO", "plI1JnuA", "RZR4g54lk6KTwqItkRA6ECctcTUw", "cGd5igXf7vOVCpmuGQi5cRxrBgQCM2pW"};
    public final /* synthetic */ C02670h A00;

    public OC(C02670h c02670h) {
        this.A00 = c02670h;
    }

    @Override // com.facebook.ads.redexgen.X.QT
    public final void A0L(C04206g c04206g, int i) {
        int A25;
        InterfaceC1112Xu interfaceC1112Xu;
        super.A0L(c04206g, i);
        C1556gI linearLayoutManager = this.A00.getLayoutManager();
        if (linearLayoutManager != null && (A25 = linearLayoutManager.A25()) >= 0) {
            C02670h c02670h = this.A00;
            int scrollPosition = A01[3].charAt(13);
            if (scrollPosition == 48) {
                throw new RuntimeException();
            }
            A01[5] = "JmqJ93Os7fwoNBdh";
            if (c02670h.getAdapter() == null || A25 >= this.A00.getAdapter().A0B() || (interfaceC1112Xu = (InterfaceC1112Xu) c04206g.A1F(A25)) == null) {
                return;
            }
            interfaceC1112Xu.AIV();
        }
    }
}
