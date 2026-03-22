package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.jq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1767jq implements KJ {
    public static byte[] A0G;
    public static String[] A0H = {"cAtU07tvAHmpQwteCa8pEQH5gF5iUcfh", "Hjeg7grS71Jm6r5NKbmR8o7Al25NvLrB", "8TbkpeEOwiN436cBQhp4NSePMq1Z0ZNp", "wFA3Sleqv", "yws6lvEdJf3TdH9okNAymdfPd8aH69ii", "xvx7jE251jeLUpmQ5JTTtAODp7RTPAZj", "flKrm8KbmQNj7vJDUwRTOfFPMCPuTaKn", "2PQM5lIFNms8BVmrvHkuPmbcHqu7a2gR"};
    public static final double[] A0I;
    public long A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public H1 A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final C4J A0B;
    public final KK A0C;
    public final KS A0D;
    public final C0769Kh A0E;
    public final boolean[] A0F;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<com.facebook.ads.redexgen.X.C2061or, java.lang.Long> A00(com.facebook.ads.redexgen.X.KK r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1767jq.A00(com.facebook.ads.redexgen.X.KK, java.lang.String):android.util.Pair");
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 122);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        byte[] bArr = {50, 45, 32, 33, 43, 107, 41, 52, 33, 35, 118};
        if (A0H[4].charAt(19) != 'y') {
            throw new RuntimeException();
        }
        A0H[2] = "5b4kHrs0qMccPUXJRINIqLrMs4aEtqXr";
        A0G = bArr;
    }

    static {
        A02();
        A0I = new double[]{23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    }

    public C1767jq() {
        this(null);
    }

    public C1767jq(C0769Kh c0769Kh) {
        this.A0E = c0769Kh;
        this.A0F = new boolean[4];
        this.A0C = new KK(128);
        if (c0769Kh != null) {
            this.A0D = new KS(178, 128);
            this.A0B = new C4J();
        } else {
            this.A0D = null;
            this.A0B = null;
        }
        this.A01 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0115, code lost:
        if (r3 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0117, code lost:
        r2 = (r23.A03 > (-9223372036854775807L) ? 1 : (r23.A03 == (-9223372036854775807L) ? 0 : -1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x011b, code lost:
        if (r2 == 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x011d, code lost:
        r13 = r23.A09;
        r14 = (int) (r23.A04 - r23.A02);
        r2 = r23.A05;
        r0 = r23.A03;
        r4 = -9223372036854775807L;
        r13 = r13 ? 1 : 0;
        r2.AIA(r0, r13, r14 - r11, r11, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01ae, code lost:
        if (r3 != false) goto L42;
     */
    @Override // com.facebook.ads.redexgen.X.KJ
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A52(com.facebook.ads.redexgen.X.C4J r24) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1767jq.A52(com.facebook.ads.redexgen.X.4J):void");
    }

    @Override // com.facebook.ads.redexgen.X.KJ
    public final void A5U(GY gy, C0766Ke c0766Ke) {
        c0766Ke.A05();
        this.A06 = c0766Ke.A04();
        this.A05 = gy.AJh(c0766Ke.A03(), 2);
        if (this.A0E != null) {
            this.A0E.A03(gy, c0766Ke);
        }
    }

    @Override // com.facebook.ads.redexgen.X.KJ
    public final void AG5() {
    }

    @Override // com.facebook.ads.redexgen.X.KJ
    public final void AG6(long j, int i) {
        this.A01 = j;
    }

    @Override // com.facebook.ads.redexgen.X.KJ
    public final void AIL() {
        AbstractC0675Gq.A0H(this.A0F);
        this.A0C.A00();
        if (this.A0D != null) {
            KS ks = this.A0D;
            if (A0H[1].length() != 32) {
                throw new RuntimeException();
            }
            A0H[0] = "joVCJevLOtmtIagsqVBvfxemqq2mA7LA";
            ks.A00();
        }
        this.A04 = 0L;
        this.A0A = false;
        this.A01 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
    }
}
