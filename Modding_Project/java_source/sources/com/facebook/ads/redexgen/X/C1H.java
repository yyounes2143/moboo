package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import androidx.core.util.Preconditions;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.io.encoding.Base64;
/* renamed from: com.facebook.ads.redexgen.X.1H  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C1H implements A6 {
    public static byte[] A09;
    public static String[] A0A = {"5g", "bfnfjiUri9kvxuLEKnZU3kJc1ieY23zz", "NIX", "B1MUzprhDDigVQ4p3NlPN3VyWdkPEAJB", "UzK", "rOCmuOM4l5uJjn2akKGm2JxYL79BUlOr", "kAulvLpzcmVynuK8kNGYEaaJbNqcwElD", "7ScKsdjGN77oK2tO1d"};
    public static final String A0B;
    public long A00;
    public InterfaceC2107pr A01;
    public final InterfaceC2106pq A02;
    public final C2098pi A03;
    public final C2098pi A04;
    public final List<Rect> A05;
    public final Map<String, C2097ph> A06;
    public final boolean A07;
    public final boolean A08;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A0A;
            if (strArr[3].charAt(2) == strArr[1].charAt(2)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0A;
            strArr2[5] = "GBjOApmdB9meVYu3h8dWYwSrfWPE5QmB";
            strArr2[6] = "rSzbUr5mB5cqWCHa6t40U5C3uIAdU8ry";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 73);
            i4++;
        }
    }

    public static void A03() {
        A09 = new byte[]{Ascii.DC4, 40, 41, 51, 96, 54, 41, 37, 55, 48, 47, 41, 46, 52, 96, 40, 33, 51, 96, 46, 47, 52, 96, 34, 37, 37, 46, 96, 45, 37, 33, 51, 53, 50, 37, 36, 96, 47, 50, 96, 41, 51, 96, 33, 96, 39, 50, 47, 53, 48, 96, 55, 40, 41, 35, 40, 96, 55, 41, 44, 44, 96, 46, 37, 54, 37, 50, 96, 50, 37, 52, 53, 50, 46, 96, 33, 96, 45, 37, 33, 51, 53, 50, 37, 45, 37, 46, 52, 96, 51, 41, 46, 35, 37, 96, 41, 52, 103, 51, 96, 45, 33, 36, 37, 96, 53, 48, 96, 47, 38, 96, 51, 53, 34, 54, 41, 37, 55, 51, 96, 52, 40, 33, 52, 96, 35, 47, 53, 44, 36, 96, 34, 37, 96, 47, 38, 38, 51, 35, 50, 37, 37, 46, Ascii.DLE, Ascii.ESC, 9, 45, Ascii.GS, Ascii.US, Ascii.DLE, Base64.padSymbol, 38, 63, 63, 115, 37, 58, 54, 36, 115, 35, 33, 60, 35, 54, 33, 39, 42, 115, 53, 60, 33, 115, 33, 54, 62, 60, 37, 54, 55, 115, 58, 39, 54, 62, 115, Ascii.RS, 2, Ascii.VT, Ascii.EM, 63, 8, Ascii.GS, 2, Ascii.US, Ascii.EM};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 9 out of bounds for length 9
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @Override // com.facebook.ads.redexgen.X.A6
    public final void A6H(List<C2110pu<?, ?>> list) {
        Collection A00;
        Collection A002;
        if (list != null && !list.isEmpty()) {
            A06(list);
        }
        A05(this.A04);
        A04(this.A04);
        A05(this.A03);
        A04(this.A03);
        if (0 != 0) {
            String obj = toString();
            List<Rect> list2 = this.A05;
            A00 = this.A04.A00();
            A002 = this.A03.A00();
            new C2095pf(obj, this, list2, A00, A002);
            throw new NullPointerException(A02(143, 7, 55));
        }
    }

    static {
        A03();
        A0B = C1H.class.getSimpleName();
    }

    public C1H(InterfaceC2106pq interfaceC2106pq) {
        this(interfaceC2106pq, false, false);
    }

    public C1H(InterfaceC2106pq interfaceC2106pq, boolean z, boolean z2) {
        this.A06 = new HashMap();
        this.A04 = new C2098pi();
        this.A03 = new C2098pi();
        this.A05 = new ArrayList(1);
        this.A02 = interfaceC2106pq;
        this.A08 = z;
        this.A07 = z2;
    }

    public static Rect A00(C2097ph c2097ph) {
        Rect rect;
        Rect rect2;
        Rect rect3;
        Rect rect4;
        Rect rect5;
        if (c2097ph != null) {
            rect = c2097ph.A02;
            if (rect.top != Integer.MIN_VALUE) {
                rect2 = c2097ph.A02;
                if (rect2.left != Integer.MIN_VALUE) {
                    rect3 = c2097ph.A02;
                    if (rect3.right != Integer.MIN_VALUE) {
                        rect4 = c2097ph.A02;
                        if (rect4.bottom != Integer.MIN_VALUE) {
                            rect5 = c2097ph.A02;
                            return rect5;
                        }
                    }
                }
            }
        }
        throw new IllegalStateException(A02(0, 143, 9));
    }

    private C2097ph A01(C2110pu c2110pu, Rect rect, Rect rect2) {
        boolean A06;
        Rect rect3;
        List list;
        C2097ph c2097ph = this.A06.get(c2110pu.A02);
        A06 = this.A04.A06(c2110pu);
        if (A06) {
            if (c2097ph != null) {
                c2097ph.A01 = EnumC2101pl.A04;
            } else {
                c2097ph = C2097ph.A03(this.A00);
                this.A06.put(c2110pu.A02, c2097ph);
            }
        }
        C2097ph viewProperties = (C2097ph) Preconditions.checkNotNull(c2097ph);
        rect3 = viewProperties.A02;
        rect3.set(rect2);
        list = c2097ph.A03;
        list.add(new Rect(rect));
        return c2097ph;
    }

    private void A04(C2098pi c2098pi) {
        Collection<C2110pu> A01;
        List list;
        A01 = c2098pi.A01();
        for (C2110pu c2110pu : A01) {
            C2097ph c2097ph = this.A06.get(c2110pu.A02);
            if (c2097ph == null) {
                if (0 != 0) {
                    String str = A02(150, 36, 26) + c2110pu.A02;
                    throw new NullPointerException(A02(186, 10, 36));
                }
            } else {
                c2097ph.A01 = EnumC2101pl.A03;
                list = c2097ph.A03;
                list.clear();
                if (A07(c2110pu)) {
                    c2110pu.A03(this);
                }
                if (this.A08) {
                    this.A06.remove(c2097ph);
                }
            }
        }
    }

    private void A05(C2098pi c2098pi) {
        Collection<C2110pu> A00;
        A00 = c2098pi.A00();
        for (C2110pu visible : A00) {
            if (A07(visible)) {
                visible.A03(this);
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<?, ?> */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0004 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A06(java.util.List<com.facebook.ads.redexgen.X.C2110pu<?, ?>> r7) {
        /*
            r6 = this;
            java.util.Iterator r5 = r7.iterator()
        L4:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L6f
            java.lang.Object r3 = r5.next()
            com.facebook.ads.redexgen.X.pu r3 = (com.facebook.ads.redexgen.X.C2110pu) r3
            java.util.Map<java.lang.String, com.facebook.ads.redexgen.X.ph> r1 = r6.A06
            java.lang.String r0 = r3.A02
            java.lang.Object r0 = r1.get(r0)
            com.facebook.ads.redexgen.X.ph r0 = (com.facebook.ads.redexgen.X.C2097ph) r0
            if (r0 == 0) goto L4
            boolean r4 = r3.A04
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1H.A0A
            r0 = 0
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 2
            if (r1 == r0) goto L30
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L30:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1H.A0A
            java.lang.String r1 = "nPwsVC"
            r0 = 7
            r2[r0] = r1
            if (r4 == 0) goto L4
            com.facebook.ads.redexgen.X.pl r4 = r3.A01
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1H.A0A
            r0 = 5
            r1 = r2[r0]
            r0 = 6
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L60
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1H.A0A
            java.lang.String r1 = "zj"
            r0 = 0
            r2[r0] = r1
            if (r4 == 0) goto L4
        L56:
            com.facebook.ads.redexgen.X.pl r1 = r3.A01
            com.facebook.ads.redexgen.X.pl r0 = com.facebook.ads.redexgen.X.EnumC2101pl.A03
            if (r1 == r0) goto L4
            r3.A03(r6)
            goto L4
        L60:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1H.A0A
            java.lang.String r1 = "4Gl"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "t26"
            r0 = 2
            r2[r0] = r1
            if (r4 == 0) goto L4
            goto L56
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1H.A06(java.util.List):void");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<?, ?> */
    public static boolean A07(C2110pu<?, ?> c2110pu) {
        if (c2110pu.A04) {
            EnumC2111pv enumC2111pv = c2110pu.A00;
            EnumC2111pv enumC2111pv2 = EnumC2111pv.A04;
            String[] strArr = A0A;
            if (strArr[5].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A0A[7] = "iICfc1p4CYNR1vFaz";
            if (enumC2111pv == enumC2111pv2) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x009f, code lost:
        if (r4 != false) goto L20;
     */
    @Override // com.facebook.ads.redexgen.X.A6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A3y(com.facebook.ads.redexgen.X.C2110pu r8, android.graphics.Rect r9, android.graphics.Rect r10, boolean r11) {
        /*
            r7 = this;
            r7.A01(r8, r9, r10)
            com.facebook.ads.redexgen.X.pu r4 = r8.A05
            com.facebook.ads.redexgen.X.pu r0 = com.facebook.ads.redexgen.X.C2110pu.A0B
            if (r4 == r0) goto Le5
            if (r4 == 0) goto Le5
            com.facebook.ads.redexgen.X.pi r0 = r7.A03
            boolean r2 = com.facebook.ads.redexgen.X.C2098pi.A07(r0, r4)
            java.util.Map<java.lang.String, com.facebook.ads.redexgen.X.ph> r1 = r7.A06
            java.lang.String r0 = r4.A02
            java.lang.Object r3 = r1.get(r0)
            com.facebook.ads.redexgen.X.ph r3 = (com.facebook.ads.redexgen.X.C2097ph) r3
            if (r2 == 0) goto L57
            if (r3 == 0) goto L40
            java.util.List r0 = com.facebook.ads.redexgen.X.C2097ph.A05(r3)
            r0.clear()
            boolean r0 = r7.A07
            if (r0 == 0) goto La1
            boolean r4 = r4.A04()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1H.A0A
            r0 = 0
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 2
            if (r1 == r0) goto L93
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L40:
            long r0 = r7.A00
            com.facebook.ads.redexgen.X.ph r3 = com.facebook.ads.redexgen.X.C2097ph.A04(r0)
            android.graphics.Rect r1 = com.facebook.ads.redexgen.X.C2097ph.A00(r3)
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1.set(r0, r0, r0, r0)
            java.util.Map<java.lang.String, com.facebook.ads.redexgen.X.ph> r1 = r7.A06
            java.lang.String r0 = r4.A02
            r1.put(r0, r3)
            goto Lbf
        L57:
            if (r11 == 0) goto Ld0
            if (r3 == 0) goto Ld0
            android.graphics.Rect r6 = com.facebook.ads.redexgen.X.C2097ph.A00(r3)
            int r1 = r10.left
            android.graphics.Rect r0 = com.facebook.ads.redexgen.X.C2097ph.A00(r3)
            int r0 = r0.left
            int r5 = java.lang.Math.min(r1, r0)
            int r1 = r10.top
            android.graphics.Rect r0 = com.facebook.ads.redexgen.X.C2097ph.A00(r3)
            int r0 = r0.top
            int r4 = java.lang.Math.min(r1, r0)
            int r1 = r10.right
            android.graphics.Rect r0 = com.facebook.ads.redexgen.X.C2097ph.A00(r3)
            int r0 = r0.right
            int r2 = java.lang.Math.max(r1, r0)
            int r1 = r10.bottom
            android.graphics.Rect r0 = com.facebook.ads.redexgen.X.C2097ph.A00(r3)
            int r0 = r0.bottom
            int r0 = java.lang.Math.max(r1, r0)
            r6.set(r5, r4, r2, r0)
            goto Ld0
        L93:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1H.A0A
            java.lang.String r1 = "H54AceamXdthsYm78mtSydojeY2Fx6Sn"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "PVfiJKIqQ6L9JP1UYx1CLIU2NiQOo1Yq"
            r0 = 6
            r2[r0] = r1
            if (r4 == 0) goto Lbf
        La1:
            com.facebook.ads.redexgen.X.pl r4 = com.facebook.ads.redexgen.X.EnumC2101pl.A04
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1H.A0A
            r0 = 7
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 26
            if (r1 == r0) goto Le6
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1H.A0A
            java.lang.String r1 = "tsuWg7tiHeCbTZ79GKvfVJLQxaexBCGH"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "f1Y9d3aTAam6AIKjxx39fqUFlMtOCeIE"
            r0 = 6
            r2[r0] = r1
            com.facebook.ads.redexgen.X.C2097ph.A02(r3, r4)
        Lbf:
            if (r11 == 0) goto Ld0
            android.graphics.Rect r5 = com.facebook.ads.redexgen.X.C2097ph.A00(r3)
            int r4 = r10.left
            int r2 = r10.top
            int r1 = r10.right
            int r0 = r10.bottom
            r5.set(r4, r2, r1, r0)
        Ld0:
            androidx.core.util.Preconditions.checkNotNull(r3)
            java.util.List r0 = com.facebook.ads.redexgen.X.C2097ph.A05(r3)
            java.lang.Object r1 = androidx.core.util.Preconditions.checkNotNull(r0)
            java.util.List r1 = (java.util.List) r1
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>(r9)
            r1.add(r0)
        Le5:
            return
        Le6:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1H.A3y(com.facebook.ads.redexgen.X.pu, android.graphics.Rect, android.graphics.Rect, boolean):void");
    }

    @Override // com.facebook.ads.redexgen.X.A6
    public final void A4Z(long j, List<Rect> list) {
        Collection A01;
        Collection<C2110pu> A012;
        List list2;
        this.A00 = j;
        this.A05.clear();
        Iterator<Rect> it = list.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr = A0A;
            if (strArr[3].charAt(2) == strArr[1].charAt(2)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0A;
            strArr2[4] = "xWg";
            strArr2[2] = "l5f";
            if (hasNext) {
                this.A05.add(new Rect(it.next()));
            } else {
                A01 = this.A04.A01();
                Iterator it2 = A01.iterator();
                while (true) {
                    boolean hasNext2 = it2.hasNext();
                    if (A0A[0].length() == 2) {
                        String[] strArr3 = A0A;
                        strArr3[3] = "KXc0LwnJCEJYYpq44EYPYXvj71LHxLBt";
                        strArr3[1] = "SZ9db6jeJg1WeryC8zmRUBHGUrGxU8hd";
                        if (!hasNext2) {
                            break;
                        }
                        this.A06.remove(((C2110pu) it2.next()).A02);
                    } else if (!hasNext2) {
                        break;
                    } else {
                        this.A06.remove(((C2110pu) it2.next()).A02);
                    }
                }
                A012 = this.A03.A01();
                if (A0A[0].length() != 2) {
                    throw new RuntimeException();
                }
                A0A[0] = "Au";
                for (C2110pu viewpointData : A012) {
                    this.A06.remove(viewpointData.A02);
                }
                for (C2097ph c2097ph : this.A06.values()) {
                    list2 = c2097ph.A03;
                    list2.clear();
                }
                this.A04.A04();
                this.A03.A04();
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2100pk
    public final void A85(C2110pu c2110pu, Rect rect) {
        List<Rect> list;
        rect.setEmpty();
        list = ((C2097ph) Preconditions.checkNotNull(this.A06.get(c2110pu.A02))).A03;
        for (Rect rect2 : list) {
            rect.union(rect2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2100pk
    public final EnumC2101pl A9M(C2110pu c2110pu) {
        EnumC2101pl enumC2101pl;
        enumC2101pl = ((C2097ph) Preconditions.checkNotNull(this.A06.get(c2110pu.A02))).A01;
        if (c2110pu.A04) {
            if (c2110pu.A00 == EnumC2111pv.A04) {
                EnumC2101pl viewState = EnumC2101pl.A03;
                return viewState;
            }
            EnumC2101pl viewState2 = EnumC2101pl.A04;
            if (enumC2101pl == viewState2 && !c2110pu.A04()) {
                EnumC2101pl viewState3 = EnumC2101pl.A02;
                return viewState3;
            }
        }
        return enumC2101pl;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2100pk
    public final void A9O(Rect rect) {
        rect.setEmpty();
        for (Rect rect2 : this.A05) {
            rect.union(rect2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2100pk
    public final float A9P(C2110pu c2110pu) {
        List<Rect> list;
        C2097ph c2097ph = this.A06.get(c2110pu.A02);
        if (c2097ph != null) {
            Rect A00 = A00(c2097ph);
            int height = A00.height() * A00.width();
            int totalVisibleArea = 0;
            list = c2097ph.A03;
            for (Rect rect : list) {
                totalVisibleArea += rect.height() * rect.width();
            }
            return totalVisibleArea / height;
        }
        return 0.0f;
    }

    @Override // com.facebook.ads.redexgen.X.A6
    public final void AJA(InterfaceC2107pr interfaceC2107pr) {
        this.A01 = interfaceC2107pr;
    }
}
