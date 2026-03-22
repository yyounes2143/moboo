package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.flac.PictureFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.vorbis.VorbisComment;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.io.encoding.Base64;
/* loaded from: assets/audience_network.dex */
public abstract class H8 {
    public static byte[] A00;
    public static String[] A01 = {"AQUfun8uWtpAPz6T54JXA8DVdz19i7cg", "A9xQ060X7I53O0IPhfx7pChTdPn89BVs", "HA6OUY8aFXslM4giueBriDg2S", "9RrkKnX7ioGd8UIKmUAG7ayOJ1mW6fCZ", "mjtW7HF4JFIVQBQAuWhSkP1cuiqQ", "mMlJtFouJ3Md3SAWQWV0HJ1iYftjtiDS", "", "7UUPgjEseHhf3IW21ENlLsXr9tr9mert"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static H7 A06(C4J c4j) throws C03182i {
        A0C(1, c4j, false);
        int A0F = c4j.A0F();
        int A0I = c4j.A0I();
        int A0F2 = c4j.A0F();
        int A0E = c4j.A0E();
        if (A0E <= 0) {
            A0E = -1;
        }
        int A0E2 = c4j.A0E();
        if (A0E2 <= 0) {
            A0E2 = -1;
        }
        int A0E3 = c4j.A0E();
        if (A0E3 <= 0) {
            A0E3 = -1;
            String[] strArr = A01;
            if (strArr[6].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[6] = "";
            strArr2[4] = "hx6vx8O5nOwfxHxHuzSsxOXMbdPf";
        }
        int A0I2 = c4j.A0I();
        return new H7(A0F, A0I, A0F2, A0E, A0E2, A0E3, (int) Math.pow(2.0d, A0I2 & 15), (int) Math.pow(2.0d, (A0I2 & 240) >> 4), (c4j.A0I() & 1) > 0, Arrays.copyOf(c4j.A0l(), c4j.A0A()));
    }

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 110);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{107, Ascii.EM, 62, 54, 51, 58, 59, Byte.MAX_VALUE, 43, 48, Byte.MAX_VALUE, 47, 62, 45, 44, 58, Byte.MAX_VALUE, 9, 48, 45, Base64.padSymbol, 54, 44, Byte.MAX_VALUE, 60, 48, 50, 50, 58, 49, 43, 101, Byte.MAX_VALUE, 40, Ascii.SI, 7, 2, Ascii.VT, 10, 78, Ascii.SUB, 1, 78, Ascii.RS, Ascii.SI, Ascii.FS, Ascii.GS, Ascii.VT, 78, Ascii.CAN, 1, Ascii.FS, Ascii.FF, 7, Ascii.GS, 78, Ascii.RS, 7, Ascii.CR, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.VT, 118, 126, 111, 122, Byte.MAX_VALUE, 122, 111, 122, 100, 121, 119, 116, 120, 112, 100, 107, 114, 120, 111, 110, 105, 126, 62, 7, Ascii.SUB, 10, 1, Ascii.ESC, Base64.padSymbol, Ascii.FS, 1, 4, 58, 39, 47, 58, 60, 43, 58, 59, Byte.MAX_VALUE, 60, 55, 62, 45, 62, 60, 43, 58, 45, 44, Byte.MAX_VALUE, 120, 41, 48, 45, Base64.padSymbol, 54, 44, 120, SignedBytes.MAX_POWER_OF_TWO, 93, 85, SignedBytes.MAX_POWER_OF_TWO, 70, 81, SignedBytes.MAX_POWER_OF_TWO, 65, 5, 70, 74, 65, SignedBytes.MAX_POWER_OF_TWO, 5, 71, 74, 74, 78, 5, 81, 74, 5, 86, 81, 68, 87, 81, 5, 82, 76, 81, 77, 5, 126, Ascii.NAK, 93, Ascii.DLE, 19, 9, 5, Ascii.NAK, 93, 17, Ascii.SYN, 9, 5, Ascii.NAK, 93, 17, Ascii.ETB, 120, 5, 68, 81, 5, 62, 35, 43, 62, 56, 47, 62, 63, 123, 51, 62, 58, 63, 62, 41, 123, 47, 34, 43, 62, 123, 107, 97, 98, 98, Byte.MAX_VALUE, 45, 121, 116, 125, 104, 45, 106, Byte.MAX_VALUE, 104, 108, 121, 104, Byte.MAX_VALUE, 45, 121, 101, 108, 99, 45, 60, 45, 99, 98, 121, 45, 105, 104, 110, 98, 105, 108, 111, 97, 104, 55, 45, 97, 117, 102, 106, 110, 105, 96, 39, 101, 110, 115, 39, 102, 97, 115, 98, 117, 39, 106, 104, 99, 98, 116, 39, 105, 104, 115, 39, 116, 98, 115, 39, 102, 116, 39, 98, Byte.MAX_VALUE, 119, 98, 100, 115, 98, 99, 38, 50, 33, 45, 41, 46, 39, 96, 34, 41, 52, 96, 37, 56, 48, 37, 35, 52, 37, 36, 96, 52, 47, 96, 34, 37, 96, 51, 37, 52, 2, 1, 1, 5, Ascii.ESC, Ascii.RS, 78, Ascii.SUB, Ascii.ETB, Ascii.RS, Ascii.VT, 78, 9, Ascii.FS, Ascii.VT, Ascii.SI, Ascii.SUB, Ascii.VT, Ascii.FS, 78, Ascii.SUB, 6, Ascii.SI, 0, 78, 92, 78, 0, 1, Ascii.SUB, 78, 10, Ascii.VT, Ascii.CR, 1, 10, Ascii.SI, Ascii.FF, 2, Ascii.VT, 84, 78, 56, 52, 37, 37, 60, 59, 50, 117, 33, 44, 37, 48, 117, 58, 33, Base64.padSymbol, 48, 39, 117, 33, Base64.padSymbol, 52, 59, 117, 101, 117, 59, 58, 33, 117, 38, 32, 37, 37, 58, 39, 33, 48, 49, 111, 117, 108, 112, 125, Byte.MAX_VALUE, 121, 116, 115, 112, 120, 121, 110, 60, 115, 122, 60, 104, 117, 113, 121, 60, 120, 115, 113, 125, 117, 114, 60, 104, 110, 125, 114, 111, 122, 115, 110, 113, 111, 60, 114, 115, 104, 60, 102, 121, 110, 115, 121, 120, 60, 115, 105, 104, SignedBytes.MAX_POWER_OF_TWO, 87, 65, 91, 86, 71, 87, 102, 75, 66, 87, Ascii.DC2, 85, SignedBytes.MAX_POWER_OF_TWO, 87, 83, 70, 87, SignedBytes.MAX_POWER_OF_TWO, Ascii.DC2, 70, 90, 83, 92, Ascii.DC2, 0, Ascii.DC2, 91, 65, Ascii.DC2, 92, 93, 70, Ascii.DC2, 86, 87, 81, 93, 86, 83, 80, 94, 87, 93, 70, 9, 91, 76, 90, 76, 91, 95, 76, 77, 9, 75, SignedBytes.MAX_POWER_OF_TWO, 93, 90, 9, 68, 92, 90, 93, 9, 75, 76, 9, 83, 76, 91, 70, 9, 72, 79, 93, 76, 91, 9, 68, 72, 89, 89, SignedBytes.MAX_POWER_OF_TWO, 71, 78, 9, 74, 70, 92, 89, 69, SignedBytes.MAX_POWER_OF_TWO, 71, 78, 9, 90, 93, 76, 89, 90, Ascii.DLE, Ascii.VT, Ascii.VT, 68, Ascii.ETB, Ascii.FF, Ascii.VT, Ascii.SYN, Ascii.DLE, 68, Ascii.FF, 1, 5, 0, 1, Ascii.SYN, 94, 68};
    }

