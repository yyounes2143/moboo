package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.bI  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1250bI extends AbstractRunnableC1061Vt {
    public final /* synthetic */ C1350cu A00;

    public C1250bI(C1350cu c1350cu) {
        this.A00 = c1350cu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        for (C0982Sq c0982Sq : C0981Sp.A02()) {
            C0981Sp.A0A(this.A00, c0982Sq.A02(), c0982Sq.A00(), c0982Sq.A01(), false);
        }
        C0981Sp.A02().clear();
    }
}
