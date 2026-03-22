package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class J6 extends AbstractRunnableC1061Vt {
    public final /* synthetic */ C0728Is A00;
    public final /* synthetic */ boolean A01;

    public J6(C0728Is c0728Is, boolean z) {
        this.A00 = c0728Is;
        this.A01 = z;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        C1214ai c1214ai;
        c1214ai = this.A00.A0c;
        AbstractC1104Xm A0C = c1214ai.A0C();
        if (A0C == null) {
            return;
        }
        A0C.setPageDetailsVisible((this.A01 || A0C.A0B()) ? false : true);
        A0C.setToolbarActionMode(this.A00.getCloseButtonStyle());
    }
}
