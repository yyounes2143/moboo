package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;
/* loaded from: assets/audience_network.dex */
public final class F4 extends QC<C0628Ev> {
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public AbstractC1104Xm A04;
    public InterfaceC1105Xn A05;
    public String A06;
    public List<C1343cn> A07;
    public boolean A08;
    public final SparseBooleanArray A09 = new SparseBooleanArray();
    public final AbstractC1657hy A0A;
    public final SF A0B;
    public final C1376dL A0C;
    public final US A0D;
    public final XH A0E;
    public final FH A0F;
    public final C1449eX A0G;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 18 out of bounds for length 18
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public F4(C1376dL c1376dL, List<C1343cn> list, AbstractC1657hy abstractC1657hy, US us, SF sf, C1449eX c1449eX, XH xh, InterfaceC1105Xn interfaceC1105Xn, String str, int i, int i2, int i3, int i4, FH fh, AbstractC1104Xm abstractC1104Xm) {
        this.A0C = c1376dL;
        this.A0D = us;
        this.A0B = sf;
        this.A0G = c1449eX;
        this.A0E = xh;
        this.A05 = interfaceC1105Xn;
        this.A0A = abstractC1657hy;
        this.A07 = list;
        this.A00 = i;
        this.A03 = i4;
        this.A06 = str;
        this.A01 = i3;
        this.A02 = i2;
        this.A0F = fh;
        this.A04 = abstractC1104Xm;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A00 */
    public final C0628Ev A0F(ViewGroup viewGroup, int i) {
        return new C0628Ev(AbstractC1273bf.A00(new C1213ah(this.A0C, this.A0D, this.A05, this.A0A, null, this.A0G, this.A0E).A0R(this.A04).A0W(), this.A03, this.A06, this.A0F), this.A09, this.A0G, this.A00, this.A01, this.A02, this.A07.size(), this.A0C, this.A0A.A21());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.QC
    /* renamed from: A01 */
    public final void A0K(C0628Ev c0628Ev, int i) {
        c0628Ev.A0q(this.A07.get(i), this.A0D, this.A0B, this.A0E, this.A06);
        if (!this.A08 && i == 0) {
            c0628Ev.AIV();
            this.A08 = true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final int A0B() {
        return this.A07.size();
    }
}
