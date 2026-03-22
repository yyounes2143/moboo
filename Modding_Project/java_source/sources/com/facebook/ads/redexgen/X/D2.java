package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
/* loaded from: assets/audience_network.dex */
public final class D2<V> {
    public static String[] A03 = {"wnvxif6ytcBGtz0Mqv5PMSHqncXz0DK7", "L7XB5FnCPhx5DqxmHlZAG0IW", "W7hvMAjIuj2lsI", "WrlikZWMylRqaSPi0Ibe0HqhEkIhSSyj", "po5n5kVohPdvLQNJ9M8nO8P4vS7WmOX1", "qra4pPEOgaq041jIiRoYAjwA6HXH5OR", "0kvmHOBdOwqUCsJ2namrKa5OUETi", "Uzr0GTjpGam7FLw5cJa3iEu5W45H5eya"};
    public int A00;
    public final SparseArray<V> A01;
    public final C3X<V> A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 7 out of bounds for length 7
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public final void A05(int i, V v) {
        if (this.A00 == -1) {
            C3M.A08(this.A01.size() == 0);
            this.A00 = 0;
        }
        if (this.A01.size() > 0) {
            int keyAt = this.A01.keyAt(this.A01.size() - 1);
            C3M.A07(i >= keyAt);
            if (keyAt == i) {
                this.A02.A31(this.A01.valueAt(this.A01.size() - 1));
            }
        }
        this.A01.append(i, v);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.D2 != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public D2() {
        this(new C3X() { // from class: com.facebook.ads.redexgen.X.mC
            @Override // com.facebook.ads.redexgen.X.C3X
            public final void A31(Object obj) {
            }
        });
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.3X != com.facebook.ads.androidx.media3.common.util.Consumer<V> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.D2 != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public D2(C3X<V> c3x) {
        this.A01 = new SparseArray<>();
        this.A02 = c3x;
        this.A00 = -1;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.D2 != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public final V A00() {
        return this.A01.valueAt(this.A01.size() - 1);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.D2 != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public final V A01(int i) {
        if (this.A00 == -1) {
            this.A00 = 0;
        }
        while (this.A00 > 0 && i < this.A01.keyAt(this.A00)) {
            this.A00--;
        }
        while (this.A00 < this.A01.size() - 1 && i >= this.A01.keyAt(this.A00 + 1)) {
            int i2 = this.A00;
            String[] strArr = A03;
            if (strArr[2].length() == strArr[7].length()) {
                break;
            }
            String[] strArr2 = A03;
            strArr2[2] = "5gSetCnK4GRsLk";
            strArr2[7] = "9X4w0tOvMLq1romZr5jnatJ22c9uDFke";
            this.A00 = i2 + 1;
        }
        V valueAt = this.A01.valueAt(this.A00);
        String[] strArr3 = A03;
        if (strArr3[2].length() != strArr3[7].length()) {
            A03[4] = "mGDCyGfOZW37eucZgDEYXrj36iZYXBw1";
            return valueAt;
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.D2 != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    /* JADX WARN: Incorrect condition in loop: B:4:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A02() {
        /*
            r3 = this;
            r2 = 0
        L1:
            android.util.SparseArray<V> r0 = r3.A01
            int r0 = r0.size()
            if (r2 >= r0) goto L17
            com.facebook.ads.redexgen.X.3X<V> r1 = r3.A02
            android.util.SparseArray<V> r0 = r3.A01
            java.lang.Object r0 = r0.valueAt(r2)
            r1.A31(r0)
            int r2 = r2 + 1
            goto L1
        L17:
            r0 = -1
            r3.A00 = r0
            android.util.SparseArray<V> r0 = r3.A01
            r0.clear()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.D2.A02():void");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.D2 != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public final void A03(int i) {
        for (int size = this.A01.size() - 1; size >= 0; size--) {
            int i2 = this.A01.keyAt(size);
            if (i >= i2) {
                break;
            }
            this.A02.A31(this.A01.valueAt(size));
            this.A01.removeAt(size);
        }
        this.A00 = this.A01.size() > 0 ? Math.min(this.A00, this.A01.size() - 1) : -1;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.D2 != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    /* JADX WARN: Incorrect condition in loop: B:4:0x0009 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A04(int r4) {
        /*
            r3 = this;
            r2 = 0
        L1:
            android.util.SparseArray<V> r0 = r3.A01
            int r0 = r0.size()
            int r0 = r0 + (-1)
            if (r2 >= r0) goto L32
            android.util.SparseArray<V> r1 = r3.A01
            int r0 = r2 + 1
            int r0 = r1.keyAt(r0)
            if (r4 < r0) goto L32
            com.facebook.ads.redexgen.X.3X<V> r1 = r3.A02
            android.util.SparseArray<V> r0 = r3.A01
            java.lang.Object r0 = r0.valueAt(r2)
            r1.A31(r0)
            android.util.SparseArray<V> r0 = r3.A01
            r0.removeAt(r2)
            int r0 = r3.A00
            if (r0 <= 0) goto L2f
            int r0 = r3.A00
            int r0 = r0 + (-1)
            r3.A00 = r0
        L2f:
            int r2 = r2 + 1
            goto L1
        L32:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.D2.A04(int):void");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.D2 != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public final boolean A06() {
        return this.A01.size() == 0;
    }
}
