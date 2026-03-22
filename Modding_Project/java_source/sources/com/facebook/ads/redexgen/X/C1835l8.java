package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.facebook.ads.redexgen.X.l8  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1835l8 implements GX {
    public static String[] A0G = {"imixVRybNrgJBpwbrV4yrZtrfnRN6CnJ", "WtIdTgOpLr9NKs5TxCGGWraEed8Ae14z", "nvE", "WSn", "ErTHk7eYnTgSookYOy4dYMthSURbPHEq", "4jyr3GyUtTi8KljoItgNNDucP2AqNlsy", "x6x5cMRZdfdA3RZcYJIixT0Q9ac0Pw6j", "1jBqwsY8y2xmCvig0OcgZP2KEis0q"};
    public static final InterfaceC0660Gb A0H = new InterfaceC0660Gb() { // from class: com.facebook.ads.redexgen.X.l9
        @Override // com.facebook.ads.redexgen.X.InterfaceC0660Gb
        public final GX[] A5F() {
            return C1835l8.A07();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC0660Gb
        public final /* synthetic */ GX[] A5G(Uri uri, Map map) {
            return AbstractC0659Ga.A01(this, uri, map);
        }
    };
    public int A00;
    public int A02;
    public int A03;
    public long A04;
    public long A05;
    public GY A06;
    public C1837lA A07;
    public C1832l5 A08;
    public boolean A09;
    public boolean A0A;
    public final C4J A0C = new C4J(4);
    public final C4J A0B = new C4J(9);
    public final C4J A0E = new C4J(11);
    public final C4J A0D = new C4J();
    public final C1834l7 A0F = new C1834l7();
    public int A01 = 1;

    private long A00() {
        if (this.A09) {
            long j = this.A04;
            String[] strArr = A0G;
            if (strArr[5].charAt(7) != strArr[0].charAt(7)) {
                String[] strArr2 = A0G;
                strArr2[2] = "BRg";
                strArr2[3] = "MUb";
                return j + this.A05;
            }
            throw new RuntimeException();
        } else if (this.A0F.A0D() == -9223372036854775807L) {
            return 0L;
        } else {
            return this.A05;
        }
    }

    private C4J A01(InterfaceC1850lN interfaceC1850lN) throws IOException {
        if (this.A02 > this.A0D.A08()) {
            this.A0D.A0j(new byte[Math.max(this.A0D.A08() * 2, this.A02)], 0);
        } else {
            this.A0D.A0f(0);
        }
        this.A0D.A0e(this.A02);
        interfaceC1850lN.readFully(this.A0D.A0l(), 0, this.A02);
        return this.A0D;
    }

    @RequiresNonNull({"extractorOutput"})
    private void A02() {
        if (!this.A0A) {
            this.A06.AIN(new C1845lI(-9223372036854775807L));
            this.A0A = true;
        }
    }

    private void A03(InterfaceC1850lN interfaceC1850lN) throws IOException {
        interfaceC1850lN.AJJ(this.A00);
        this.A00 = 0;
        this.A01 = 3;
    }

    @RequiresNonNull({"extractorOutput"})
    private boolean A04(InterfaceC1850lN interfaceC1850lN) throws IOException {
        if (interfaceC1850lN.AGh(this.A0B.A0l(), 0, 9, true)) {
            this.A0B.A0f(0);
            C4J c4j = this.A0B;
            String[] strArr = A0G;
            if (strArr[5].charAt(7) != strArr[0].charAt(7)) {
                String[] strArr2 = A0G;
                strArr2[5] = "nuvUOUbepbklYX7VO8aNhI2QGU1lTbhE";
                strArr2[0] = "EarG3ISTV8IaVYTIGtUgI942SJk0uODJ";
                c4j.A0g(4);
                int A0I = this.A0B.A0I();
                int flags = A0I & 4;
                boolean z = flags != 0;
                int i = A0I & 1;
                String[] strArr3 = A0G;
                String str = strArr3[2];
                String str2 = strArr3[3];
                int length = str.length();
                int flags2 = str2.length();
                if (length != flags2) {
                    throw new RuntimeException();
                }
                A0G[6] = "imt3Psvl5i5WkMBxXJw1tYAVhho8FT7n";
                boolean hasAudio = i != 0;
                if (z && this.A07 == null) {
                    this.A07 = new C1837lA(this.A06.AJh(8, 1));
                }
                if (hasAudio && this.A08 == null) {
                    this.A08 = new C1832l5(this.A06.AJh(9, 2));
                }
                this.A06.A6G();
                int flags3 = this.A0B.A0C();
                this.A00 = (flags3 - 9) + 4;
                this.A01 = 2;
                return true;
            }
            throw new RuntimeException();
        }
        return false;
    }

    @RequiresNonNull({"extractorOutput"})
    private boolean A05(InterfaceC1850lN interfaceC1850lN) throws IOException {
        long j;
        boolean z = true;
        boolean z2 = false;
        long A00 = A00();
        if (this.A03 == 8 && this.A07 != null) {
            A02();
            z2 = this.A07.A00(A01(interfaceC1850lN), A00);
        } else if (this.A03 == 9 && this.A08 != null) {
            A02();
            z2 = this.A08.A00(A01(interfaceC1850lN), A00);
        } else {
            if (this.A03 == 18) {
                boolean wasConsumed = this.A0A;
                if (!wasConsumed) {
                    z2 = this.A0F.A00(A01(interfaceC1850lN), A00);
                    long timestampUs = this.A0F.A0D();
                    if (timestampUs != -9223372036854775807L) {
                        this.A06.AIN(new C1846lJ(this.A0F.A0E(), this.A0F.A0F(), timestampUs));
                        this.A0A = true;
                    }
                }
            }
            interfaceC1850lN.AJJ(this.A02);
            z = false;
        }
        boolean wasConsumed2 = this.A09;
        if (!wasConsumed2 && z2) {
            this.A09 = true;
            if (this.A0F.A0D() == -9223372036854775807L) {
                long j2 = this.A05;
                String[] strArr = A0G;
                if (strArr[5].charAt(7) == strArr[0].charAt(7)) {
                    throw new RuntimeException();
                }
                A0G[4] = "qsMwkk9xIwtWzz8Y8bf9D9RZC3dmDCSF";
                j = -j2;
            } else {
                j = 0;
            }
            this.A04 = j;
        }
        this.A00 = 4;
        this.A01 = 2;
        return z;
    }

    private boolean A06(InterfaceC1850lN interfaceC1850lN) throws IOException {
        if (interfaceC1850lN.AGh(this.A0E.A0l(), 0, 11, true)) {
            this.A0E.A0f(0);
            this.A03 = this.A0E.A0I();
            this.A02 = this.A0E.A0K();
            this.A05 = this.A0E.A0K();
            long A0I = this.A0E.A0I() << 24;
            if (A0G[4].charAt(4) != 'k') {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[5] = "4ZAub2Q05bEVVYNgLvK28njcI37CKeIt";
            strArr[0] = "aUQSwXMZXC0bGVhjCWvBp2fyGyckkl15";
            this.A05 = (A0I | this.A05) * 1000;
            this.A0E.A0g(3);
            this.A01 = 4;
            return true;
        }
        return false;
    }

    public static /* synthetic */ GX[] A07() {
        return new GX[]{new C1835l8()};
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AA4(GY gy) {
        this.A06 = gy;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
        throw new java.lang.RuntimeException();
     */
    @Override // com.facebook.ads.redexgen.X.GX
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int AGb(com.facebook.ads.redexgen.X.InterfaceC1850lN r6, com.facebook.ads.redexgen.X.C0678Gt r7) throws java.io.IOException {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.GY r0 = r5.A06
            com.facebook.ads.redexgen.X.C3M.A02(r0)
        L5:
            int r0 = r5.A01
            r4 = -1
            switch(r0) {
                case 1: goto L72;
                case 2: goto L6e;
                case 3: goto L48;
                case 4: goto L11;
                default: goto Lb;
            }
        Lb:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            throw r0
        L11:
            boolean r3 = r5.A05(r6)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1835l8.A0G
            r0 = 6
            r1 = r1[r0]
            r0 = 17
            char r1 = r1.charAt(r0)
            r0 = 74
            if (r1 == r0) goto L2a
        L24:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L2a:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1835l8.A0G
            java.lang.String r1 = "hEtErmVw2pGEM2VKW7DPZ3jvJ8JWR8Qp"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "qL5KjU5Lqv7wAr3B2PcEEy6NtzLZKXIh"
            r0 = 0
            r2[r0] = r1
            if (r3 == 0) goto L5
            r3 = 0
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1835l8.A0G
            r0 = 4
            r1 = r1[r0]
            r0 = 4
            char r1 = r1.charAt(r0)
            r0 = 107(0x6b, float:1.5E-43)
            if (r1 == r0) goto L79
            goto L24
        L48:
            boolean r3 = r5.A06(r6)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1835l8.A0G
            r0 = 2
            r1 = r2[r0]
            r0 = 3
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L64
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L64:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1835l8.A0G
            java.lang.String r1 = "tWexpPkMi4voS1yCEJ5KNGfvnIQwX6NI"
            r0 = 6
            r2[r0] = r1
            if (r3 != 0) goto L5
            return r4
        L6e:
            r5.A03(r6)
            goto L5
        L72:
            boolean r0 = r5.A04(r6)
            if (r0 != 0) goto L5
            return r4
        L79:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1835l8.A0G
            java.lang.String r1 = "EltTpHvyDDt"
            r0 = 7
            r2[r0] = r1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1835l8.AGb(com.facebook.ads.redexgen.X.lN, com.facebook.ads.redexgen.X.Gt):int");
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AGr() {
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final void AIM(long j, long j2) {
        if (j == 0) {
            this.A01 = 1;
            this.A09 = false;
        } else {
            this.A01 = 3;
        }
        this.A00 = 0;
        if (A0G[4].charAt(4) != 'k') {
            throw new RuntimeException();
        }
        A0G[1] = "RsgGxkOp5mo19RRr3aJo3NcocokVUXQ7";
    }

    @Override // com.facebook.ads.redexgen.X.GX
    public final boolean AJL(InterfaceC1850lN interfaceC1850lN) throws IOException {
        interfaceC1850lN.AG9(this.A0C.A0l(), 0, 3);
        this.A0C.A0f(0);
        if (this.A0C.A0K() != 4607062) {
            return false;
        }
        interfaceC1850lN.AG9(this.A0C.A0l(), 0, 2);
        this.A0C.A0f(0);
        if ((this.A0C.A0M() & 250) != 0) {
            return false;
        }
        interfaceC1850lN.AG9(this.A0C.A0l(), 0, 4);
        this.A0C.A0f(0);
        int dataOffset = this.A0C.A0C();
        interfaceC1850lN.AI1();
        interfaceC1850lN.A3z(dataOffset);
        interfaceC1850lN.AG9(this.A0C.A0l(), 0, 4);
        this.A0C.A0f(0);
        int dataOffset2 = this.A0C.A0C();
        return dataOffset2 == 0;
    }
}
