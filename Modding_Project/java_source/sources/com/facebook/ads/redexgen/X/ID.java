package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* loaded from: assets/audience_network.dex */
public final class ID {
    public static String[] A02 = {"FbN3icTzKhcmmOzEdUfRhsUcZXOxDMx7", "gRO2jrgUj", "b8s", "WfQv3ylCa", "vfaK2gbRuWFTNhe4O3MK62WfTyU3BnZK", "pVe6dBWT2JPKzaWtvTS73YU0fEYT7kcM", "E55gBTZIZGS8er9hAJqyKM4XsX", "9GOGOeqncrOiIcn9"};
    public int A00;
    public final C4J A01 = new C4J(8);

    /* JADX WARN: Incorrect condition in loop: B:8:0x001f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long A00(com.facebook.ads.redexgen.X.InterfaceC1850lN r6) throws java.io.IOException {
        /*
            r5 = this;
            com.facebook.ads.redexgen.X.4J r0 = r5.A01
            byte[] r0 = r0.A0l()
            r1 = 0
            r2 = 1
            r6.AG9(r0, r1, r2)
            com.facebook.ads.redexgen.X.4J r0 = r5.A01
            byte[] r0 = r0.A0l()
            r0 = r0[r1]
            r4 = r0 & 255(0xff, float:3.57E-43)
            if (r4 != 0) goto L1a
            r0 = -9223372036854775808
            return r0
        L1a:
            r1 = 128(0x80, float:1.794E-43)
            r3 = 0
        L1d:
            r0 = r4 & r1
            if (r0 != 0) goto L26
            int r1 = r1 >> 1
            int r3 = r3 + 1
            goto L1d
        L26:
            int r0 = ~r1
            r4 = r4 & r0
            com.facebook.ads.redexgen.X.4J r0 = r5.A01
            byte[] r0 = r0.A0l()
            r6.AG9(r0, r2, r3)
            r2 = 0
        L32:
            if (r2 >= r3) goto L46
            int r4 = r4 << 8
            com.facebook.ads.redexgen.X.4J r0 = r5.A01
            byte[] r1 = r0.A0l()
            int r0 = r2 + 1
            r0 = r1[r0]
            r0 = r0 & 255(0xff, float:3.57E-43)
            int r4 = r4 + r0
            int r2 = r2 + 1
            goto L32
        L46:
            int r1 = r5.A00
            int r0 = r3 + 1
            int r1 = r1 + r0
            r5.A00 = r1
            long r0 = (long) r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ID.A00(com.facebook.ads.redexgen.X.lN):long");
    }

    public final boolean A01(InterfaceC1850lN interfaceC1850lN) throws IOException {
        long A8G = interfaceC1850lN.A8G();
        long j = 1024;
        if (A8G != -1 && A8G <= 1024) {
            j = A8G;
        }
        int i = (int) j;
        boolean z = false;
        interfaceC1850lN.AG9(this.A01.A0l(), 0, 4);
        long A0Q = this.A01.A0Q();
        this.A00 = 4;
        while (A0Q != 440786851) {
            int i2 = this.A00 + 1;
            this.A00 = i2;
            if (i2 == i) {
                return false;
            }
            interfaceC1850lN.AG9(this.A01.A0l(), 0, 1);
            long j2 = A0Q << 8;
            if (A02[5].charAt(9) == 'Z') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[7] = "keWgERcis7TdroPm";
            strArr[2] = "OXY";
            A0Q = (j2 & (-256)) | (this.A01.A0l()[0] & 255);
        }
        long A00 = A00(interfaceC1850lN);
        int i3 = this.A00;
        String[] strArr2 = A02;
        if (strArr2[7].length() != strArr2[2].length()) {
            String[] strArr3 = A02;
            strArr3[0] = "8USntBNRnGq1k7YndUZ918x7mjNkxlAo";
            strArr3[4] = "NlU12704XsvvTftMDquGsme1zZ9M6Gib";
            long j3 = i3;
            if (A00 != Long.MIN_VALUE) {
                if (A8G != -1 && j3 + A00 >= A8G) {
                    return false;
                }
                while (this.A00 < j3 + A00) {
                    if (A00(interfaceC1850lN) == Long.MIN_VALUE) {
                        return z;
                    }
                    long A002 = A00(interfaceC1850lN);
                    String[] strArr4 = A02;
                    if (strArr4[0].charAt(12) != strArr4[4].charAt(12)) {
                        String[] strArr5 = A02;
                        strArr5[0] = "WOjoKoWSnEX2mR88EDllzX7MR8FXWjEu";
                        strArr5[4] = "zFQ8S5RVgPrJFIVyTDDE2qr0iqJgcsXB";
                        if (A002 < 0) {
                            return false;
                        }
                    } else {
                        A02[6] = "uJmDg5c2xISP09FpPwUdNktwoy";
                        if (A002 < 0) {
                            return false;
                        }
                    }
                    if (A002 > 2147483647L) {
                        return false;
                    }
                    if (A002 != 0) {
                        int i4 = (int) A002;
                        interfaceC1850lN.A3z(i4);
                        this.A00 += i4;
                    }
                    z = false;
                }
                return ((long) this.A00) == j3 + A00;
            }
            return false;
        }
        throw new RuntimeException();
    }
}