    static {
        A08();
    }

    public static int A00(int i) {
        int val = 0;
        while (i > 0) {
            val++;
            i >>>= 1;
        }
        return val;
    }

    public static long A01(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }

    public static Metadata A02(List<String> list) {
        List<String> vorbisComments = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            String[] A1P = AbstractC03624a.A1P(str, A07(0, 1, 56));
            int length = A1P.length;
            String A07 = A07(85, 10, 6);
            if (length != 2) {
                AnonymousClass44.A07(A07, A07(1, 32, 49) + str);
            } else {
                String[] strArr = A01;
                String str2 = strArr[6];
                String str3 = strArr[4];
                int i2 = str2.length();
                if (i2 == str3.length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[6] = "";
                strArr2[4] = "IFt3u6Tbn0k1mtPtGSJYRwNJh6dv";
                if (A1P[0].equals(A07(63, 22, 85))) {
                    try {
                        vorbisComments.add(PictureFrame.A00(new C4J(android.util.Base64.decode(A1P[1], 0))));
                    } catch (RuntimeException e) {
                        AnonymousClass44.A0A(A07, A07(33, 30, 0), e);
                    }
                } else {
                    vorbisComments.add(new VorbisComment(A1P[0], A1P[1]));
                }
            }
        }
        if (vorbisComments.isEmpty()) {
            return null;
        }
        return new Metadata(vorbisComments);
    }

