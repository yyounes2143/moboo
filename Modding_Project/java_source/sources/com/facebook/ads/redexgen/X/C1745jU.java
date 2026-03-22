package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.jU  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1745jU implements InterfaceC0771Kj {
    public static byte[] A08;
    public static String[] A09 = {"mF6wsmKEoSH0oaFjYCs54xiQsDf", "7fvgeHK83IOxRTsxSXxl4b3GDJCkJYIR", "3AWdxUjQjYm4RALX7ZxT6TNspaUhotFB", "ejd6qsjsHb99jkL857XJ5GpzVF9O4Dmm", "HjmRuX1Dl2gTeBJaQInX56gY9CThxDdt", "4dP72HMzoJKZI0lPLVreHOZSlD0czmst", "VabPsN9EmqWHNd02VeXfGkhVpY5qzzPo", "1TiSMCKkeVz3FItUT5PAcFJ22kgDAGxf"};
    public int A00;
    public long A01;
    public long A02;
    public final int A03;
    public final C2061or A04;
    public final GY A05;
    public final H1 A06;
    public final C0773Kl A07;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 81);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A08 = new byte[]{-68, -95, -24, -16, -11, -69, -95, -34, 17, 9, -2, -4, Ascii.CR, -2, -3, -71, -5, 5, 8, -4, 4, -71, Ascii.FF, 2, 19, -2, -45, -71};
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        r6 = r15.A07.A02;
        r3 = r15.A00 / r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
        if (r3 <= 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
        r10 = r3 * r6;
        r11 = r15.A00 - r10;
        r15.A06.AIA(r15.A02 + com.facebook.ads.redexgen.X.AbstractC03624a.A0U(r15.A01, 1000000, r15.A07.A04), 1, r10, r11, null);
        r15.A01 += r3;
        r15.A00 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0084, code lost:
        if (r0 > 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0086, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0088, code lost:
        return false;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0771Kj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean AI9(com.facebook.ads.redexgen.X.InterfaceC1850lN r16, long r17) throws java.io.IOException {
        /*
            r15 = this;
            r0 = r17
            r2 = r15
        L3:
            r7 = 1
            r8 = 0
            java.lang.String[] r5 = com.facebook.ads.redexgen.X.C1745jU.A09
            r3 = 6
            r4 = r5[r3]
            r3 = 5
            r5 = r5[r3]
            r3 = 28
            char r4 = r4.charAt(r3)
            char r3 = r5.charAt(r3)
            if (r4 == r3) goto L20
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L20:
            java.lang.String[] r5 = com.facebook.ads.redexgen.X.C1745jU.A09
            java.lang.String r4 = "xyHijgDe1t0LZE27YhGAb5keyZPdsLp6"
            r3 = 7
            r5[r3] = r4
            int r3 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r3 <= 0) goto L52
            int r4 = r2.A00
            int r3 = r2.A03
            if (r4 >= r3) goto L52
            int r4 = r2.A03
            int r3 = r2.A00
            int r4 = r4 - r3
            long r3 = (long) r4
            long r5 = java.lang.Math.min(r3, r0)
            int r4 = (int) r5
            com.facebook.ads.redexgen.X.H1 r3 = r2.A06
            r5 = r16
            int r4 = r3.AI5(r5, r4, r7)
            r3 = -1
            if (r4 != r3) goto L4a
            r0 = 0
            goto L3
        L4a:
            int r3 = r2.A00
            int r3 = r3 + r4
            r2.A00 = r3
            long r3 = (long) r4
            long r0 = r0 - r3
            goto L3
        L52:
            com.facebook.ads.redexgen.X.Kl r3 = r2.A07
            int r6 = r3.A02
            int r3 = r2.A00
            int r3 = r3 / r6
            if (r3 <= 0) goto L80
            long r7 = r2.A02
            long r9 = r2.A01
            com.facebook.ads.redexgen.X.Kl r4 = r2.A07
            int r4 = r4.A04
            long r13 = (long) r4
            r11 = 1000000(0xf4240, double:4.940656E-318)
            long r4 = com.facebook.ads.redexgen.X.AbstractC03624a.A0U(r9, r11, r13)
            long r7 = r7 + r4
            int r10 = r3 * r6
            int r11 = r2.A00
            int r11 = r11 - r10
            com.facebook.ads.redexgen.X.H1 r6 = r2.A06
            r9 = 1
            r12 = 0
            r6.AIA(r7, r9, r10, r11, r12)
            long r5 = r2.A01
            long r3 = (long) r3
            long r5 = r5 + r3
            r2.A01 = r5
            r2.A00 = r11
        L80:
            r3 = 0
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 > 0) goto L88
            r0 = 1
        L87:
            return r0
        L88:
            r0 = 0
            goto L87
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1745jU.AI9(com.facebook.ads.redexgen.X.lN, long):boolean");
    }

    static {
        A01();
    }

    public C1745jU(GY gy, H1 h1, C0773Kl c0773Kl, String str, int i) throws C03182i {
        this.A05 = gy;
        this.A06 = h1;
        this.A07 = c0773Kl;
        int i2 = (c0773Kl.A05 * c0773Kl.A01) / 8;
        int bytesPerFrame = c0773Kl.A02;
        if (bytesPerFrame == i2) {
            int bytesPerFrame2 = c0773Kl.A04;
            int constantBitrate = bytesPerFrame2 * i2 * 8;
            int bytesPerFrame3 = c0773Kl.A04;
            this.A03 = Math.max(i2, (bytesPerFrame3 * i2) / 10);
            C2D A0j = new C2D().A11(str).A0a(constantBitrate).A0j(constantBitrate);
            int bytesPerFrame4 = this.A03;
            C2D A0h = A0j.A0h(bytesPerFrame4);
            int bytesPerFrame5 = c0773Kl.A05;
            C2D A0b = A0h.A0b(bytesPerFrame5);
            int bytesPerFrame6 = c0773Kl.A04;
            this.A04 = A0b.A0m(bytesPerFrame6).A0i(i).A14();
            return;
        }
        StringBuilder append = new StringBuilder().append(A00(7, 21, 72)).append(i2).append(A00(0, 7, 48));
        int bytesPerFrame7 = c0773Kl.A02;
        throw C03182i.A01(append.append(bytesPerFrame7).toString(), null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0771Kj
    public final void AA0(int i, long j) {
        this.A05.AIN(new C1743jS(this.A07, 1, i, j));
        this.A06.A6W(this.A04);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0771Kj
    public final void AI0(long j) {
        this.A02 = j;
        this.A00 = 0;
        this.A01 = 0L;
    }
}
