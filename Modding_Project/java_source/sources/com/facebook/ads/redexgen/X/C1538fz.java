package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.fz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1538fz extends QT {
    public boolean A00 = false;
    public final /* synthetic */ AbstractC1537fy A01;

    public C1538fz(AbstractC1537fy abstractC1537fy) {
        this.A01 = abstractC1537fy;
    }

    @Override // com.facebook.ads.redexgen.X.QT
    public final void A0L(C04206g c04206g, int i) {
        super.A0L(c04206g, i);
        if (i == 0 && this.A00) {
            this.A00 = false;
            this.A01.A0F();
        }
    }

    @Override // com.facebook.ads.redexgen.X.QT
    public final void A0M(C04206g c04206g, int i, int i2) {
        if (i != 0 || i2 != 0) {
            this.A00 = true;
        }
    }
}