    /* JADX WARN: Incorrect condition in loop: B:25:0x009f */
    /* JADX WARN: Incorrect condition in loop: B:8:0x0026 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.H4 A03(com.facebook.ads.redexgen.X.H3 r15) throws com.facebook.ads.redexgen.X.C03182i {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.H8.A03(com.facebook.ads.redexgen.X.H3):com.facebook.ads.redexgen.X.H4");
    }

    public static H5 A04(C4J c4j) throws C03182i {
        return A05(c4j, true, true);
    }

    public static H5 A05(C4J c4j, boolean z, boolean z2) throws C03182i {
        if (z) {
            A0C(3, c4j, false);
        }
        int length = (int) c4j.A0O();
        String A0W = c4j.A0W(length);
        int length2 = A0W.length();
        int i = 7 + 4 + length2;
        long A0O = c4j.A0O();
        int length3 = (int) A0O;
        String[] comments = new String[length3];
        int i2 = i + 4;
        int i3 = 0;
        while (true) {
            long commentListLen = i3;
            int length4 = (commentListLen > A0O ? 1 : (commentListLen == A0O ? 0 : -1));
            if (length4 >= 0) {
                break;
            }
            long commentListLen2 = c4j.A0O();
            int length5 = (int) commentListLen2;
            comments[i3] = c4j.A0W(length5);
            int length6 = comments[i3].length();
            i2 = i2 + 4 + length6;
            i3++;
        }
        if (z2) {
            int length7 = c4j.A0I();
            if ((length7 & 1) == 0) {
                String vendor = A07(283, 30, 46);
                throw C03182i.A01(vendor, null);
            }
        }
        return new H5(A0W, comments, i2 + 1);
    }

    public static void A09(int i, H3 h3) throws C03182i {
        int i2;
        int A02 = h3.A02(6) + 1;
        for (int i3 = 0; i3 < A02; i3++) {
            int A022 = h3.A02(16);
            if (A022 != 0) {
                AnonymousClass44.A05(A07(85, 10, 6), A07(355, 41, 59) + A022);
            } else {
                if (h3.A04()) {
                    int A023 = h3.A02(4);
                    String[] strArr = A01;
                    String str = strArr[7];
                    String str2 = strArr[0];
                    int charAt = str.charAt(2);
                    int mappingsCount = str2.charAt(2);
                    if (charAt != mappingsCount) {
                        throw new RuntimeException();
                    }
                    A01[5] = "MSIFAaOSOQQOpmu0PO7aKrLsJb3QFagu";
                    i2 = A023 + 1;
                } else {
                    i2 = 1;
                }
                if (h3.A04()) {
                    int i4 = h3.A02(8);
                    int i5 = i4 + 1;
                    for (int i6 = 0; i6 < i5; i6++) {
                        int mappingsCount2 = i - 1;
                        h3.A03(A00(mappingsCount2));
                        int mappingsCount3 = i - 1;
                        h3.A03(A00(mappingsCount3));
                    }
                }
                int mappingsCount4 = h3.A02(2);
                if (mappingsCount4 == 0) {
                    if (i2 > 1) {
                        for (int mappingsCount5 = 0; mappingsCount5 < i; mappingsCount5++) {
                            h3.A03(4);
                        }
                    }
                    for (int i7 = 0; i7 < i2; i7++) {
                        h3.A03(8);
                        String[] strArr2 = A01;
                        String str3 = strArr2[6];
                        String str4 = strArr2[4];
                        int length = str3.length();
                        int mappingsCount6 = str4.length();
                        if (length == mappingsCount6) {
                            throw new RuntimeException();
                        }
                        String[] strArr3 = A01;
                        strArr3[3] = "W7H2tgam7pgMqyIqKZRQoufJib3tzvKG";
                        strArr3[1] = "g3J7gwvZXejdWYIpZtqDt0lnx57dRd6J";
                        h3.A03(8);
                        h3.A03(8);
                    }
                    continue;
                } else {
                    throw C03182i.A01(A07(491, 58, 71), null);
                }
            }
        }
    }

    public static void A0A(H3 h3) throws C03182i {
        int A02 = h3.A02(6) + 1;
        for (int i = 0; i < A02; i++) {
            int A022 = h3.A02(16);
            switch (A022) {
                case 0:
                    h3.A03(8);
                    h3.A03(16);
                    h3.A03(16);
                    String[] strArr = A01;
                    String str = strArr[6];
                    String str2 = strArr[4];
                    int floorCount = str.length();
                    if (floorCount == str2.length()) {
                        throw new RuntimeException();
                    }
                    A01[2] = "puZWVQ2pTjmoQkTRd3XFOd7V6";
                    h3.A03(6);
                    h3.A03(8);
                    int A023 = h3.A02(4) + 1;
                    for (int floorCount2 = 0; floorCount2 < A023; floorCount2++) {
                        h3.A03(8);
                    }
                    break;
                case 1:
                    int j = h3.A02(5);
                    int i2 = -1;
                    int[] partitionClassList = new int[j];
                    for (int floorCount3 = 0; floorCount3 < j; floorCount3++) {
                        partitionClassList[floorCount3] = h3.A02(4);
                        if (partitionClassList[floorCount3] > i2) {
                            i2 = partitionClassList[floorCount3];
                        }
                    }
                    int[] iArr = new int[i2 + 1];
                    for (int j2 = 0; j2 < iArr.length; j2++) {
                        iArr[j2] = h3.A02(3) + 1;
                        int A024 = h3.A02(2);
                        if (A024 > 0) {
                            h3.A03(8);
                        }
                        for (int floorCount4 = 0; floorCount4 < (1 << A024); floorCount4++) {
                            h3.A03(8);
                        }
                    }
                    h3.A03(2);
                    int k = h3.A02(4);
                    int j3 = 0;
                    int rangeBits = 0;
                    for (int count = 0; count < j; count++) {
                        int idx = partitionClassList[count];
                        String[] strArr2 = A01;
                        String str3 = strArr2[7];
                        String str4 = strArr2[0];
                        int floorCount5 = str3.charAt(2);
                        if (floorCount5 != str4.charAt(2)) {
                            throw new RuntimeException();
                        }
                        A01[5] = "4gRGDU2vGyXCYhT5FVmyq5RWvUvygEh7";
                        j3 += iArr[idx];
                        while (rangeBits < j3) {
                            h3.A03(k);
                            rangeBits++;
                        }
                    }
                    continue;
                default:
                    throw C03182i.A01(A07(199, 41, 99) + A022, null);
            }
        }
    }

    public static void A0B(H3 h3) throws C03182i {
        int A02 = h3.A02(6) + 1;
        for (int i = 0; i < A02; i++) {
            int residueCount = h3.A02(16);
            if (residueCount <= 2) {
                h3.A03(24);
                h3.A03(24);
                h3.A03(24);
                int A022 = h3.A02(6) + 1;
                h3.A03(8);
                int[] iArr = new int[A022];
                for (int i2 = 0; i2 < A022; i2++) {
                    int residueCount2 = 0;
                    int A023 = h3.A02(3);
                    if (h3.A04()) {
                        String[] strArr = A01;
                        String str = strArr[7];
                        String str2 = strArr[0];
                        int residueCount3 = str.charAt(2);
                        if (residueCount3 != str2.charAt(2)) {
                            throw new RuntimeException();
                        }
                        A01[5] = "QebxPehykfYMwUhUEUOD533arJF7pEEp";
                        residueCount2 = h3.A02(5);
                    }
                    iArr[i2] = (residueCount2 * 8) + A023;
                }
                for (int i3 = 0; i3 < A022; i3++) {
                    for (int i4 = 0; i4 < 8; i4++) {
                        int residueCount4 = iArr[i3];
                        if ((residueCount4 & (1 << i4)) != 0) {
                            h3.A03(8);
                        }
                    }
                }
            } else {
                throw C03182i.A01(A07(448, 43, 92), null);
            }
        }
    }

    public static boolean A0C(int i, C4J c4j, boolean z) throws C03182i {
        if (c4j.A07() < 7) {
            if (z) {
                return false;
            }
            throw C03182i.A01(A07(549, 18, 10) + c4j.A07(), null);
        } else if (c4j.A0I() != i) {
            if (z) {
                return false;
            }
            throw C03182i.A01(A07(178, 21, 53) + Integer.toHexString(i), null);
        } else if (c4j.A0I() != 118 || c4j.A0I() != 111 || c4j.A0I() != 114 || c4j.A0I() != 98 || c4j.A0I() != 105 || c4j.A0I() != 115) {
            if (z) {
                return false;
            }
            throw C03182i.A01(A07(95, 28, 49), null);
        } else {
            return true;
        }
    }

    public static H6[] A0D(C4J c4j, int i) throws C03182i {
        A0C(5, c4j, false);
        int A0I = c4j.A0I() + 1;
        H3 h3 = new H3(c4j.A0l());
        int numberOfBooks = c4j.A09();
        h3.A03(numberOfBooks * 8);
        for (int numberOfBooks2 = 0; numberOfBooks2 < A0I; numberOfBooks2++) {
            A03(h3);
        }
        int numberOfBooks3 = h3.A02(6);
        int timeCount = numberOfBooks3 + 1;
        for (int i2 = 0; i2 < timeCount; i2++) {
            int numberOfBooks4 = h3.A02(16);
            if (numberOfBooks4 != 0) {
                throw C03182i.A01(A07(396, 52, 114), null);
            }
        }
        A0A(h3);
        A0B(h3);
        A09(i, h3);
        H6[] A0E = A0E(h3);
        if (h3.A04()) {
            return A0E;
        }
        throw C03182i.A01(A07(240, 43, 105), null);
    }

    public static H6[] A0E(H3 h3) {
        int A02 = h3.A02(6) + 1;
        H6[] h6Arr = new H6[A02];
        for (int windowType = 0; windowType < A02; windowType++) {
            boolean A04 = h3.A04();
            int A022 = h3.A02(16);
            int i = h3.A02(16);
            h6Arr[windowType] = new H6(A04, A022, i, h3.A02(8));
        }
        return h6Arr;
    }
}
