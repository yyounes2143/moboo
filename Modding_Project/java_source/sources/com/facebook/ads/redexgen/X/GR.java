package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public abstract class GR {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 121);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-65, -31, -35, -47, -16, -27, -24, -36, -12, -14, -7, -7, -14, -9, -16, -87, -5, -18, -10, -22, -14, -9, -19, -18, -5, -87, -8, -17, -87, -10, -22, -11, -17, -8, -5, -10, -18, -19, -87, -36, -50, -46, -87, -41, -54, -43, -87, -2, -9, -14, -3, -73};
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A00(com.facebook.ads.redexgen.X.C4J r3) {
        /*
            r2 = 0
        L1:
            int r0 = r3.A07()
            if (r0 != 0) goto L9
            r0 = -1
            return r0
        L9:
            int r1 = r3.A0I()
            int r2 = r2 + r1
            r0 = 255(0xff, float:3.57E-43)
            if (r1 == r0) goto L1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.GR.A00(com.facebook.ads.redexgen.X.4J):int");
    }

    public static void A03(long j, C4J c4j, H1[] h1Arr) {
        while (true) {
            if (c4j.A07() > 1) {
                int A002 = A00(c4j);
                int A003 = A00(c4j);
                int A09 = c4j.A09() + A003;
                if (A003 != -1) {
                    int payloadType = c4j.A07();
                    if (A003 <= payloadType) {
                        if (A002 == 4 && A003 >= 8) {
                            int userIdentifier = c4j.A0I();
                            int providerCode = c4j.A0M();
                            int countryCode = 0;
                            if (providerCode == 49) {
                                countryCode = c4j.A0C();
                            }
                            int A0I = c4j.A0I();
                            if (providerCode == 47) {
                                c4j.A0g(1);
                            }
                            int i = (userIdentifier == 181 && (providerCode == 49 || providerCode == 47) && A0I == 3) ? 1 : 0;
                            if (providerCode == 49) {
                                int userDataTypeCode = countryCode != 1195456820 ? 0 : 1;
                                i &= userDataTypeCode;
                            }
                            if (i != 0) {
                                A04(j, c4j, h1Arr);
                            }
                        }
                        c4j.A0f(A09);
                    }
                }
                AnonymousClass44.A07(A01(0, 7, 3), A01(7, 45, 16));
                A09 = c4j.A0A();
                c4j.A0f(A09);
            } else {
                return;
            }
        }
    }

    public static void A04(long j, C4J c4j, H1[] h1Arr) {
        int firstByte = c4j.A0I();
        if (!((firstByte & 64) != 0)) {
            return;
        }
        c4j.A0g(1);
        int i = (firstByte & 31) * 3;
        int A09 = c4j.A09();
        for (H1 h1 : h1Arr) {
            c4j.A0f(A09);
            h1.AI7(c4j, i);
            if (j != -9223372036854775807L) {
                h1.AIA(j, 1, i, 0, null);
            }
        }
    }
}
