package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.facebook.ads.redexgen.X.jv  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1772jv implements GX {
    public static byte[] A0C;
    public static String[] A0D = {"Jp9jYTsvX0byW8PsTh8WCsi4kS5THTDZ", "u9JmQf2RUpXkbwKGcH1ldYLO1OaAnoG0", "zVRI5h7vLNN08I5W1BFePAuDidXDjkLB", "GupX0AjjIH906l5opBlPCY0Mrv7mkKOY", "YLyM9aD6SKjNKerJ1EloHyT", "oAaNr5RuznTKLecZmpLN", "Q5WjYzMQ2NaCiwYPtyRn68zXUmvTXGHf", "bi8dQH0GL9bk2fQxVP7KQMQdOg6RbrhP"};
    public static final InterfaceC0660Gb A0E;
    public int A00;
    public long A01;
    public long A02;
    public GY A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public final int A07;
    public final C4I A08;
    public final C4J A09;
    public final C4J A0A;
    public final C1771ju A0B;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 50);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{39, Ascii.VT, 6, Ascii.FF, 5, Ascii.CAN, 7, Ascii.SI, Ascii.SO, 74, 43, 46, 62, 57, 74, Ascii.EM, Ascii.RS, Ascii.CAN, Ascii.SI, Ascii.VT, 7};
    }

    static {
        A04();
        A0E = new InterfaceC0660Gb() { // from class: com.facebook.ads.redexgen.X.jw
            @Override // com.facebook.ads.redexgen.X.InterfaceC0660Gb
            public final GX[] A5F() {
                return C1772jv.A07();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC0660Gb
            public final /* synthetic */ GX[] A5G(Uri uri, Map map) {
                return AbstractC0659Ga.A01(this, uri, map);
            }
        };
    }

    public C1772jv() {
        this(0);
    }

    public C1772jv(int i) {
        this.A07 = (i & 2) != 0 ? i | 1 : i;
        this.A0B = new C1771ju(true);
        this.A09 = new C4J(2048);
        this.A00 = -1;
        this.A01 = -1L;
        this.A0A = new C4J(10);
        this.A08 = new C4I(this.A0A.A0l());
    }

    public static int A00(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    private int A01(InterfaceC1850lN interfaceC1850lN) throws IOException {
        int i = 0;
        while (true) {
            interfaceC1850lN.AG9(this.A0A.A0l(), 0, 10);
            this.A0A.A0f(0);
            if (this.A0A.A0K() != 4801587) {
                break;
            }
            this.A0A.A0g(3);
            int length = this.A0A.A0H();
            int firstFramePosition = length + 10;
            i += firstFramePosition;
            interfaceC1850lN.A3z(length);
        }
        interfaceC1850lN.AI1();
        interfaceC1850lN.A3z(i);
        int firstFramePosition2 = (this.A01 > (-1L) ? 1 : (this.A01 == (-1L) ? 0 : -1));
        if (firstFramePosition2 == 0) {
            this.A01 = i;
        }
        return i;
    }

    private C1854lS A02(long j, boolean z) {
        return new C1854lS(j, this.A01, A00(this.A00, this.A0B.A0J()), this.A00, z);
    }

    @RequiresNonNull({"extractorOutput"})
    private void A05(long j, boolean z) {
        if (this.A05) {
            return;
        }
        boolean z2 = (this.A07 & 1) != 0 && this.A00 > 0;
        String[] strArr = A0D;
        if (strArr[2].charAt(14) != strArr[3].charAt(14)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0D;
        strArr2[0] = "wRCLGMQDqXZHrYOEljE7cvu367IJP6qz";
        strArr2[1] = "FofxBB8LpAk5nYyyotl0uMBanfu6Lq1A";
        if (z2 && this.A0B.A0J() == -9223372036854775807L && !z) {
            return;
        }
        if (!z2 || this.A0B.A0J() == -9223372036854775807L) {
            this.A03.AIN(new C1845lI(-9223372036854775807L));
        } else {
            this.A03.AIN(A02(j, (this.A07 & 2) != 0));
        }
        this.A05 = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0093, code lost:
        r10.A04 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a3, code lost:
        throw com.facebook.ads.redexgen.X.C03182i.A01(A03(0, 21, 88), null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A06(com.facebook.ads.redexgen.X.InterfaceC1850lN r11) throws java.io.IOException {
        /*
            r10 = this;
            boolean r0 = r10.A04
            if (r0 == 0) goto L5
            return
        L5:
            r7 = -1
            r10.A00 = r7
            r11.AI1()
            long r3 = r11.A8f()
            r1 = 0
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L18
            r10.A01(r11)
        L18:
            r6 = 0
            r3 = 0
        L1b:
            r5 = 1
            com.facebook.ads.redexgen.X.4J r0 = r10.A0A     // Catch: java.io.EOFException -> L7a
            byte[] r1 = r0.A0l()     // Catch: java.io.EOFException -> L7a
            r2 = 0
            r0 = 2
            boolean r0 = r11.AGA(r1, r2, r0, r5)     // Catch: java.io.EOFException -> L7a
            if (r0 == 0) goto L7a
            com.facebook.ads.redexgen.X.4J r0 = r10.A0A     // Catch: java.io.EOFException -> L7a
            r0.A0f(r2)     // Catch: java.io.EOFException -> L7a
            com.facebook.ads.redexgen.X.4J r0 = r10.A0A     // Catch: java.io.EOFException -> L7a
            int r0 = r0.A0M()     // Catch: java.io.EOFException -> L7a
            boolean r0 = com.facebook.ads.redexgen.X.C1771ju.A0F(r0)     // Catch: java.io.EOFException -> L7a
            if (r0 != 0) goto L3d
            r6 = 0
            goto L7a
        L3d:
            com.facebook.ads.redexgen.X.4J r0 = r10.A0A     // Catch: java.io.EOFException -> L7a
            byte[] r1 = r0.A0l()     // Catch: java.io.EOFException -> L7a
            r0 = 4
            boolean r0 = r11.AGA(r1, r2, r0, r5)     // Catch: java.io.EOFException -> L7a
            if (r0 != 0) goto L4b
            goto L7a
        L4b:
            com.facebook.ads.redexgen.X.4I r1 = r10.A08     // Catch: java.io.EOFException -> L7a
            r0 = 14
            r1.A08(r0)     // Catch: java.io.EOFException -> L7a
            com.facebook.ads.redexgen.X.4I r1 = r10.A08     // Catch: java.io.EOFException -> L7a
            r0 = 13
            int r8 = r1.A04(r0)     // Catch: java.io.EOFException -> L7a
            r9 = 6
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1772jv.A0D
            r0 = 7
            r1 = r1[r0]
            r0 = 7
            char r1 = r1.charAt(r0)
            r0 = 114(0x72, float:1.6E-43)
            if (r1 == r0) goto La4
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1772jv.A0D
            java.lang.String r1 = "EiGF"
            r0 = 4
            r2[r0] = r1
            if (r8 <= r9) goto L93
            long r0 = (long) r8
            long r3 = r3 + r0
            int r6 = r6 + 1
            r0 = 1000(0x3e8, float:1.401E-42)
            if (r6 != r0) goto L8a
        L7a:
            r11.AI1()
            if (r6 <= 0) goto L87
            long r0 = (long) r6
            long r3 = r3 / r0
            int r0 = (int) r3
            r10.A00 = r0
        L84:
            r10.A04 = r5
            return
        L87:
            r10.A00 = r7
            goto L84
        L8a:
            int r0 = r8 + (-6)
            boolean r0 = r11.A40(r0, r5)     // Catch: java.io.EOFException -> L7a
            if (r0 != 0) goto L1b
            goto L7a
        L93:
            r10.A04 = r5     // Catch: java.io.EOFException -> L7a
            r2 = 0
            r1 = 21
            r0 = 88
            java.lang.String r0 = A03(r2, r1, r0)     // Catch: java.io.EOFException -> L7a
            r1 = 0
            com.facebook.ads.redexgen.X.2i r0 = com.facebook.ads.redexgen.X.C03182i.A01(r0, r1)     // Catch: java.io.EOFException -> L7a
            throw r0     // Catch: java.io.EOFException -> L7a
        La4:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1772jv.A06(com.facebook.ads.redexgen.X.lN):void");
    }

    public static /* synthetic */ GX[] A07() {
        return new GX[]{new C1772jv()};
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AA4(GY gy) {
        this.A03 = gy;
        this.A0B.A5U(gy, new C0766Ke(0, 1));
        gy.A6G();
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final int AGb(InterfaceC1850lN interfaceC1850lN, C0678Gt c0678Gt) throws IOException {
        C3M.A02(this.A03);
        long A8G = interfaceC1850lN.A8G();
        if (((this.A07 & 2) == 0 && ((this.A07 & 1) == 0 || A8G == -1)) ? false : true) {
            A06(interfaceC1850lN);
        }
        int bytesRead = interfaceC1850lN.read(this.A09.A0l(), 0, 2048);
        boolean z = bytesRead == -1;
        A05(A8G, z);
        if (z) {
            return -1;
        }
        this.A09.A0f(0);
        this.A09.A0e(bytesRead);
        if (!this.A06) {
            this.A0B.AG6(this.A02, 4);
            this.A06 = true;
        }
        this.A0B.A52(this.A09);
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AGr() {
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AIM(long j, long j2) {
        this.A06 = false;
        this.A0B.AIL();
        this.A02 = j2;
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final boolean AJL(InterfaceC1850lN interfaceC1850lN) throws IOException {
        int headerPosition;
        int A01 = A01(interfaceC1850lN);
        int i = A01;
        int frameSize = 0;
        int syncBytes = 0;
        do {
            interfaceC1850lN.AG9(this.A0A.A0l(), 0, 2);
            this.A0A.A0f(0);
            int startPosition = this.A0A.A0M();
            if (!C1771ju.A0F(startPosition)) {
                syncBytes = 0;
                frameSize = 0;
                i++;
                interfaceC1850lN.AI1();
                interfaceC1850lN.A3z(i);
            } else {
                syncBytes++;
                String[] strArr = A0D;
                String str = strArr[2];
                String str2 = strArr[3];
                int headerPosition2 = str.charAt(14);
                int startPosition2 = str2.charAt(14);
                if (headerPosition2 != startPosition2) {
                    throw new RuntimeException();
                }
                A0D[7] = "vlF0iwwjiK26GT4HTqGcAOiXXpcsHbpg";
                if (syncBytes >= 4 && frameSize > 188) {
                    return true;
                }
                interfaceC1850lN.AG9(this.A0A.A0l(), 0, 4);
                this.A08.A08(14);
                C4I c4i = this.A08;
                int headerPosition3 = A0D[5].length();
                if (headerPosition3 == 4) {
                    throw new RuntimeException();
                }
                A0D[4] = "LrBCAcAc8FKB1NeW";
                int headerPosition4 = c4i.A04(13);
                if (headerPosition4 <= 6) {
                    syncBytes = 0;
                    frameSize = 0;
                    i++;
                    interfaceC1850lN.AI1();
                    interfaceC1850lN.A3z(i);
                } else {
                    int startPosition3 = headerPosition4 - 6;
                    interfaceC1850lN.A3z(startPosition3);
                    frameSize += headerPosition4;
                }
            }
            headerPosition = i - A01;
        } while (headerPosition < 8192);
        return false;
    }
}
