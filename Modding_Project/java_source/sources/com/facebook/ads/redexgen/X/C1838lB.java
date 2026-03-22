package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.ads.androidx.media3.common.Metadata;
import java.io.IOException;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.lB  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1838lB implements GX {
    public static String[] A0E = {"CA5tgyD1ft6jPQScHcEKxijdDn8CpaAj", "rrvFpoycxrr9C", "qEVAWkTuIpwlYdd7u09", "zGu", "r98", "bvJEUCblPMa4rVVBIUxYNVrIzXUNKtA9", "0YPJWJVAuNzanCV2KA", "Ww61LKXhC9Y0aL9N3LYwjUph3RiaOuui"};
    public static final InterfaceC0660Gb A0F = new InterfaceC0660Gb() { // from class: com.facebook.ads.redexgen.X.lC
        @Override // com.facebook.ads.redexgen.X.InterfaceC0660Gb
        public final GX[] A5F() {
            return C1838lB.A09();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC0660Gb
        public final /* synthetic */ GX[] A5G(Uri uri, Map map) {
            return AbstractC0659Ga.A01(this, uri, map);
        }
    };
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public Metadata A05;
    public GY A06;
    public C0666Gh A07;
    public H1 A08;
    public C1840lD A09;
    public final C4J A0A;
    public final C0661Gc A0B;
    public final boolean A0C;
    public final byte[] A0D;

    public C1838lB() {
        this(0);
    }

    public C1838lB(int i) {
        this.A0D = new byte[42];
        this.A0A = new C4J(new byte[32768], 0);
        this.A0C = (i & 1) != 0;
        this.A0B = new C0661Gc();
        this.A03 = 0;
    }

    private int A00(InterfaceC1850lN interfaceC1850lN, C0678Gt c0678Gt) throws IOException {
        C3M.A01(this.A08);
        C3M.A01(this.A07);
        if (this.A09 != null && this.A09.A09()) {
            return this.A09.A06(interfaceC1850lN, c0678Gt);
        }
        long j = this.A04;
        if (A0E[2].length() == 19) {
            A0E[2] = "5vsaEOzV8f26KwvJg69";
            if (j == -1) {
                this.A04 = AbstractC0662Gd.A01(interfaceC1850lN, this.A07);
                return 0;
            }
            int A0A = this.A0A.A0A();
            String[] strArr = A0E;
            if (strArr[6].length() != strArr[1].length()) {
                String[] strArr2 = A0E;
                strArr2[6] = "dF6ALNUNBXQAeyaZgj";
                strArr2[1] = "WrJkmBjBZcK3S";
                boolean z = false;
                if (A0A < 32768) {
                    int currentLimit = 32768 - A0A;
                    int read = interfaceC1850lN.read(this.A0A.A0l(), A0A, currentLimit);
                    z = read == -1;
                    if (!z) {
                        this.A0A.A0e(A0A + read);
                    } else {
                        int currentLimit2 = this.A0A.A07();
                        if (currentLimit2 == 0) {
                            A03();
                            return -1;
                        }
                    }
                }
                int A09 = this.A0A.A09();
                int i = this.A00;
                int currentLimit3 = this.A02;
                if (i < currentLimit3) {
                    C4J c4j = this.A0A;
                    int i2 = this.A02;
                    int currentLimit4 = this.A00;
                    int i3 = i2 - currentLimit4;
                    int currentLimit5 = this.A0A.A07();
                    c4j.A0g(Math.min(i3, currentLimit5));
                }
                long A01 = A01(this.A0A, z);
                int A092 = this.A0A.A09() - A09;
                this.A0A.A0f(A09);
                this.A08.AI7(this.A0A, A092);
                int currentLimit6 = this.A00;
                this.A00 = currentLimit6 + A092;
                int currentLimit7 = (A01 > (-1L) ? 1 : (A01 == (-1L) ? 0 : -1));
                if (currentLimit7 != 0) {
                    A03();
                    String[] strArr3 = A0E;
                    String str = strArr3[6];
                    String str2 = strArr3[1];
                    int length = str.length();
                    int currentLimit8 = str2.length();
                    if (length != currentLimit8) {
                        String[] strArr4 = A0E;
                        strArr4[3] = "m1G";
                        strArr4[4] = "pgV";
                        this.A00 = 0;
                        this.A04 = A01;
                    }
                }
                if (this.A0A.A07() < 16) {
                    int A07 = this.A0A.A07();
                    System.arraycopy(this.A0A.A0l(), this.A0A.A09(), this.A0A.A0l(), 0, A07);
                    this.A0A.A0f(0);
                    this.A0A.A0e(A07);
                }
                return 0;
            }
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Incorrect condition in loop: B:12:0x0034 */
    /* JADX WARN: Incorrect condition in loop: B:4:0x000f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long A01(com.facebook.ads.redexgen.X.C4J r6, boolean r7) {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.Gh r0 = r5.A07
            com.facebook.ads.redexgen.X.C3M.A01(r0)
            int r3 = r6.A09()
        L9:
            int r0 = r6.A0A()
            int r0 = r0 + (-16)
            if (r3 > r0) goto L2b
            r6.A0f(r3)
            com.facebook.ads.redexgen.X.Gh r2 = r5.A07
            int r1 = r5.A01
            com.facebook.ads.redexgen.X.Gc r0 = r5.A0B
            boolean r0 = com.facebook.ads.redexgen.X.AbstractC0662Gd.A07(r6, r2, r1, r0)
            if (r0 == 0) goto L28
            r6.A0f(r3)
            com.facebook.ads.redexgen.X.Gc r0 = r5.A0B
            long r0 = r0.A00
            return r0
        L28:
            int r3 = r3 + 1
            goto L9
        L2b:
            if (r7 == 0) goto L65
        L2d:
            int r1 = r6.A0A()
            int r0 = r5.A02
            int r1 = r1 - r0
            if (r3 > r1) goto L5d
            r6.A0f(r3)
            com.facebook.ads.redexgen.X.Gh r2 = r5.A07     // Catch: java.lang.IndexOutOfBoundsException -> L44
            int r1 = r5.A01     // Catch: java.lang.IndexOutOfBoundsException -> L44
            com.facebook.ads.redexgen.X.Gc r0 = r5.A0B     // Catch: java.lang.IndexOutOfBoundsException -> L44
            boolean r2 = com.facebook.ads.redexgen.X.AbstractC0662Gd.A07(r6, r2, r1, r0)     // Catch: java.lang.IndexOutOfBoundsException -> L44
            goto L45
        L44:
            r2 = 0
        L45:
            int r1 = r6.A09()
            int r0 = r6.A0A()
            if (r1 <= r0) goto L50
            r2 = 0
        L50:
            if (r2 == 0) goto L5a
            r6.A0f(r3)
            com.facebook.ads.redexgen.X.Gc r0 = r5.A0B
            long r0 = r0.A00
            return r0
        L5a:
            int r3 = r3 + 1
            goto L2d
        L5d:
            int r0 = r6.A0A()
            r6.A0f(r0)
            goto L68
        L65:
            r6.A0f(r3)
        L68:
            r3 = -1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1838lB.A0E
            r0 = 3
            r1 = r2[r0]
            r0 = 4
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L82
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L82:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1838lB.A0E
            java.lang.String r1 = "ocsB3wUrjHvCq2LiV7qRqPCVLxbY4c1N"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "pwt2z55mSaXVkRisABTZleFgLF4gxvRK"
            r0 = 5
            r2[r0] = r1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1838lB.A01(com.facebook.ads.redexgen.X.4J, boolean):long");
    }

    private InterfaceC0681Gw A02(long j, long j2) {
        C3M.A01(this.A07);
        if (this.A07.A0A != null) {
            return new C1847lK(this.A07, j);
        }
        if (j2 != -1 && this.A07.A09 > 0) {
            this.A09 = new C1840lD(this.A07, this.A01, j, j2);
            return this.A09.A07();
        }
        return new C1845lI(this.A07.A06());
    }

    private void A03() {
        ((H1) AbstractC03624a.A0f(this.A08)).AIA((this.A04 * 1000000) / ((C0666Gh) AbstractC03624a.A0f(this.A07)).A07, 1, this.A00, 0, null);
    }

    private void A04(InterfaceC1850lN interfaceC1850lN) throws IOException {
        this.A01 = AbstractC0664Gf.A00(interfaceC1850lN);
        ((GY) AbstractC03624a.A0f(this.A06)).AIN(A02(interfaceC1850lN.A8f(), interfaceC1850lN.A8G()));
        this.A03 = 5;
    }

    private void A05(InterfaceC1850lN interfaceC1850lN) throws IOException {
        interfaceC1850lN.AG9(this.A0D, 0, this.A0D.length);
        interfaceC1850lN.AI1();
        this.A03 = 2;
    }

    private void A06(InterfaceC1850lN interfaceC1850lN) throws IOException {
        this.A05 = AbstractC0664Gf.A02(interfaceC1850lN, !this.A0C);
        this.A03 = 1;
    }

    private void A07(InterfaceC1850lN interfaceC1850lN) throws IOException {
        boolean z = false;
        C0663Ge metadataHolder = new C0663Ge(this.A07);
        while (!z) {
            z = AbstractC0664Gf.A0B(interfaceC1850lN, metadataHolder);
            this.A07 = (C0666Gh) AbstractC03624a.A0f(metadataHolder.A00);
        }
        C3M.A01(this.A07);
        this.A02 = Math.max(this.A07.A06, 6);
        ((H1) AbstractC03624a.A0f(this.A08)).A6W(this.A07.A08(this.A0D, this.A05));
        this.A03 = 4;
    }

    private void A08(InterfaceC1850lN interfaceC1850lN) throws IOException {
        AbstractC0664Gf.A09(interfaceC1850lN);
        this.A03 = 3;
    }

    public static /* synthetic */ GX[] A09() {
        return new GX[]{new C1838lB()};
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AA4(GY gy) {
        this.A06 = gy;
        this.A08 = gy.AJh(0, 1);
        gy.A6G();
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final int AGb(InterfaceC1850lN interfaceC1850lN, C0678Gt c0678Gt) throws IOException {
        switch (this.A03) {
            case 0:
                A06(interfaceC1850lN);
                return 0;
            case 1:
                A05(interfaceC1850lN);
                return 0;
            case 2:
                A08(interfaceC1850lN);
                return 0;
            case 3:
                A07(interfaceC1850lN);
                return 0;
            case 4:
                A04(interfaceC1850lN);
                return 0;
            case 5:
                return A00(interfaceC1850lN, c0678Gt);
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AGr() {
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AIM(long j, long j2) {
        if (j == 0) {
            this.A03 = 0;
        } else {
            C1840lD c1840lD = this.A09;
            if (A0E[2].length() != 19) {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[3] = "FHi";
            strArr[4] = "3pT";
            if (c1840lD != null) {
                this.A09.A08(j2);
            }
        }
        this.A04 = j2 != 0 ? -1L : 0L;
        this.A00 = 0;
        this.A0A.A0d(0);
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final boolean AJL(InterfaceC1850lN interfaceC1850lN) throws IOException {
        AbstractC0664Gf.A01(interfaceC1850lN, false);
        return AbstractC0664Gf.A0A(interfaceC1850lN);
    }
}
