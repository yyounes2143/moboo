package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.Gd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC0662Gd {
    public static String[] A00 = {"o6dy0jxWVFoVpdfIHLQ5kJFOMlq1Sn1Q", "79oj", "9g10QGOLUMPWkkbPiEKlPZ6GdmncXBXa", "6fmIgIVXmOYY3cUB7ZYAXnWSgE20TitB", "v6a7Yb3DANDL70kkwlzLnkI1heNzynkm", "eDdjZQkAYxVEYJ3d9Q78IvgSo191T7ve", "sHmXnPOOobIrXpWrquJBTDw1maWJKk3u", "k0vF7vRBeJQaOBXZ"};

    public static int A00(C4J c4j, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return c4j.A0I() + 1;
            case 7:
                int A0M = c4j.A0M();
                String[] strArr = A00;
                if (strArr[6].charAt(23) != strArr[4].charAt(23)) {
                    throw new RuntimeException();
                }
                A00[7] = "hcXiJWofr5Txci555yuma5X";
                return A0M + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static long A01(InterfaceC1850lN interfaceC1850lN, C0666Gh c0666Gh) throws IOException {
        interfaceC1850lN.AI1();
        boolean z = true;
        interfaceC1850lN.A3z(1);
        byte[] bArr = new byte[1];
        interfaceC1850lN.AG9(bArr, 0, 1);
        if ((bArr[0] & 1) != 1) {
            z = false;
        }
        interfaceC1850lN.A3z(2);
        int i = z ? 7 : 6;
        C4J c4j = new C4J(i);
        c4j.A0e(GZ.A00(interfaceC1850lN, c4j.A0l(), 0, i));
        interfaceC1850lN.AI1();
        C0661Gc c0661Gc = new C0661Gc();
        boolean isBlockSizeVariable = A08(c4j, c0666Gh, z, c0661Gc);
        if (isBlockSizeVariable) {
            return c0661Gc.A00;
        }
        throw C03182i.A01(null, null);
    }

    public static boolean A02(int i, C0666Gh c0666Gh) {
        if (i == 0) {
            return true;
        }
        int i2 = c0666Gh.A01;
        if (A00[7].length() != 8) {
            A00[0] = "dnyA5Em4Vekc9hKZNMMqKWCBR5ivXppC";
            return i == i2;
        }
        throw new RuntimeException();
    }

    public static boolean A03(int i, C0666Gh c0666Gh) {
        if (i <= 7) {
            return i == c0666Gh.A02 - 1;
        } else if (A00[3].charAt(10) != 'Y') {
            throw new RuntimeException();
        } else {
            A00[3] = "e0AkGTV6jhYRPjlSs9AVJSXBXenCNngQ";
            return i <= 10 && c0666Gh.A02 == 2;
        }
    }

    public static boolean A04(C4J c4j, int i) {
        int A0I = c4j.A0I();
        int crc = c4j.A09();
        return A0I == AbstractC03624a.A0J(c4j.A0l(), i, crc + (-1), 0);
    }

    public static boolean A05(C4J c4j, C0666Gh c0666Gh, int i) {
        int A002 = A00(c4j, i);
        if (A002 != -1) {
            int blockSizeSamples = c0666Gh.A03;
            if (A002 <= blockSizeSamples) {
                return true;
            }
        }
        return false;
    }

    public static boolean A06(C4J c4j, C0666Gh c0666Gh, int i) {
        int sampleRate = c0666Gh.A07;
        if (i == 0) {
            return true;
        }
        if (i <= 11) {
            return i == c0666Gh.A08;
        } else if (i == 12) {
            return c4j.A0I() * 1000 == sampleRate;
        } else if (i <= 14) {
            int expectedSampleRate = c4j.A0M();
            if (i == 14) {
                expectedSampleRate *= 10;
            }
            return expectedSampleRate == sampleRate;
        } else {
            return false;
        }
    }

    public static boolean A07(C4J c4j, C0666Gh c0666Gh, int i, C0661Gc c0661Gc) {
        int A09 = c4j.A09();
        long A0Q = c4j.A0Q();
        long frameHeaderBytes = A0Q >>> 16;
        if (frameHeaderBytes != i) {
            return false;
        }
        int blockSizeKey = (int) ((A0Q >> 8) & 15);
        long frameHeaderBytes2 = A0Q >> 1;
        int frameStartPosition = (int) (frameHeaderBytes2 & 7);
        return A03((int) ((A0Q >> 4) & 15), c0666Gh) && A02(frameStartPosition, c0666Gh) && !(((A0Q & 1) > 1L ? 1 : ((A0Q & 1) == 1L ? 0 : -1)) == 0) && A08(c4j, c0666Gh, (((A0Q >>> 16) & 1) > 1L ? 1 : (((A0Q >>> 16) & 1) == 1L ? 0 : -1)) == 0, c0661Gc) && A05(c4j, c0666Gh, (int) ((A0Q >> 12) & 15)) && A06(c4j, c0666Gh, blockSizeKey) && A04(c4j, A09);
    }

    public static boolean A08(C4J c4j, C0666Gh c0666Gh, boolean z, C0661Gc c0661Gc) {
        long utf8Value;
        try {
            long A0S = c4j.A0S();
            if (z) {
                utf8Value = A0S;
            } else {
                long utf8Value2 = c0666Gh.A03;
                utf8Value = utf8Value2 * A0S;
            }
            c0661Gc.A00 = utf8Value;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean A09(InterfaceC1850lN interfaceC1850lN, C0666Gh c0666Gh, int i, C0661Gc c0661Gc) throws IOException {
        long A8a = interfaceC1850lN.A8a();
        byte[] bArr = new byte[2];
        interfaceC1850lN.AG9(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
            interfaceC1850lN.AI1();
            interfaceC1850lN.A3z((int) (A8a - interfaceC1850lN.A8f()));
            return false;
        }
        C4J c4j = new C4J(16);
        System.arraycopy(bArr, 0, c4j.A0l(), 0, 2);
        byte[] frameStartBytes = c4j.A0l();
        c4j.A0e(GZ.A00(interfaceC1850lN, frameStartBytes, 2, 14));
        interfaceC1850lN.AI1();
        interfaceC1850lN.A3z((int) (A8a - interfaceC1850lN.A8f()));
        return A07(c4j, c0666Gh, i, c0661Gc);
    }
}
