package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.g7  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1545g7 implements QI {
    public final /* synthetic */ C04206g A00;

    public C1545g7(C04206g c04206g) {
        this.A00 = c04206g;
    }

    @Override // com.facebook.ads.redexgen.X.QI
    public final void ACK(AbstractC0921Qg abstractC0921Qg) {
        boolean A0G;
        abstractC0921Qg.A0d(true);
        if (abstractC0921Qg.A06 != null && abstractC0921Qg.A07 == null) {
            abstractC0921Qg.A06 = null;
        }
        abstractC0921Qg.A07 = null;
        A0G = abstractC0921Qg.A0G();
        if (!A0G && !this.A00.A1x(abstractC0921Qg.A0H) && abstractC0921Qg.A0i()) {
            this.A00.removeDetachedView(abstractC0921Qg.A0H, false);
        }
    }
}
