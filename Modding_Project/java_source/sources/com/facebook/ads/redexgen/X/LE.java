package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;
/* loaded from: assets/audience_network.dex */
public final class LE extends QC<FD> {
    public int A00;
    public int A01;
    public int A02;
    public InterfaceC1105Xn A03;
    public C1449eX A04;
    public String A05;
    public List<C1343cn> A06;
    public final SparseBooleanArray A07 = new SparseBooleanArray();
    public final AbstractC1657hy A08;
    public final SF A09;
    public final C1376dL A0A;
    public final US A0B;
    public final C0917Qc A0C;
    public final XH A0D;
    public final C04065s A0E;
    public final C0577Cw A0F;

    public LE(C1376dL c1376dL, List<C1343cn> list, AbstractC1657hy abstractC1657hy, US us, C0917Qc c0917Qc, InterfaceC1105Xn interfaceC1105Xn, String str, C04065s c04065s, C0577Cw c0577Cw) {
        this.A0A = c1376dL;
        this.A0B = us;
        this.A0C = c0917Qc;
        this.A09 = c0917Qc.A11();
        this.A04 = c0917Qc.A1B();
        this.A0D = c0917Qc.A1A();
        this.A03 = interfaceC1105Xn;
        this.A08 = abstractC1657hy;
        this.A06 = list;
        this.A05 = str;
        this.A0E = c04065s;
        this.A0F = c0577Cw;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A00 */
    public final FD A0F(ViewGroup viewGroup, int i) {
        return new FD(AbstractC1176a6.A00(new C1213ah(this.A0A, this.A0B, this.A03, this.A08, null, this.A04, this.A0D).A0T(this.A0F).A0O(this.A0C).A0W(), this.A0C, this.A05, this.A0E), this.A07, this.A04, this.A06.size(), this.A0A, this.A08.A21());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A01 */
    public final void A0K(FD fd, int i) {
        fd.A0q(this.A04);
        fd.A0p(this.A06.get(i), this.A0B, this.A09, this.A0D, this.A05, this.A00, this.A02, this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final int A0B() {
        return this.A06.size();
    }

    public final void A0O(int i, int i2, int i3) {
        boolean needsUpdate = i != this.A00;
        this.A00 = i;
        this.A02 = i2;
        this.A01 = i3;
        if (needsUpdate) {
            A0G();
        }
    }

    public final void A0P(C1449eX c1449eX) {
        this.A04 = c1449eX;
    }
}
