package com.facebook.ads.redexgen.X;

import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.ln  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1875ln extends E5<C1875ln> implements Comparable<C1875ln> {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final boolean A05;
    public final boolean A06;
    public final boolean A07;
    public final boolean A08;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 3 out of bounds for length 3
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static int A01(List<C1875ln> list, List<C1875ln> list2) {
        return list.get(0).compareTo(list2.get(0));
    }

    public C1875ln(int i, C2027oH c2027oH, int i2, AnonymousClass93 anonymousClass93, int i3, String str) {
        super(i, c2027oH, i2);
        List<String> list;
        int A00;
        int i4 = 0;
        this.A08 = AnonymousClass92.A0S(i3, false);
        int i5 = super.A02.A0H & (~((C2020oA) anonymousClass93).A00);
        this.A06 = (i5 & 1) != 0;
        this.A07 = (i5 & 2) != 0;
        int i6 = Integer.MAX_VALUE;
        int bestLanguageScore = 0;
        if (anonymousClass93.A0K.isEmpty()) {
            list = C1658i1.A03("");
        } else {
            list = anonymousClass93.A0K;
        }
        int bestLanguageIndex = 0;
        while (true) {
            if (bestLanguageIndex >= list.size()) {
                break;
            }
            int A02 = AnonymousClass92.A02(super.A02, list.get(bestLanguageIndex), anonymousClass93.A0P);
            if (A02 > 0) {
                i6 = bestLanguageIndex;
                bestLanguageScore = A02;
                break;
            }
            bestLanguageIndex++;
        }
        this.A00 = i6;
        this.A01 = bestLanguageScore;
        A00 = AnonymousClass92.A00(super.A02.A0E, ((C2020oA) anonymousClass93).A0C);
        this.A02 = A00;
        this.A05 = (super.A02.A0E & 1088) != 0;
        this.A03 = AnonymousClass92.A02(super.A02, str, AnonymousClass92.A0K(str) == null);
        boolean z = this.A01 > 0 || (anonymousClass93.A0K.isEmpty() && this.A02 > 0) || this.A06 || (this.A07 && this.A03 > 0);
        if (AnonymousClass92.A0S(i3, anonymousClass93.A0B) && z) {
            i4 = 1;
        }
        this.A04 = i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* renamed from: A00 */
    public final int compareTo(C1875ln c1875ln) {
        AbstractC1892m4 A06 = AbstractC1892m4.A01().A09(this.A08, c1875ln.A08).A08(Integer.valueOf(this.A00), Integer.valueOf(c1875ln.A00), AbstractC2040oV.A03().A06()).A06(this.A01, c1875ln.A01).A06(this.A02, c1875ln.A02).A09(this.A06, c1875ln.A06).A08(Boolean.valueOf(this.A07), Boolean.valueOf(c1875ln.A07), this.A01 == 0 ? AbstractC2040oV.A03() : AbstractC2040oV.A03().A06()).A06(this.A03, c1875ln.A03);
        if (this.A02 == 0) {
            A06 = A06.A0A(this.A05, c1875ln.A05);
        }
        return A06.A05();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<com.facebook.ads.androidx.media3.exoplayer.trackselection.DefaultTrackSelector$TextTrackInfo> */
    public static AbstractC0517Am<C1875ln> A02(int i, C2027oH c2027oH, AnonymousClass93 anonymousClass93, int[] iArr, String str) {
        C02931h A01 = AbstractC0517Am.A01();
        for (int i2 = 0; i2 < c2027oH.A01; i2++) {
            A01.A04(new C1875ln(i, c2027oH, i2, anonymousClass93, iArr[i2], str));
        }
        return A01.A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.E5
    /* renamed from: A03 */
    public final boolean A09(C1875ln c1875ln) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.E5
    public final int A08() {
        return this.A04;
    }
}
