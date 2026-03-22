package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.93  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass93 extends C2020oA implements C1S {
    public final boolean A00;
    public final boolean A01;
    public final boolean A02;
    public final boolean A03;
    public final boolean A04;
    public final boolean A05;
    public final boolean A06;
    public final boolean A07;
    public final boolean A08;
    public final boolean A09;
    @MetaExoPlayerCustomization("D25277746")
    public final boolean A0A;
    public final boolean A0B;
    public final boolean A0C;
    public final boolean A0D;
    public final SparseArray<Map<C1898mA, C1876lo>> A0E;
    public final SparseBooleanArray A0F;
    public static String[] A0G = {"aGn7PxmzFVI8pseTQREUgmPTmRn3c3Qe", "IWvjCaXZ0UNcR9QsrMbq4cwMoqcNO01w", "zzFjDnJDYUSk81dZD4bwc1a4UEkJCW7c", "AfyHMFnboWczrAj6gDYBkfictlCviIiz", "ZudaxJy5LTgucmpkRl3p1l6eoKWNEQ3P", "dJwbxLQye6WGEEeA8Aa4EZe7IW3A7RwI", "l9ypC7Hglf3jtTkN6zxYkfXofkc9mvwo", "bL7rVgPoAdAWEHuIi5lDma"};
    public static final AnonymousClass93 A0J = new C1884lw().A0p();
    @Deprecated
    public static final AnonymousClass93 A0I = A0J;
    public static final String A0W = AbstractC03624a.A0h(1000);
    public static final String A0Q = AbstractC03624a.A0h(1001);
    public static final String A0R = AbstractC03624a.A0h(1002);
    public static final String A0T = AbstractC03624a.A0h(1003);
    public static final String A0M = AbstractC03624a.A0h(1004);
    public static final String A0N = AbstractC03624a.A0h(1005);
    public static final String A0K = AbstractC03624a.A0h(1006);
    public static final String A0V = AbstractC03624a.A0h(1007);
    public static final String A0b = AbstractC03624a.A0h(1008);
    public static final String A0O = AbstractC03624a.A0h(1009);
    public static final String A0Z = AbstractC03624a.A0h(1010);
    public static final String A0a = AbstractC03624a.A0h(1011);
    public static final String A0Y = AbstractC03624a.A0h(1012);
    public static final String A0X = AbstractC03624a.A0h(1013);
    public static final String A0P = AbstractC03624a.A0h(1014);
    public static final String A0L = AbstractC03624a.A0h(1015);
    public static final String A0S = AbstractC03624a.A0h(1016);
    public static final String A0U = AbstractC03624a.A0h(1017);
    public static final C1R<AnonymousClass93> A0H = new C1R() { // from class: com.facebook.ads.redexgen.X.lx
        @Override // com.facebook.ads.redexgen.X.C1R
        public final C1S A6X(Bundle bundle) {
            AnonymousClass93 A0p;
            A0p = new C1884lw(bundle).A0p();
            return A0p;
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 7 out of bounds for length 7
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static boolean A0M(SparseArray<Map<C1898mA, C1876lo>> sparseArray, SparseArray<Map<C1898mA, C1876lo>> sparseArray2) {
        int size = sparseArray.size();
        if (sparseArray2.size() != size) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
            if (indexOfKey < 0 || !A0O(sparseArray.valueAt(i), sparseArray2.valueAt(indexOfKey))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 7 out of bounds for length 7
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0O(java.util.Map<com.facebook.ads.redexgen.X.C1898mA, com.facebook.ads.redexgen.X.C1876lo> r5, java.util.Map<com.facebook.ads.redexgen.X.C1898mA, com.facebook.ads.redexgen.X.C1876lo> r6) {
        /*
            int r1 = r5.size()
            int r0 = r6.size()
            r4 = 0
            if (r0 == r1) goto Lc
            return r4
        Lc:
            java.util.Set r0 = r5.entrySet()
            java.util.Iterator r3 = r0.iterator()
        L14:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L3b
            java.lang.Object r1 = r3.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            com.facebook.ads.redexgen.X.mA r2 = (com.facebook.ads.redexgen.X.C1898mA) r2
            boolean r0 = r6.containsKey(r2)
            if (r0 == 0) goto L3a
            java.lang.Object r1 = r1.getValue()
            java.lang.Object r0 = r6.get(r2)
            boolean r0 = com.facebook.ads.redexgen.X.AbstractC03624a.A1E(r1, r0)
            if (r0 != 0) goto L14
        L3a:
            return r4
        L3b:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass93.A0O(java.util.Map, java.util.Map):boolean");
    }

    public AnonymousClass93(C1884lw c1884lw) {
        super(c1884lw);
        this.A0C = C1884lw.A0Y(c1884lw);
        this.A06 = C1884lw.A0Z(c1884lw);
        this.A07 = C1884lw.A0a(c1884lw);
        this.A05 = C1884lw.A0b(c1884lw);
        this.A09 = C1884lw.A0c(c1884lw);
        this.A02 = C1884lw.A0d(c1884lw);
        this.A03 = C1884lw.A0e(c1884lw);
        this.A00 = C1884lw.A0f(c1884lw);
        this.A01 = C1884lw.A0g(c1884lw);
        this.A08 = C1884lw.A0h(c1884lw);
        this.A0B = C1884lw.A0i(c1884lw);
        this.A0D = C1884lw.A0j(c1884lw);
        this.A04 = C1884lw.A0k(c1884lw);
        this.A0E = C1884lw.A0P(c1884lw);
        this.A0F = C1884lw.A0Q(c1884lw);
        this.A0A = C1884lw.A0l(c1884lw);
    }

    public static AnonymousClass93 A02(Context context) {
        return new C1884lw(context).A0p();
    }

    public static /* synthetic */ String A0B() {
        String str = A0Z;
        String[] strArr = A0G;
        if (strArr[0].charAt(18) != strArr[1].charAt(18)) {
            A0G[2] = "q21ODw35C4tKhNLL23C7ozdatpTCdbhY";
            return str;
        }
        throw new RuntimeException();
    }

    public static /* synthetic */ String A0C() {
        String str = A0a;
        if (A0G[2].charAt(14) != 'E') {
            String[] strArr = A0G;
            strArr[3] = "0vyQVqHCYWPXhQOTbdu3xGlynIqeANBb";
            strArr[6] = "GRyh1cWelO50ilzlDGPvyp85W4uMwhgp";
            return str;
        }
        throw new RuntimeException();
    }

    public static /* synthetic */ String A0H() {
        String str = A0P;
        String[] strArr = A0G;
        if (strArr[4].charAt(4) != strArr[5].charAt(4)) {
            throw new RuntimeException();
        }
        A0G[7] = "pTwWTj5vm";
        return str;
    }

    public static /* synthetic */ String A0J() {
        String str = A0M;
        String[] strArr = A0G;
        if (strArr[3].charAt(2) != strArr[6].charAt(2)) {
            throw new RuntimeException();
        }
        A0G[7] = "PzaI";
        return str;
    }

    public static boolean A0N(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
        int size = sparseBooleanArray.size();
        int firstSize = sparseBooleanArray2.size();
        if (firstSize != size) {
            return false;
        }
        for (int indexInFirst = 0; indexInFirst < size; indexInFirst++) {
            int firstSize2 = sparseBooleanArray.keyAt(indexInFirst);
            if (sparseBooleanArray2.indexOfKey(firstSize2) < 0) {
                return false;
            }
        }
        return true;
    }

    public final C1884lw A0P() {
        return new C1884lw(this);
    }

    @Deprecated
    public final C1876lo A0Q(int i, C1898mA c1898mA) {
        Map<C1898mA, C1876lo> map = this.A0E.get(i);
        if (map != null) {
            return map.get(c1898mA);
        }
        return null;
    }

    public final boolean A0R(int i) {
        return this.A0F.get(i);
    }

    @Deprecated
    public final boolean A0S(int i, C1898mA c1898mA) {
        Map<C1898mA, C1876lo> map = this.A0E.get(i);
        return map != null && map.containsKey(c1898mA);
    }

    @Override // com.facebook.ads.redexgen.X.C2020oA
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            Class<?> cls = getClass();
            Class<?> cls2 = obj.getClass();
            String[] strArr = A0G;
            if (strArr[4].charAt(4) != strArr[5].charAt(4)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0G;
            strArr2[0] = "DcJRbXEfPLE5m3v2P2UTupH85cHshXE1";
            strArr2[1] = "UExlWRKDpxUDxSKj0OTM8Ioa8cI6hcv0";
            if (cls == cls2) {
                AnonymousClass93 anonymousClass93 = (AnonymousClass93) obj;
                if (super.equals(anonymousClass93) && this.A0C == anonymousClass93.A0C && this.A06 == anonymousClass93.A06 && this.A07 == anonymousClass93.A07 && this.A05 == anonymousClass93.A05 && this.A09 == anonymousClass93.A09 && this.A02 == anonymousClass93.A02 && this.A03 == anonymousClass93.A03 && this.A00 == anonymousClass93.A00 && this.A01 == anonymousClass93.A01 && this.A08 == anonymousClass93.A08 && this.A0B == anonymousClass93.A0B && this.A0D == anonymousClass93.A0D && this.A04 == anonymousClass93.A04 && A0N(this.A0F, anonymousClass93.A0F) && A0M(this.A0E, anonymousClass93.A0E)) {
                    return true;
                }
                return false;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.C2020oA
    public final int hashCode() {
        int result = super.hashCode();
        int result2 = this.A06 ? 1 : 0;
        int result3 = this.A05 ? 1 : 0;
        int result4 = this.A02 ? 1 : 0;
        int result5 = this.A00 ? 1 : 0;
        int result6 = this.A08 ? 1 : 0;
        int result7 = this.A0D ? 1 : 0;
        return (((((((((((((((((((((((((((1 * 31) + result) * 31) + (this.A0C ? 1 : 0)) * 31) + result2) * 31) + (this.A07 ? 1 : 0)) * 31) + result3) * 31) + (this.A09 ? 1 : 0)) * 31) + result4) * 31) + (this.A03 ? 1 : 0)) * 31) + result5) * 31) + (this.A01 ? 1 : 0)) * 31) + result6) * 31) + (this.A0B ? 1 : 0)) * 31) + result7) * 31) + (this.A04 ? 1 : 0);
    }
}
