package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.or  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2061or implements C1S {
    public static byte[] A0Z;
    public static String[] A0a = {"V6MXy8T8VWr2uYzGQHXNST8x6mkuL2zq", "NPPhtSRrwFXlj8s5Lf5pJApSSy7nWvZn", "Zwnng2X5IOM1TKGeykh69gCIqoxpb9rN", "EKOvtoarjvrGIuXcg3PsyJc7", "ZiMxAAQ9qCUD5Rc2p4Bdqy2u", "SqcuONG3eBJEqSGEKSqUXXYdrjOnl4qF", "9lDPTqOcDpJIt3QmxvZawHsHRg6Gfk5X", "1hwbvE9Xb2ACzfbNO0itJVr"};
    public static final C1R<C2061or> A0b;
    public static final C2061or A0c;
    public static final String A0d;
    public static final String A0e;
    public static final String A0f;
    public static final String A0g;
    public static final String A0h;
    public static final String A0i;
    public static final String A0j;
    public static final String A0k;
    public static final String A0l;
    public static final String A0m;
    public static final String A0n;
    public static final String A0o;
    public static final String A0p;
    public static final String A0q;
    public static final String A0r;
    public static final String A0s;
    public static final String A0t;
    public static final String A0u;
    public static final String A0v;
    public static final String A0w;
    public static final String A0x;
    public static final String A0y;
    public static final String A0z;
    public static final String A10;
    public static final String A11;
    public static final String A12;
    public static final String A13;
    public static final String A14;
    public static final String A15;
    public static final String A16;
    public static final String A17;
    public static final String A18;
    public static final String A19;
    public int A00;
    public final float A01;
    public final float A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final int A0A;
    public final int A0B;
    public final int A0C;
    public final int A0D;
    public final int A0E;
    public final int A0F;
    public final int A0G;
    public final int A0H;
    public final int A0I;
    public final int A0J;
    public final int A0K;
    public final int A0L;
    public final long A0M;
    public final ColorInfo A0N;
    public final DrmInitData A0O;
    public final Metadata A0P;
    public final Object A0Q;
    public final String A0R;
    public final String A0S;
    public final String A0T;
    public final String A0U;
    public final String A0V;
    public final String A0W;
    public final List<byte[]> A0X;
    public final byte[] A0Y;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 2 out of bounds for length 2
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static <T> T A02(T t, T t2) {
        return t != null ? t : t2;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0Z, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 122);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A0Z = new byte[]{-38, -50, 0, -12, 47, 32, 73, 76, 71, 59, 78, 2, 81, Ascii.GS, 37, -12, -24, 35, Ascii.US};
    }

    static {
        A05();
        A0c = new C2D().A14();
        A0q = AbstractC03624a.A0h(0);
        A0s = AbstractC03624a.A0h(1);
        A0t = AbstractC03624a.A0h(2);
        A14 = AbstractC03624a.A0h(3);
        A10 = AbstractC03624a.A0h(4);
        A0e = AbstractC03624a.A0h(5);
        A0x = AbstractC03624a.A0h(6);
        A0g = AbstractC03624a.A0h(7);
        A0v = AbstractC03624a.A0h(8);
        A0i = AbstractC03624a.A0h(9);
        A12 = AbstractC03624a.A0h(10);
        A0u = AbstractC03624a.A0h(11);
        A0r = AbstractC03624a.A0h(12);
        A0k = AbstractC03624a.A0h(13);
        A16 = AbstractC03624a.A0h(14);
        A19 = AbstractC03624a.A0h(15);
        A0p = AbstractC03624a.A0h(16);
        A0o = AbstractC03624a.A0h(17);
        A11 = AbstractC03624a.A0h(18);
        A0y = AbstractC03624a.A0h(19);
        A0z = AbstractC03624a.A0h(20);
        A15 = AbstractC03624a.A0h(21);
        A0h = AbstractC03624a.A0h(22);
        A0f = AbstractC03624a.A0h(23);
        A13 = AbstractC03624a.A0h(24);
        A0w = AbstractC03624a.A0h(25);
        A0l = AbstractC03624a.A0h(26);
        A0m = AbstractC03624a.A0h(27);
        A0d = AbstractC03624a.A0h(28);
        A0j = AbstractC03624a.A0h(29);
        A17 = AbstractC03624a.A0h(30);
        A18 = AbstractC03624a.A0h(31);
        A0n = AbstractC03624a.A0h(32);
        A0b = new C1R() { // from class: com.facebook.ads.redexgen.X.ot
            @Override // com.facebook.ads.redexgen.X.C1R
            public final C1S A6X(Bundle bundle) {
                C2061or A00;
                A00 = C2061or.A00(bundle);
                return A00;
            }
        };
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "Language is not normalized")
    public C2061or(C2D c2d) {
        this.A0T = C2D.A0P(c2d);
        this.A0U = C2D.A0S(c2d);
        if (C1662i5.A03(EnumC1659i2.A0k)) {
            this.A0V = AbstractC03624a.A0k(C2D.A0T(c2d));
        } else {
            this.A0V = C2D.A0T(c2d);
        }
        this.A0H = C2D.A0G(c2d);
        this.A0E = C2D.A0H(c2d);
        this.A04 = C2D.A0I(c2d);
        this.A0D = C2D.A0J(c2d);
        this.A05 = this.A0D != -1 ? this.A0D : this.A04;
        this.A0R = C2D.A0U(c2d);
        this.A0P = C2D.A0N(c2d);
        this.A0Q = C2D.A0O(c2d);
        this.A0S = C2D.A0Q(c2d);
        this.A0W = C2D.A0R(c2d);
        this.A0B = C2D.A02(c2d);
        this.A0X = C2D.A0V(c2d) == null ? Collections.emptyList() : C2D.A0V(c2d);
        this.A0O = C2D.A0M(c2d);
        this.A0M = C2D.A0K(c2d);
        this.A0L = C2D.A03(c2d);
        this.A0A = C2D.A04(c2d);
        this.A01 = C2D.A00(c2d);
        this.A0F = C2D.A05(c2d) == -1 ? 0 : C2D.A05(c2d);
        this.A02 = C2D.A01(c2d) == -1.0f ? 1.0f : C2D.A01(c2d);
        this.A0Y = C2D.A0W(c2d);
        this.A0I = C2D.A06(c2d);
        this.A0N = C2D.A0L(c2d);
        this.A06 = C2D.A07(c2d);
        this.A0G = C2D.A08(c2d);
        this.A0C = C2D.A09(c2d);
        this.A08 = C2D.A0A(c2d) == -1 ? 0 : C2D.A0A(c2d);
        this.A09 = C2D.A0B(c2d) != -1 ? C2D.A0B(c2d) : 0;
        this.A03 = C2D.A0C(c2d);
        this.A0J = C2D.A0D(c2d);
        this.A0K = C2D.A0E(c2d);
        if (C2D.A0F(c2d) == 0 && this.A0O != null) {
            this.A07 = 1;
        } else {
            this.A07 = C2D.A0F(c2d);
        }
    }

    public static C2061or A00(Bundle bundle) {
        C2D c2d = new C2D();
        C3S.A02(bundle);
        c2d.A0y((String) A02(bundle.getString(A0q), A0c.A0T)).A0z((String) A02(bundle.getString(A0s), A0c.A0U)).A10((String) A02(bundle.getString(A0t), A0c.A0V)).A0n(bundle.getInt(A14, A0c.A0H)).A0k(bundle.getInt(A10, A0c.A0E)).A0a(bundle.getInt(A0e, A0c.A04)).A0j(bundle.getInt(A0x, A0c.A0D)).A0w((String) A02(bundle.getString(A0g), A0c.A0R)).A0v((Metadata) A02((Metadata) bundle.getParcelable(A0v), A0c.A0P)).A0x((String) A02(bundle.getString(A0i), A0c.A0S)).A11((String) A02(bundle.getString(A12), A0c.A0W)).A0h(bundle.getInt(A0u, A0c.A0B));
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            byte[] byteArray = bundle.getByteArray(A03(i));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i++;
        }
        c2d.A12(arrayList).A0u((DrmInitData) bundle.getParcelable(A0k)).A0s(bundle.getLong(A16, A0c.A0M)).A0r(bundle.getInt(A19, A0c.A0L)).A0f(bundle.getInt(A0p, A0c.A0A)).A0X(bundle.getFloat(A0o, A0c.A01)).A0l(bundle.getInt(A11, A0c.A0F)).A0Y(bundle.getFloat(A0y, A0c.A02)).A13(bundle.getByteArray(A0z)).A0o(bundle.getInt(A15, A0c.A0I));
        Bundle bundle2 = bundle.getBundle(A0h);
        if (bundle2 != null) {
            ColorInfo A6X = ColorInfo.A08.A6X(bundle2);
            String[] strArr = A0a;
            if (strArr[0].charAt(2) == strArr[2].charAt(2)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0a;
            strArr2[0] = "Hj6q80mEs2TaNtyFDcR9WAdUhRzKpc2R";
            strArr2[2] = "QNxytj5q4fkMiXjNnIzm1WM2l3yCLldD";
            c2d.A0t(A6X);
        }
        c2d.A0b(bundle.getInt(A0f, A0c.A06)).A0m(bundle.getInt(A13, A0c.A0G)).A0i(bundle.getInt(A0w, A0c.A0C)).A0d(bundle.getInt(A0l, A0c.A08)).A0e(bundle.getInt(A0m, A0c.A09)).A0Z(bundle.getInt(A0d, A0c.A03)).A0p(bundle.getInt(A17, A0c.A0J)).A0q(bundle.getInt(A18, A0c.A0K)).A0c(bundle.getInt(A0j, A0c.A07));
        return c2d.A14();
    }

    public static String A03(int i) {
        return A0r + A04(18, 1, 70) + Integer.toString(i, 36);
    }

    public final int A06() {
        if (this.A0L != -1) {
            int i = this.A0A;
            if (A0a[6].charAt(1) != 'l') {
                throw new RuntimeException();
            }
            A0a[7] = "26nMyN52vPpNzMdMA433IJJ";
            if (i == -1) {
                return -1;
            }
            return this.A0A * this.A0L;
        }
        return -1;
    }

    public final C2D A07() {
        return new C2D(this);
    }

    public final C2061or A08(int i) {
        return A07().A0c(i).A14();
    }

    @Deprecated
    public final C2061or A09(DrmInitData drmInitData) {
        return A07().A0u(drmInitData).A14();
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x0017 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A0A(com.facebook.ads.redexgen.X.C2061or r5) {
        /*
            r4 = this;
            java.util.List<byte[]> r0 = r4.A0X
            int r1 = r0.size()
            java.util.List<byte[]> r0 = r5.A0X
            int r0 = r0.size()
            r3 = 0
            if (r1 == r0) goto L10
            return r3
        L10:
            r2 = 0
        L11:
            java.util.List<byte[]> r0 = r4.A0X
            int r0 = r0.size()
            if (r2 >= r0) goto L33
            java.util.List<byte[]> r0 = r4.A0X
            java.lang.Object r1 = r0.get(r2)
            byte[] r1 = (byte[]) r1
            java.util.List<byte[]> r0 = r5.A0X
            java.lang.Object r0 = r0.get(r2)
            byte[] r0 = (byte[]) r0
            boolean r0 = java.util.Arrays.equals(r1, r0)
            if (r0 != 0) goto L30
            return r3
        L30:
            int r2 = r2 + 1
            goto L11
        L33:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2061or.A0A(com.facebook.ads.redexgen.X.or):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:?, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00fe, code lost:
        if (r3 != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0100, code lost:
        r3 = com.facebook.ads.redexgen.X.AbstractC03624a.A1E(r6.A0W, r7.A0W);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0113, code lost:
        if (com.facebook.ads.redexgen.X.C2061or.A0a[7].length() == 23) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0115, code lost:
        r2 = com.facebook.ads.redexgen.X.C2061or.A0a;
        r2[5] = "7ZwCaC2vMYJJrC5vSvijmVTemVnn4Sby";
        r2[1] = "7UklpW8WsZGkqbUQfANf7z94bQwnEZcP";
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0121, code lost:
        if (r3 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x012b, code lost:
        if (com.facebook.ads.redexgen.X.AbstractC03624a.A1E(r6.A0V, r7.A0V) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0135, code lost:
        if (java.util.Arrays.equals(r6.A0Y, r7.A0Y) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x013f, code lost:
        if (com.facebook.ads.redexgen.X.AbstractC03624a.A1E(r6.A0P, r7.A0P) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0141, code lost:
        r3 = r6.A0N;
        r2 = com.facebook.ads.redexgen.X.C2061or.A0a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0155, code lost:
        if (r2[5].charAt(27) == r2[1].charAt(27)) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0159, code lost:
        r2 = com.facebook.ads.redexgen.X.C2061or.A0a;
        r2[3] = "vKf0Bvu4u38h4hfjS2f6FEBD";
        r2[4] = "OdKyjmg05VE7Ony73IF4GzhY";
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0165, code lost:
        if (r3 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0174, code lost:
        if (r3 != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0179, code lost:
        r2 = com.facebook.ads.redexgen.X.C2061or.A0a;
        r2[0] = "urAfMcmX6a9OGM37lXvKAx1rZiPgX6ke";
        r2[2] = "a4vLaNQZdGnZx0xGeF61X6h0zX5Eit9g";
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x018b, code lost:
        if (com.facebook.ads.redexgen.X.AbstractC03624a.A1E(r3, r7.A0N) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0195, code lost:
        if (com.facebook.ads.redexgen.X.AbstractC03624a.A1E(r6.A0O, r7.A0O) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x019b, code lost:
        if (A0A(r7) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01a5, code lost:
        if (com.facebook.ads.redexgen.X.AbstractC03624a.A1E(r6.A0Q, r7.A0Q) == false) goto L96;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2061or.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int hashCode;
        if (this.A00 == 0) {
            int i = 17 * 31;
            int result = this.A0T == null ? 0 : this.A0T.hashCode();
            int result2 = (((i + result) * 31) + (this.A0U != null ? this.A0U.hashCode() : 0)) * 31;
            int result3 = this.A0V == null ? 0 : this.A0V.hashCode();
            int result4 = this.A0E;
            int result5 = this.A0D;
            int i2 = (((((((((result2 + result3) * 31) + this.A0H) * 31) + result4) * 31) + this.A04) * 31) + result5) * 31;
            if (this.A0R == null) {
                hashCode = 0;
            } else {
                String str = this.A0R;
                String[] strArr = A0a;
                if (strArr[0].charAt(2) == strArr[2].charAt(2)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0a;
                strArr2[3] = "TXy1YAbF7Qkyl7ROldsNtIji";
                strArr2[4] = "lt4q3TmvSSK0Q54eRVJBBfw2";
                hashCode = str.hashCode();
            }
            int result6 = (i2 + hashCode) * 31;
            int result7 = this.A0P == null ? 0 : this.A0P.hashCode();
            int result8 = (((result6 + result7) * 31) + (this.A0Q == null ? 0 : this.A0Q.hashCode())) * 31;
            int result9 = this.A0S == null ? 0 : this.A0S.hashCode();
            int result10 = (result8 + result9) * 31;
            int hashCode2 = this.A0W != null ? this.A0W.hashCode() : 0;
            int result11 = this.A0B;
            int result12 = (((((result10 + hashCode2) * 31) + result11) * 31) + ((int) this.A0M)) * 31;
            int result13 = this.A0L;
            int result14 = Float.floatToIntBits(this.A01);
            int result15 = Float.floatToIntBits(this.A02);
            int result16 = this.A06;
            int result17 = this.A0C;
            int result18 = this.A09;
            int result19 = this.A0J;
            int result20 = this.A07;
            this.A00 = ((((((((((((((((((((((((((((result12 + result13) * 31) + this.A0A) * 31) + result14) * 31) + this.A0F) * 31) + result15) * 31) + this.A0I) * 31) + result16) * 31) + this.A0G) * 31) + result17) * 31) + this.A08) * 31) + result18) * 31) + this.A03) * 31) + result19) * 31) + this.A0K) * 31) + result20;
        }
        return this.A00;
    }

    public final String toString() {
        StringBuilder append = new StringBuilder().append(A04(5, 7, 96)).append(this.A0T);
        String A04 = A04(0, 2, 52);
        return append.append(A04).append(this.A0U).append(A04).append(this.A0S).append(A04).append(this.A0W).append(A04).append(this.A0R).append(A04).append(this.A05).append(A04).append(this.A0V).append(A04(2, 3, 90)).append(this.A0L).append(A04).append(this.A0A).append(A04).append(this.A01).append(A04(14, 4, 78)).append(this.A06).append(A04).append(this.A0G).append(A04(12, 2, 122)).toString();
    }
}
