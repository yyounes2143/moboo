package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
/* loaded from: assets/audience_network.dex */
public final class KQ {
    public static String[] A0I = {"PiFB59Vxde45j8XGh3VNLS0bXquL", "eCGnEp7n3q", "QH0EN4bfbiXOmvaYxmEgWcgYRTVGFgtW", "ynU2FJVvbbIz4lLWIxM7HwzaaEzIs2yM", "B", "nKAZbJPu58l8", "2xLWRKjlXe7o2y", "tMbtJGMRwKJD523"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final H1 A0F;
    public final boolean A0G;
    public final boolean A0H;
    public final SparseArray<C0674Gp> A0D = new SparseArray<>();
    public final SparseArray<C0673Go> A0C = new SparseArray<>();
    public KP A06 = new KP();
    public KP A07 = new KP();
    public byte[] A0B = new byte[128];
    public final C0677Gs A0E = new C0677Gs(this.A0B, 0, 0);

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0238  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A05(byte[] r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 591
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KQ.A05(byte[], int, int):void");
    }

    public KQ(H1 h1, boolean z, boolean z2) {
        this.A0F = h1;
        this.A0G = z;
        this.A0H = z2;
        A01();
    }

    private void A00(int i) {
        if (this.A05 == -9223372036854775807L) {
            return;
        }
        boolean z = this.A0A;
        this.A0F.AIA(this.A05, z ? 1 : 0, (int) (this.A02 - this.A04), i, null);
    }

    public final void A01() {
        this.A08 = false;
        this.A09 = false;
        this.A07.A02();
    }

    public final void A02(long j, int i, long j2) {
        this.A01 = i;
        this.A03 = j2;
        this.A02 = j;
        if (!this.A0G || this.A01 != 1) {
            if (!this.A0H) {
                return;
            }
            if (this.A01 != 5 && this.A01 != 1 && this.A01 != 2) {
                return;
            }
        }
        KP kp = this.A06;
        KP kp2 = this.A07;
        if (A0I[1].length() != 10) {
            throw new RuntimeException();
        }
        A0I[6] = "uj74NyijhUvg4q";
        this.A06 = kp2;
        this.A07 = kp;
        KP newSliceHeader = this.A07;
        newSliceHeader.A02();
        this.A00 = 0;
        this.A08 = true;
    }

    public final void A03(C0673Go c0673Go) {
        this.A0C.append(c0673Go.A00, c0673Go);
    }

    public final void A04(C0674Gp c0674Gp) {
        this.A0D.append(c0674Gp.A09, c0674Gp);
    }

    public final boolean A06() {
        return this.A0H;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        if (r0 != false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A07(long r6, int r8, boolean r9, boolean r10) {
        /*
            r5 = this;
            int r1 = r5.A01
            r0 = 9
            r4 = 0
            r3 = 1
            if (r1 == r0) goto L16
            boolean r0 = r5.A0H
            if (r0 == 0) goto L30
            com.facebook.ads.redexgen.X.KP r1 = r5.A07
            com.facebook.ads.redexgen.X.KP r0 = r5.A06
            boolean r0 = com.facebook.ads.redexgen.X.KP.A01(r1, r0)
            if (r0 == 0) goto L30
        L16:
            if (r9 == 0) goto L24
            boolean r0 = r5.A09
            if (r0 == 0) goto L24
            long r0 = r5.A02
            long r6 = r6 - r0
            int r0 = (int) r6
            int r8 = r8 + r0
            r5.A00(r8)
        L24:
            long r0 = r5.A02
            r5.A04 = r0
            long r0 = r5.A03
            r5.A05 = r0
            r5.A0A = r4
            r5.A09 = r3
        L30:
            boolean r0 = r5.A0G
            if (r0 == 0) goto L3a
            com.facebook.ads.redexgen.X.KP r0 = r5.A07
            boolean r10 = r0.A05()
        L3a:
            boolean r2 = r5.A0A
            int r1 = r5.A01
            r0 = 5
            if (r1 == r0) goto L47
            if (r10 == 0) goto L48
            int r0 = r5.A01
            if (r0 != r3) goto L48
        L47:
            r4 = 1
        L48:
            r2 = r2 | r4
            r5.A0A = r2
            boolean r0 = r5.A0A
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KQ.A07(long, int, boolean, boolean):boolean");
    }
}
