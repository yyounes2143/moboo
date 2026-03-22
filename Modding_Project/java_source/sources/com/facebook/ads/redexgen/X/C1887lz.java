package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.lz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1887lz extends E5<C1887lz> implements Comparable<C1887lz> {
    public static String[] A0I = {"kuPF6Ds61I7lkNvdz9bcVPsTInik8V3M", "Qk0zKRkYsaxRz9XBLHG1rmY7ne3qL", "U5xl3sY91uvZaW", "4oEkNGaUX02G9U6MTdWApFSB5pjWlUNx", "CFtCC3eFdvC", "EnNVjubCw6rdwWEp5vRTdV2Ipxq1ST06", "834ujo2VifTXBI2K", "5tr2zEJniV6LNy5ijK5ku"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final AnonymousClass93 A0A;
    public final String A0B;
    public final boolean A0C;
    public final boolean A0D;
    public final boolean A0E;
    public final boolean A0F;
    public final boolean A0G;
    public final boolean A0H;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 22 out of bounds for length 16
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public C1887lz(int i, C2027oH c2027oH, int i2, AnonymousClass93 anonymousClass93, int i3, boolean z, InterfaceC1727jB<C2061or> interfaceC1727jB) {
        super(i, c2027oH, i2);
        int A00;
        this.A0A = anonymousClass93;
        this.A0B = AnonymousClass92.A0K(super.A02.A0V);
        this.A0F = AnonymousClass92.A0S(i3, false);
        int i4 = 0;
        int i5 = Integer.MAX_VALUE;
        int i6 = 0;
        while (true) {
            if (i6 >= anonymousClass93.A0I.size()) {
                break;
            }
            int A02 = AnonymousClass92.A02(super.A02, anonymousClass93.A0I.get(i6), false);
            if (A02 > 0) {
                i5 = i6;
                i4 = A02;
                break;
            }
            i6++;
        }
        this.A04 = i5;
        this.A05 = i4;
        A00 = AnonymousClass92.A00(super.A02.A0E, ((C2020oA) anonymousClass93).A0B);
        this.A07 = A00;
        this.A0C = super.A02.A0E == 0 || (super.A02.A0E & 1) != 0;
        this.A0D = (super.A02.A0H & 1) != 0;
        this.A01 = super.A02.A06;
        this.A08 = super.A02.A0G;
        this.A00 = super.A02.A05;
        this.A0E = (super.A02.A05 == -1 || super.A02.A05 <= ((C2020oA) anonymousClass93).A01) && (super.A02.A06 == -1 || super.A02.A06 <= ((C2020oA) anonymousClass93).A02) && interfaceC1727jB.A44(super.A02);
        String[] A1L = AbstractC03624a.A1L();
        int i7 = Integer.MAX_VALUE;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            if (i9 >= A1L.length) {
                break;
            }
            int A022 = AnonymousClass92.A02(super.A02, A1L[i9], false);
            if (A022 > 0) {
                i7 = i9;
                i8 = A022;
                break;
            }
            i9++;
        }
        this.A02 = i7;
        this.A03 = i8;
        int i10 = Integer.MAX_VALUE;
        int i11 = 0;
        while (true) {
            if (i11 < anonymousClass93.A0J.size()) {
                if (super.A02.A0W != null && super.A02.A0W.equals(anonymousClass93.A0J.get(i11))) {
                    i10 = i11;
                    break;
                }
                i11++;
            } else {
                break;
            }
        }
        this.A06 = i10;
        this.A0H = AnonymousClass76.A02(i3) == 128;
        this.A0G = AnonymousClass76.A04(i3) == 64;
        this.A09 = A00(i3, z);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 3 out of bounds for length 3
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static int A02(List<C1887lz> list, List<C1887lz> list2) {
        return ((C1887lz) Collections.max(list)).compareTo((C1887lz) Collections.max(list2));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 17 out of bounds for length 16
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static AbstractC0517Am<C1887lz> A03(int i, C2027oH c2027oH, AnonymousClass93 anonymousClass93, int[] iArr, boolean z, InterfaceC1727jB<C2061or> interfaceC1727jB) {
        C02931h A01 = AbstractC0517Am.A01();
        for (int i2 = 0; i2 < c2027oH.A01; i2++) {
            A01.A04(new C1887lz(i, c2027oH, i2, anonymousClass93, iArr[i2], z, interfaceC1727jB));
        }
        return A01.A05();
    }

    private int A00(int i, boolean z) {
        if (AnonymousClass92.A0S(i, this.A0A.A0B)) {
            if (this.A0E || this.A0A.A09) {
                if (AnonymousClass92.A0S(i, false) && this.A0E && super.A02.A05 != -1 && !this.A0A.A0N && !this.A0A.A0O && (this.A0A.A04 || !z)) {
                    return 2;
                }
                return 1;
            }
            return 0;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oV != com.google.common.collect.Ordering<java.lang.Integer> */
    @Override // java.lang.Comparable
    /* renamed from: A01 */
    public final int compareTo(C1887lz c1887lz) {
        AbstractC2040oV abstractC2040oV;
        AbstractC2040oV A06;
        AbstractC2040oV abstractC2040oV2;
        AbstractC2040oV abstractC2040oV3;
        if (!this.A0E || !this.A0F) {
            abstractC2040oV = AnonymousClass92.A09;
            A06 = abstractC2040oV.A06();
        } else {
            A06 = AnonymousClass92.A09;
        }
        AbstractC1892m4 A08 = AbstractC1892m4.A01().A09(this.A0F, c1887lz.A0F).A08(Integer.valueOf(this.A04), Integer.valueOf(c1887lz.A04), AbstractC2040oV.A03().A06()).A06(this.A05, c1887lz.A05).A06(this.A07, c1887lz.A07).A09(this.A0D, c1887lz.A0D).A09(this.A0C, c1887lz.A0C).A08(Integer.valueOf(this.A02), Integer.valueOf(c1887lz.A02), AbstractC2040oV.A03().A06()).A06(this.A03, c1887lz.A03).A09(this.A0E, c1887lz.A0E).A08(Integer.valueOf(this.A06), Integer.valueOf(c1887lz.A06), AbstractC2040oV.A03().A06());
        Integer valueOf = Integer.valueOf(this.A00);
        Integer valueOf2 = Integer.valueOf(c1887lz.A00);
        if (this.A0A.A0O) {
            abstractC2040oV3 = AnonymousClass92.A09;
            abstractC2040oV2 = abstractC2040oV3.A06();
        } else {
            abstractC2040oV2 = AnonymousClass92.A0A;
        }
        AbstractC1892m4 A082 = A08.A08(valueOf, valueOf2, abstractC2040oV2).A09(this.A0H, c1887lz.A0H).A09(this.A0G, c1887lz.A0G).A08(Integer.valueOf(this.A01), Integer.valueOf(c1887lz.A01), A06).A08(Integer.valueOf(this.A08), Integer.valueOf(c1887lz.A08), A06);
        Integer valueOf3 = Integer.valueOf(this.A00);
        Integer valueOf4 = Integer.valueOf(c1887lz.A00);
        if (!AbstractC03624a.A1E(this.A0B, c1887lz.A0B)) {
            A06 = AnonymousClass92.A0A;
        }
        return A082.A08(valueOf3, valueOf4, A06).A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
        if (r4 == ((com.facebook.ads.redexgen.X.E5) r6).A02.A06) goto L13;
     */
    @Override // com.facebook.ads.redexgen.X.E5
    /* renamed from: A04 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A09(com.facebook.ads.redexgen.X.C1887lz r6) {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.93 r0 = r5.A0A
            boolean r0 = r0.A00
            r3 = -1
            if (r0 != 0) goto L36
            com.facebook.ads.redexgen.X.or r0 = r5.A02
            int r0 = r0.A06
            if (r0 == r3) goto L7a
            com.facebook.ads.redexgen.X.or r0 = r5.A02
            int r4 = r0.A06
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1887lz.A0I
            r0 = 5
            r1 = r2[r0]
            r0 = 0
            r2 = r2[r0]
            r0 = 5
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L7c
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1887lz.A0I
            java.lang.String r1 = "4j0Ebeo7wJOJZxGoc5hIgJQJaA3nIP6d"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "7JU6hRyIHJ6Xx4Pnq3EsCWmSiYve8JpD"
            r0 = 0
            r2[r0] = r1
            com.facebook.ads.redexgen.X.or r0 = r6.A02
            int r0 = r0.A06
            if (r4 != r0) goto L7a
        L36:
            com.facebook.ads.redexgen.X.93 r0 = r5.A0A
            boolean r0 = r0.A02
            if (r0 != 0) goto L50
            com.facebook.ads.redexgen.X.or r0 = r5.A02
            java.lang.String r0 = r0.A0W
            if (r0 == 0) goto L7a
            com.facebook.ads.redexgen.X.or r0 = r5.A02
            java.lang.String r1 = r0.A0W
            com.facebook.ads.redexgen.X.or r0 = r6.A02
            java.lang.String r0 = r0.A0W
            boolean r0 = android.text.TextUtils.equals(r1, r0)
            if (r0 == 0) goto L7a
        L50:
            com.facebook.ads.redexgen.X.93 r0 = r5.A0A
            boolean r0 = r0.A03
            if (r0 != 0) goto L66
            com.facebook.ads.redexgen.X.or r0 = r5.A02
            int r0 = r0.A0G
            if (r0 == r3) goto L7a
            com.facebook.ads.redexgen.X.or r0 = r5.A02
            int r1 = r0.A0G
            com.facebook.ads.redexgen.X.or r0 = r6.A02
            int r0 = r0.A0G
            if (r1 != r0) goto L7a
        L66:
            com.facebook.ads.redexgen.X.93 r0 = r5.A0A
            boolean r0 = r0.A01
            if (r0 != 0) goto L78
            boolean r1 = r5.A0H
            boolean r0 = r6.A0H
            if (r1 != r0) goto L7a
            boolean r1 = r5.A0G
            boolean r0 = r6.A0G
            if (r1 != r0) goto L7a
        L78:
            r0 = 1
        L79:
            return r0
        L7a:
            r0 = 0
            goto L79
        L7c:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1887lz.A09(com.facebook.ads.redexgen.X.lz):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.E5
    public final int A08() {
        return this.A09;
    }
}
