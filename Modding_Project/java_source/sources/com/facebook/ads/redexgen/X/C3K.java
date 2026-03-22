package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.3K  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public class C3K extends DP {
    public final /* synthetic */ D9 A00;

    public C3K(D9 d9) {
        this.A00 = d9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
    /* renamed from: A00 */
    public final void A03(DQ dq) {
        if ((!D9.A09(this.A00) || !D9.A08(this.A00)) && D9.A07(this.A00) && D9.A0A(this.A00)) {
            D9.A0D(this.A00, false);
            if (D9.A0C(this.A00, EnumC1417e1.A03) || D9.A0B(this.A00)) {
                D9.A0F(this.A00, false);
                D9.A01(this.A00).postDelayed(new DB(this), D9.A00(this.A00));
            } else if (!D9.A0C(this.A00, EnumC1417e1.A02)) {
            } else {
                D9.A04(this.A00);
                D9.A05(this.A00, true, true);
            }
        }
    }
}
