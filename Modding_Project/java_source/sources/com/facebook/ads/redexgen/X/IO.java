package com.facebook.ads.redexgen.X;

import android.util.Pair;
import androidx.media3.extractor.mp4.Atom;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.MdtaMetadataEntry;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.SmtaMetadataEntry;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.io.encoding.Base64;
@MetaExoPlayerCustomization(type = {"INCREASE_VISIBILITY"}, value = "To support OculusMp4Extractor")
/* loaded from: assets/audience_network.dex */
public abstract class IO {
    public static byte[] A00;
    public static String[] A01 = {"3VpIAtFn", "NjWxo0tcAFilzYXB2gd1dub2S4KYfC0G", "7dc9OwNzjfbA4WDbGdH3UDrd", "kTLJpOKA", "odl5U202HvuloegJiYsgd2o0Bsn6ktlS", "Tqd8q9EAW1nxLdrfn3G624yWy86zlBE3", "GM6CYLF4x47fKf9mrP144TBtf3lMkKEe", "FJhXpGWKImafMZTrlZrsHtUKnb1aBvQ9"};
    public static final byte[] A02;
    @MetaExoPlayerCustomization("Needed for oculus customization")
    public static final int[] A03;

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0170, code lost:
        if (r9 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0172, code lost:
        r7.A09(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01e2, code lost:
        if (r9 == false) goto L54;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.androidx.media3.common.ColorInfo A0B(com.facebook.ads.redexgen.X.C4J r10) {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.IO.A0B(com.facebook.ads.redexgen.X.4J):com.facebook.ads.androidx.media3.common.ColorInfo");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Metadata A0F(C1822kj c1822kj) {
        C1821ki A07 = c1822kj.A07(Atom.TYPE_hdlr);
        C1821ki A072 = c1822kj.A07(Atom.TYPE_keys);
        C1821ki A073 = c1822kj.A07(Atom.TYPE_ilst);
        if (A07 == null || A072 == null || A073 == null || A03(A07.A00) != 1835299937) {
            return null;
        }
        C4J c4j = A072.A00;
        c4j.A0f(12);
        int A0C = c4j.A0C();
        String[] strArr = new String[A0C];
        for (int i = 0; i < A0C; i++) {
            int A0C2 = c4j.A0C();
            c4j.A0g(4);
            strArr[i] = c4j.A0W(A0C2 - 8);
        }
        C4J c4j2 = A073.A00;
        c4j2.A0f(8);
        ArrayList arrayList = new ArrayList();
        while (c4j2.A07() > 8) {
            int A09 = c4j2.A09();
            int A0C3 = c4j2.A0C();
            int A0C4 = c4j2.A0C() - 1;
            if (A0C4 < 0 || A0C4 >= strArr.length) {
                AnonymousClass44.A07(A0M(178, 11, 68), A0M(359, 41, 107) + A0C4);
            } else {
                MdtaMetadataEntry A092 = IZ.A09(c4j2, A09 + A0C3, strArr[A0C4]);
                if (A092 != null) {
                    arrayList.add(A092);
                }
            }
            c4j2.A0f(A09 + A0C3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static IK A0G(C4J c4j, int i) {
        c4j.A0f(i + 8 + 4);
        c4j.A0g(1);
        A02(c4j);
        c4j.A0g(2);
        int A0I = c4j.A0I();
        if ((A0I & 128) != 0) {
            c4j.A0g(2);
        }
        if ((A0I & 64) != 0) {
            c4j.A0g(c4j.A0I());
        }
        if ((A0I & 32) != 0) {
            c4j.A0g(2);
        }
        c4j.A0g(1);
        A02(c4j);
        String A05 = AbstractC03172h.A05(c4j.A0I());
        if (A0M(947, 10, 17).equals(A05) || A0M(989, 13, 117).equals(A05) || A0M(1002, 16, 39).equals(A05)) {
            return new IK(A05, null, -1L, -1L);
        }
        c4j.A0g(4);
        long A0Q = c4j.A0Q();
        long A0Q2 = c4j.A0Q();
        c4j.A0g(1);
        int A022 = A02(c4j);
        byte[] bArr = new byte[A022];
        c4j.A0k(bArr, 0, A022);
        if (A0Q2 <= 0) {
            A0Q2 = -1;
        }
        if (A0Q <= 0) {
            A0Q = -1;
        }
        return new IK(A05, bArr, A0Q2, A0Q);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static IN A0I(C4J c4j) {
        long A0Q;
        c4j.A0f(8);
        int A012 = II.A01(c4j.A0C());
        c4j.A0g(A012 == 0 ? 8 : 16);
        int A0C = c4j.A0C();
        c4j.A0g(4);
        boolean z = true;
        int A09 = c4j.A09();
        int i = A012 == 0 ? 4 : 8;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            } else if (c4j.A0l()[A09 + i2] != -1) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (z) {
            c4j.A0g(i);
            A0Q = -9223372036854775807L;
        } else {
            A0Q = A012 == 0 ? c4j.A0Q() : c4j.A0R();
            if (A0Q == 0) {
                A0Q = -9223372036854775807L;
            }
        }
        c4j.A0g(16);
        int A0C2 = c4j.A0C();
        int A0C3 = c4j.A0C();
        c4j.A0g(4);
        int A0C4 = c4j.A0C();
        int A0C5 = c4j.A0C();
        return new IN(A0C, A0Q, (A0C2 == 0 && A0C3 == 65536 && A0C4 == (-65536) && A0C5 == 0) ? 90 : (A0C2 == 0 && A0C3 == (-65536) && A0C4 == 65536 && A0C5 == 0) ? 270 : (A0C2 == (-65536) && A0C3 == 0 && A0C4 == 0 && A0C5 == (-65536)) ? 180 : 0);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @MetaExoPlayerCustomization(type = {"INCREASE_VISIBILITY"}, value = "To support OculusMp4Extractor")
    public static C0722Im A0J(C1822kj c1822kj, C1821ki c1821ki, long j, DrmInitData drmInitData, boolean z, boolean z2) throws C03182i {
        int i;
        int i2;
        int i3;
        C1822kj A06;
        long j2 = j;
        C1822kj c1822kj2 = (C1822kj) C3M.A01(c1822kj.A06(Atom.TYPE_mdia));
        int A012 = A01(A03(((C1821ki) C3M.A01(c1822kj2.A07(Atom.TYPE_hdlr))).A00));
        if (A012 == -1) {
            return null;
        }
        IN A0I = A0I(((C1821ki) C3M.A01(c1822kj.A07(Atom.TYPE_tkhd))).A00);
        if (j2 == -9223372036854775807L) {
            j2 = A0I.A02;
        }
        long A05 = A05(c1821ki.A00);
        long A0U = j2 == -9223372036854775807L ? -9223372036854775807L : AbstractC03624a.A0U(j2, 1000000L, A05);
        Pair<Long, String> A062 = A06(((C1821ki) C3M.A01(c1822kj2.A07(Atom.TYPE_mdhd))).A00);
        C1821ki A07 = ((C1822kj) C3M.A01(((C1822kj) C3M.A01(c1822kj2.A06(Atom.TYPE_minf))).A06(Atom.TYPE_stbl))).A07(Atom.TYPE_stsd);
        if (A07 != null) {
            C4J c4j = A07.A00;
            i = A0I.A00;
            i2 = A0I.A01;
            IM A0H = A0H(c4j, i, i2, (String) A062.second, drmInitData, z2);
            long[] jArr = null;
            long[] jArr2 = null;
            if (!z && (A06 = c1822kj.A06(Atom.TYPE_edts)) != null) {
                Pair<long[], long[]> A09 = A09(A06);
                String[] strArr = A01;
                if (strArr[1].charAt(26) == strArr[6].charAt(26)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[7] = "IbqpVMf9BLmnuF5BFBlg7Wi48qFbo4Yh";
                strArr2[4] = "amD11xiy90bj3UvdeHvItss5MLCDKaRi";
                if (A09 != null) {
                    jArr = (long[]) A09.first;
                    jArr2 = (long[]) A09.second;
                }
            }
            if (A0H.A02 == null) {
                return null;
            }
            i3 = A0I.A00;
            return new C0722Im(i3, A012, ((Long) A062.first).longValue(), A05, A0U, A0H.A02, A0H.A01, A0H.A03, A0H.A00, jArr, jArr2);
        }
        throw C03182i.A01(A0M(288, 63, 20), null);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C0723In A0K(C4J c4j, int i, int i2, String str) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            c4j.A0f(i3);
            int A0C = c4j.A0C();
            if (c4j.A0C() == 1952804451) {
                int A012 = II.A01(c4j.A0C());
                c4j.A0g(1);
                int i4 = 0;
                int i5 = 0;
                if (A012 == 0) {
                    c4j.A0g(1);
                } else {
                    int A0I = c4j.A0I();
                    i4 = (A0I & 240) >> 4;
                    i5 = A0I & 15;
                }
                boolean z = c4j.A0I() == 1;
                int A0I2 = c4j.A0I();
                byte[] bArr = new byte[16];
                c4j.A0k(bArr, 0, bArr.length);
                byte[] bArr2 = null;
                if (z && A0I2 == 0) {
                    int A0I3 = c4j.A0I();
                    bArr2 = new byte[A0I3];
                    c4j.A0k(bArr2, 0, A0I3);
                }
                return new C0723In(z, str, A0I2, bArr, i4, i5, bArr2);
            }
            i3 += A0C;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02ab, code lost:
        if (r12 != 0) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02ad, code lost:
        if (r8 != 0) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02af, code lost:
        if (r13 != 0) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x02b1, code lost:
        if (r10 != 0) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x02b3, code lost:
        if (r14 != false) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x02b5, code lost:
        r0 = r34;
        r8 = new java.lang.StringBuilder().append(A0M(207, 32, 24)).append(r0.A00).append(A0M(144, 34, 36)).append(r9).append(A0M(14, 35, 65)).append(r12).append(A0M(85, 26, 14)).append(r8).append(A0M(111, 33, 41)).append(r13).append(A0M(49, 36, 31)).append(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x032a, code lost:
        if (r14 != false) goto L230;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x032c, code lost:
        r3 = A0M(0, 14, 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0335, code lost:
        com.facebook.ads.redexgen.X.AnonymousClass44.A07(r16, r8.append(r3).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0342, code lost:
        r17 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x05ef, code lost:
        if (com.facebook.ads.redexgen.X.IO.A01[5].charAt(23) == 'W') goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x05f1, code lost:
        r3 = A0M(0, 0, 93);
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x05fa, code lost:
        r6 = com.facebook.ads.redexgen.X.IO.A01;
        r6[7] = "aaylILcGBS6VDtnpev9y5b4BJZBYR2y3";
        r6[4] = "0XgNPN0ZQsO4pNqGOHtpLFxyHM4aJjFv";
        r3 = A0M(0, 0, 93);
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x060f, code lost:
        r0 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0613, code lost:
        r11.A0C();
        r25 = r25 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0299, code lost:
        r1 = r1 + r19;
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x029e, code lost:
        if (r11 == null) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02a0, code lost:
        if (r25 <= 0) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02a6, code lost:
        if (r11.A0L() == 0) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02a8, code lost:
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02a9, code lost:
        if (r9 != 0) goto L226;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization(type = {"INCREASE_VISIBILITY"}, value = "To support OculusMp4Extractor")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.C0725Ip A0L(com.facebook.ads.redexgen.X.C0722Im r34, com.facebook.ads.redexgen.X.C1822kj r35, com.facebook.ads.redexgen.X.C0667Gi r36) throws com.facebook.ads.redexgen.X.C03182i {
        /*
            Method dump skipped, instructions count: 1632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.IO.A0L(com.facebook.ads.redexgen.X.Im, com.facebook.ads.redexgen.X.kj, com.facebook.ads.redexgen.X.Gi):com.facebook.ads.redexgen.X.Ip");
    }

    public static String A0M(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 102);
        }
        return new String(copyOfRange);
    }

    public static void A0P() {
        A00 = new byte[]{70, 74, 9, Ascii.RS, Ascii.RS, Ascii.EM, 74, 3, 4, Ascii.FS, Ascii.VT, 6, 3, Ascii.SO, Ascii.VT, 7, 85, 66, 74, 70, 78, 73, 78, 73, SignedBytes.MAX_POWER_OF_TWO, 116, 70, 74, 87, 75, 66, 84, 102, 83, 115, 78, 74, 66, 84, 83, 70, 74, 87, 99, 66, 75, 83, 70, 7, 85, 89, Ascii.VT, Ascii.FS, Ascii.DC4, Ascii.CAN, Ascii.DLE, Ascii.ETB, Ascii.DLE, Ascii.ETB, Ascii.RS, 42, Ascii.CAN, Ascii.DC4, 9, Ascii.NAK, Ascii.FS, 10, 56, Ascii.CR, 45, Ascii.DLE, Ascii.DC4, Ascii.FS, 10, Ascii.CR, Ascii.CAN, Ascii.DC4, 9, 54, Ascii.US, Ascii.US, 10, Ascii.FS, Ascii.CR, 89, 68, 72, Ascii.SUB, Ascii.CR, 5, 9, 1, 6, 1, 6, Ascii.SI, 59, 9, 5, Ascii.CAN, 4, Ascii.CR, Ascii.ESC, 33, 6, 43, 0, Ascii.GS, 6, 3, 72, 99, 111, Base64.padSymbol, 42, 34, 46, 38, 33, 38, 33, 40, Ascii.ESC, 38, 34, 42, 60, 59, 46, 34, 63, Ascii.VT, 42, 35, 59, 46, Ascii.FF, 39, 46, 33, 40, 42, 60, 111, 120, 98, 48, 39, 47, 35, 43, 44, 43, 44, 37, 17, 59, 44, 33, 42, 48, 45, 44, 43, 56, 35, 54, 43, 45, 44, 17, 35, 47, 50, 46, 39, 49, 98, 99, 86, 77, 79, 114, 67, 80, 81, 71, 80, 81, Ascii.RS, 35, 56, 62, 40, 40, 50, 45, 62, 123, 52, 57, 46, 4, 40, 50, 33, 62, 55, Ascii.DLE, Ascii.GS, 17, Ascii.DLE, Ascii.CR, Ascii.ETB, Ascii.CR, 10, Ascii.ESC, Ascii.DLE, 10, 94, Ascii.CR, 10, Ascii.FS, Ascii.DC2, 94, Ascii.FS, 17, 6, 94, Ascii.CAN, 17, Ascii.FF, 94, 10, Ascii.FF, Ascii.US, Ascii.GS, Ascii.NAK, 94, 8, 47, 55, 32, 45, 40, 37, 97, 50, 32, 44, 49, 45, 36, 97, 51, 32, 53, 36, 97, 39, 46, 51, 97, 5, 46, 45, 35, 56, 97, Ascii.NAK, 51, 52, 36, 9, 5, 97, Ascii.FF, Ascii.CR, 17, 97, 50, 53, 51, 36, 32, 44, 123, 97, 63, 19, Ascii.RS, Ascii.DC4, Ascii.GS, 0, Ascii.US, Ascii.ETB, Ascii.SYN, 82, 1, 19, Ascii.US, 2, Ascii.RS, Ascii.ETB, 82, 6, 19, Ascii.DLE, Ascii.RS, Ascii.ETB, 82, 90, 1, 6, Ascii.DLE, Ascii.RS, 91, 82, Ascii.US, Ascii.ESC, 1, 1, Ascii.ESC, Ascii.FS, Ascii.NAK, 82, 1, 19, Ascii.US, 2, Ascii.RS, Ascii.ETB, 82, Ascii.SYN, Ascii.ETB, 1, 17, 0, Ascii.ESC, 2, 6, Ascii.ESC, Ascii.GS, Ascii.FS, 82, 90, 1, 6, 1, Ascii.SYN, 91, 33, Ascii.RS, Ascii.ESC, Ascii.GS, 38, Ascii.VT, Ascii.SI, 10, 94, 102, 100, 125, 125, 104, 105, 45, 96, 104, 121, 108, 105, 108, 121, 108, 45, 122, 100, 121, 101, 45, 120, 99, 102, 99, 98, 122, 99, 45, 102, 104, 116, 45, 100, 99, 105, 104, 117, 55, 45, 93, 123, 104, 106, 98, 41, 97, 104, 122, 41, 103, 102, 41, 122, 104, 100, 121, 101, 108, 41, 125, 104, 107, 101, 108, 41, 122, 96, 115, 108, 41, 96, 103, 111, 102, 123, 100, 104, 125, 96, 102, 103, 109, 86, 93, SignedBytes.MAX_POWER_OF_TWO, 72, 93, 91, 76, 93, 92, Ascii.CAN, 93, 86, 92, Ascii.CAN, 87, 94, Ascii.CAN, 91, 80, 77, 86, 83, Ascii.CAN, 92, 89, 76, 89, 90, 97, 124, 122, Byte.MAX_VALUE, Byte.MAX_VALUE, 96, 125, 123, 106, 107, 47, 108, 96, 99, 96, 125, 47, 123, 118, Byte.MAX_VALUE, 106, 53, 47, 72, 115, 110, 104, 109, 109, 114, 111, 105, 120, 121, Base64.padSymbol, 116, 115, 116, 105, 116, 124, 113, 66, 121, 116, 110, 109, 113, 124, 100, 66, 121, 120, 113, 124, 100, 66, 109, 111, 120, 110, 120, 115, 105, 66, 123, 113, 124, 122, 105, 82, 79, 73, 76, 76, 83, 78, 72, 89, 88, Ascii.FS, 81, 89, 88, 85, 93, Ascii.FS, 78, 93, 72, 89, Ascii.DC2, Ascii.EM, 34, 63, 57, 60, 60, 35, 62, 56, 41, 40, 108, 35, 46, 57, 19, 41, 52, 56, 41, 34, 63, 37, 35, 34, 19, 42, 32, 45, 43, 100, 95, 66, 68, 65, 65, 94, 67, 69, 84, 85, 17, 94, 83, 68, 110, 69, 72, 65, 84, Ascii.VT, 17, 83, 104, 117, 115, 118, 118, 105, 116, 114, 99, 98, 38, 116, 99, 98, 115, 101, 99, 98, 89, 117, 114, 111, 106, 106, 89, 118, 111, 101, 114, 115, 116, 99, 89, 110, 99, 103, 98, 99, 116, 52, Ascii.SI, Ascii.DC2, Ascii.DC4, 17, 17, Ascii.SO, 19, Ascii.NAK, 4, 5, 65, Ascii.NAK, 8, Ascii.FF, 8, Ascii.SI, 6, 62, 8, Ascii.SI, 7, Ascii.SO, 62, 17, 19, 4, Ascii.DC2, 4, Ascii.SI, Ascii.NAK, 62, 7, Ascii.CR, 0, 6, 96, 113, 113, 109, 104, 98, 96, 117, 104, 110, 111, 46, 117, 117, 108, 109, 42, 121, 108, 109, 33, 48, 48, 44, 41, 35, 33, 52, 41, 47, 46, 111, 56, 109, 35, 33, 45, 37, 50, 33, 109, 45, 47, 52, 41, 47, 46, 78, 95, 95, 67, 70, 76, 78, 91, 70, SignedBytes.MAX_POWER_OF_TWO, 65, 0, 87, 2, 66, 95, Ascii.ESC, 2, 76, 74, 78, 2, Ascii.EM, Ascii.US, Ascii.ETB, 95, 78, 78, 82, 87, 93, 95, 74, 87, 81, 80, 17, 70, 19, 83, 78, 10, 19, 72, 74, 74, Base64.padSymbol, 44, 44, 48, 53, 63, Base64.padSymbol, 40, 53, 51, 50, 115, 36, 113, 45, 41, 53, 63, 55, 40, 53, 49, 57, 113, 40, 36, 111, 59, 80, 68, 85, 88, 94, Ascii.RS, 2, 86, 65, 65, 58, 46, 63, 50, 52, 116, 58, 56, 104, 42, 62, 47, 34, 36, 100, 42, 40, Byte.MAX_VALUE, 46, 58, 43, 38, 32, 96, 46, 35, 46, 44, 34, 54, 39, 42, 44, 108, 34, 46, 49, 110, 52, 33, 77, 89, 72, 69, 67, 3, 73, 77, 79, Ascii.US, 3, Ascii.ETB, 6, Ascii.VT, Ascii.CR, 77, 4, Ascii.SO, 3, 1, 103, 115, 98, 111, 105, 41, 97, 49, 55, 55, 43, 103, 106, 103, 113, 74, 94, 79, 66, 68, 4, 76, Ascii.FS, Ascii.SUB, Ascii.SUB, 6, 70, 71, 74, 92, 34, 54, 39, 42, 44, 108, 46, 43, 34, 114, Ascii.ETB, 3, Ascii.DC2, Ascii.US, Ascii.EM, 89, Ascii.ESC, Ascii.RS, Ascii.ESC, 71, 96, 116, 101, 104, 110, 46, 108, 113, 53, 96, 44, 109, 96, 117, 108, Ascii.SYN, 2, 19, Ascii.RS, Ascii.CAN, 88, Ascii.SUB, 7, Ascii.DC2, Ascii.DLE, 68, 80, 65, 76, 74, 10, 74, 85, 80, 86, 89, 77, 92, 81, 87, Ascii.ETB, 74, 89, 79, 74, 94, 79, 66, 68, 4, 95, 89, 94, 78, 6, 67, 79, 114, 102, 119, 122, 124, 60, 101, 125, 119, Base64.padSymbol, 119, 
        103, 96, 32, 52, 37, 40, 46, 110, 55, 47, 37, 111, 37, 53, 50, 111, 41, 37, 68, 80, 65, 76, 74, 10, 83, 75, 65, Ascii.VT, 65, 81, 86, Ascii.VT, 77, 65, Ascii.RS, 85, 87, 74, 67, 76, 73, SignedBytes.MAX_POWER_OF_TWO, Ascii.CAN, 73, 71, 87, 88, 76, 93, 80, 86, Ascii.SYN, 79, 87, 93, Ascii.ETB, 93, 77, 74, Ascii.ETB, 76, 81, 93, 2, 73, 75, 86, 95, 80, 85, 92, 4, 73, Ascii.VT, 54, 55, 54, 100, 87, 86, 87, 71, 79, 73, 66, 79, 50, 52, 63, 34, 74, 65, SignedBytes.MAX_POWER_OF_TWO, 69, 77, 104, 93, 70, 68, 122, SignedBytes.MAX_POWER_OF_TWO, 83, 76, 9, 68, 92, 90, 93, 9, 75, 76, 9, 89, 70, 90, SignedBytes.MAX_POWER_OF_TWO, 93, SignedBytes.MAX_POWER_OF_TWO, 95, 76, 49, 37, 58, 54, 119, 54, 35, 56, 58, 119, 62, 36, 119, 58, 54, 57, 51, 54, 35, 56, 37, 46, 59, 43, 32, 33, 104, 41, 60, 39, 37, 104, 33, 59, 104, 37, 41, 38, 44, 41, 60, 39, 58, 49, Ascii.SI, Ascii.RS, Ascii.NAK, Ascii.CAN, 91, Ascii.SUB, Ascii.SI, Ascii.DC4, Ascii.SYN, 91, Ascii.DC2, 8, 91, Ascii.SYN, Ascii.SUB, Ascii.NAK, Ascii.US, Ascii.SUB, Ascii.SI, Ascii.DC4, 9, 2, 5, Ascii.SUB, Ascii.ETB, Ascii.SYN, Ascii.FS, 92, SignedBytes.MAX_POWER_OF_TWO, Ascii.DC4, 3, 3, 67, 92, 81, 80, 90, Ascii.SUB, 84, 67, 5, 4, 35, 60, 49, 48, 58, 122, 52, 35, 54, 72, 87, 90, 91, 81, 17, 90, 81, 82, 92, 71, 19, 72, 87, 77, 87, 81, 80, 68, 91, 86, 87, 93, Ascii.GS, 90, 87, 68, 81, Ascii.SUB, 5, 8, 9, 3, 67, 1, Ascii.FS, 9, Ascii.VT, 95, SignedBytes.MAX_POWER_OF_TWO, 77, 76, 70, 6, 81, 4, 95, 71, 77, 7, 70, 71, Ascii.ESC, 7, 95, 89, 17, 3, Ascii.FS, 17, Ascii.DLE, Ascii.SUB, 90, Ascii.CR, 88, 3, Ascii.ESC, 17, 91, Ascii.SUB, Ascii.ESC, 71, 91, 3, 5, 76};
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0287, code lost:
        com.facebook.ads.redexgen.X.GZ.A01(r2, null);
        r6 = A0M(1196, 10, 83);
        r33.A0f(r1 + 8);
        r0 = A0B(r33);
        r8 = r0.A02;
        r5 = r0.A01;
        r7 = r0.A03;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02a6, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02a8, code lost:
        if (r2 != 1635135811) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x02ae, code lost:
        if (r2 != 1668050025) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x02b0, code lost:
        if (r4 != null) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02b2, code lost:
        r4 = A0N();
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x02b6, code lost:
        r4.position(21);
        r4.putShort(r33.A0b());
        r4.putShort(r33.A0b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02d6, code lost:
        if (com.facebook.ads.redexgen.X.IO.A01[5].charAt(23) == 'W') goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02d8, code lost:
        r2 = com.facebook.ads.redexgen.X.IO.A01;
        r2[7] = "cMBnz4dZXlFeWyM9hfqqzsh9zqwjLPKg";
        r2[4] = "lv8fWd8FNFrcw1jaRvaQVznvgsfH83Rg";
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02e6, code lost:
        r2 = com.facebook.ads.redexgen.X.IO.A01;
        r2[0] = "x7EuuBNN";
        r2[3] = "05WogHTT";
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02f7, code lost:
        if (r2 != 1835295606) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02f9, code lost:
        if (r4 != null) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02fb, code lost:
        r4 = A0N();
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02ff, code lost:
        r24 = r33.A0b();
        r23 = r33.A0b();
        r22 = r33.A0b();
        r21 = r33.A0b();
        r20 = r33.A0b();
        r19 = r33.A0b();
        r18 = r33.A0b();
        r16 = r33.A0b();
        r2 = r33.A0Q();
        r0 = r33.A0Q();
        r4.position(1);
        r4.putShort(r20);
        r4.putShort(r19);
        r4.putShort(r24);
        r4.putShort(r23);
        r4.putShort(r22);
        r4.putShort(r21);
        r4.putShort(r18);
        r4.putShort(r16);
        r4.putShort((short) (r2 / 10000));
        r4.putShort((short) (r0 / 10000));
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0368, code lost:
        if (r2 != 1681012275) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x036a, code lost:
        if (r6 != null) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x036c, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x036d, code lost:
        com.facebook.ads.redexgen.X.GZ.A01(r1, null);
        r6 = A0M(1186, 10, 21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x037d, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0382, code lost:
        if (r2 != 1702061171) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0384, code lost:
        if (r6 != null) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0386, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0387, code lost:
        com.facebook.ads.redexgen.X.GZ.A01(r2, null);
        r17 = A0G(r33, r1);
        r6 = r17.A02;
        r0 = r17.A03;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0397, code lost:
        if (r0 == null) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0399, code lost:
        r12 = com.facebook.ads.redexgen.X.AbstractC0517Am.A04(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x039f, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x03a4, code lost:
        if (r2 != 1885434736) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x03a6, code lost:
        r27 = A00(r33, r1);
        r30 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x03b1, code lost:
        if (r2 != 1937126244) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x03b3, code lost:
        r26 = A0W(r33, r1, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x03bc, code lost:
        if (r2 != 1936995172) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x03be, code lost:
        r1 = r33.A0I();
        r33.A0g(3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x03c6, code lost:
        if (r1 != 0) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x03cc, code lost:
        switch(r33.A0I()) {
            case 0: goto L151;
            case 1: goto L150;
            case 2: goto L149;
            case 3: goto L148;
            default: goto L152;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x03cf, code lost:
        r2 = com.facebook.ads.redexgen.X.IO.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x03df, code lost:
        if (r2[0].length() == r2[3].length()) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x03e6, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x03e7, code lost:
        r11 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x03e9, code lost:
        r11 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x03eb, code lost:
        r11 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x03ed, code lost:
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x03ef, code lost:
        r2 = com.facebook.ads.redexgen.X.IO.A01;
        r2[7] = "0aivzU98O0ZXtjwpHxuX2T7FoukhoekU";
        r2[4] = "nV94P8gaAxhOD3b386SRtcx64PXkWIfI";
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0400, code lost:
        if (r2 != 1668246642) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0403, code lost:
        if (r8 != (-1)) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0405, code lost:
        if (r5 != (-1)) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0407, code lost:
        if (r7 != (-1)) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0409, code lost:
        r2 = r33.A0C();
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0410, code lost:
        if (r2 == 1852009592) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0415, code lost:
        if (r2 != 1852009571) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0417, code lost:
        r2 = r33.A0M();
        r1 = r33.A0M();
        r5 = 2;
        r33.A0g(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0425, code lost:
        if (r14 != 19) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x042d, code lost:
        if ((r33.A0I() & 128) == 0) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x042f, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0430, code lost:
        r8 = com.facebook.ads.androidx.media3.common.ColorInfo.A00(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0434, code lost:
        if (r0 == false) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0436, code lost:
        r5 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0437, code lost:
        r7 = com.facebook.ads.androidx.media3.common.ColorInfo.A01(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x043d, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x043f, code lost:
        com.facebook.ads.redexgen.X.AnonymousClass44.A07(A0M(178, 11, 68), A0M(470, 24, 105) + com.facebook.ads.redexgen.X.II.A02(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x046b, code lost:
        r2 = com.facebook.ads.redexgen.X.IO.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x047d, code lost:
        if (r2[7].charAt(30) == r2[4].charAt(30)) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x047f, code lost:
        r2 = com.facebook.ads.redexgen.X.IO.A01;
        r2[0] = "ZXEhGysO";
        r2[3] = "dMfXFnuv";
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x048d, code lost:
        r2 = com.facebook.ads.redexgen.X.IO.A01;
        r2[0] = "PjY9iWjn";
        r2[3] = "RXgmgrZF";
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008a, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ad, code lost:
        if (r6 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00af, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b0, code lost:
        r3 = new com.facebook.ads.redexgen.X.C2D().A0g(r37).A11(r6).A0w(r13).A0r(r29).A0f(r28).A0Y(r27).A0l(r38).A13(r26).A0o(r11).A12(r12).A0u(r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f0, code lost:
        if (r8 != (-1)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00f2, code lost:
        if (r5 != (-1)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f4, code lost:
        if (r7 != (-1)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00f6, code lost:
        if (r4 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f9, code lost:
        if (r4 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00fb, code lost:
        r4 = r4.array();
        r2 = com.facebook.ads.redexgen.X.IO.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0111, code lost:
        if (r2[7].charAt(30) == r2[4].charAt(30)) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0113, code lost:
        r2 = com.facebook.ads.redexgen.X.IO.A01;
        r2[1] = "iNSGYMD2WjZqNKpCGRiE11Ag0KcZMJ4O";
        r2[6] = "kUdBVFFCHZ7OFsLW60c88KXDOWnZQcPh";
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x011f, code lost:
        r3.A0t(new com.facebook.ads.androidx.media3.common.ColorInfo(r8, r5, r7, r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0127, code lost:
        if (r17 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0129, code lost:
        r0 = r17.A00;
        r2 = r3.A0a(com.facebook.ads.redexgen.X.AD.A04(r0));
        r0 = r17.A01;
        r2.A0j(com.facebook.ads.redexgen.X.AD.A04(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0140, code lost:
        r40.A02 = r3.A14();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0148, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0149, code lost:
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0171, code lost:
        if (r2 == 1635148611) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0173, code lost:
        if (r6 != null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0175, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0176, code lost:
        com.facebook.ads.redexgen.X.GZ.A01(r2, null);
        r6 = A0M(com.tencent.liteav.TXLiteAVCode.WARNING_SCREEN_CAPTURE_NOT_AUTHORIZED, 9, 51);
        r33.A0f(r1 + 8);
        r2 = com.facebook.ads.redexgen.X.GJ.A00(r33);
        r12 = r2.A05;
        r40.A00 = r2.A02;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0195, code lost:
        if (r30 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0197, code lost:
        r27 = r2.A00;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x019b, code lost:
        r13 = r2.A04;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01a0, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01b3, code lost:
        if (r2 == 1635148611) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01b9, code lost:
        if (r2 != 1752589123) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01bb, code lost:
        if (r6 != null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01bd, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01be, code lost:
        com.facebook.ads.redexgen.X.GZ.A01(r2, null);
        r6 = A0M(1233, 10, 84);
        r33.A0f(r1 + 8);
        r2 = com.facebook.ads.redexgen.X.C0668Gj.A00(r33);
        r12 = r2.A08;
        r40.A00 = r2.A05;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01dd, code lost:
        if (r30 != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01df, code lost:
        r27 = r2.A00;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01e3, code lost:
        r13 = r2.A07;
        r8 = r2.A02;
        r5 = r2.A01;
        r7 = r2.A03;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ec, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01f1, code lost:
        if (r2 == 1685480259) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01f6, code lost:
        if (r2 != 1685485123) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01f8, code lost:
        r0 = com.facebook.ads.redexgen.X.GU.A00(r33);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01fc, code lost:
        if (r0 == null) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01fe, code lost:
        r13 = r0.A02;
        r6 = A0M(1215, 18, 88);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x020e, code lost:
        if (r2 != 1987076931) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0210, code lost:
        if (r6 != null) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0212, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0213, code lost:
        com.facebook.ads.redexgen.X.GZ.A01(r2, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x021c, code lost:
        if (r32 != 1987063864) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x021e, code lost:
        r6 = A0M(1253, 19, 79);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0228, code lost:
        r33.A0f(r1 + 12);
        r33.A0g(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0237, code lost:
        if ((r33.A0I() & 1) == 0) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0239, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x023a, code lost:
        r1 = r33.A0I();
        r0 = r33.A0I();
        r8 = com.facebook.ads.androidx.media3.common.ColorInfo.A00(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0246, code lost:
        if (r2 == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0248, code lost:
        r5 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0249, code lost:
        r7 = com.facebook.ads.androidx.media3.common.ColorInfo.A01(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x024f, code lost:
        r5 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0251, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0253, code lost:
        r6 = A0M(1272, 19, 19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x025e, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0260, code lost:
        r16 = com.facebook.ads.redexgen.X.IO.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0279, code lost:
        if (r16[7].charAt(30) == r16[4].charAt(30)) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x027b, code lost:
        com.facebook.ads.redexgen.X.IO.A01[5] = "obOtuNmXmw3Srs7TxB3R2veWOWOW6QJb";
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0282, code lost:
        if (r2 != 1635135811) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0284, code lost:
        if (r6 != null) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0286, code lost:
        r2 = true;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("Adding Colorspace support for AV1")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0R(com.facebook.ads.redexgen.X.C4J r33, int r34, int r35, int r36, int r37, int r38, com.facebook.ads.androidx.media3.common.DrmInitData r39, com.facebook.ads.redexgen.X.IM r40, int r41) throws com.facebook.ads.redexgen.X.C03182i {
        /*
            Method dump skipped, instructions count: 1228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.IO.A0R(com.facebook.ads.redexgen.X.4J, int, int, int, int, int, com.facebook.ads.androidx.media3.common.DrmInitData, com.facebook.ads.redexgen.X.IM, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x034e, code lost:
        if (r3 != 1685353320) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0353, code lost:
        if (r3 != 1685353324) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0355, code lost:
        r7 = A0M(1002, 16, 39);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x036d, code lost:
        if (r3 != 1685353320) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0373, code lost:
        if (r3 != 1685353317) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0375, code lost:
        r7 = A0M(1018, 28, 67);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0384, code lost:
        if (r3 != 1685353336) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0386, code lost:
        r7 = A0M(1046, 28, 95);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0392, code lost:
        r6 = com.facebook.ads.redexgen.X.IO.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x03a5, code lost:
        if (r6[0].length() == r6[3].length()) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x03a7, code lost:
        r6 = com.facebook.ads.redexgen.X.IO.A01;
        r6[0] = "UBbPjz2J";
        r6[3] = "vZen3GMl";
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x03b3, code lost:
        if (r3 != 1935764850) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x03b5, code lost:
        r7 = A0M(812, 10, 87);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x03c1, code lost:
        com.facebook.ads.redexgen.X.IO.A01[2] = "gBDk9Jrqoo24V0L1mHSTaoLt";
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x03c8, code lost:
        if (r3 != 1935764850) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x03ce, code lost:
        if (r3 != 1935767394) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x03d0, code lost:
        r7 = A0M(850, 12, 37);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x03df, code lost:
        if (r3 == 1819304813) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x03e4, code lost:
        if (r3 != 1936684916) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x03e6, code lost:
        r7 = A0M(967, 9, 94);
        r10 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x03f6, code lost:
        if (r3 != 1953984371) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x03f8, code lost:
        r7 = A0M(967, 9, 94);
        r10 = 268435456;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0409, code lost:
        if (r3 == 778924082) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x040e, code lost:
        if (r3 != 778924083) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0410, code lost:
        r7 = A0M(947, 10, 17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x041f, code lost:
        if (r3 != 1835557169) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0421, code lost:
        r7 = A0M(912, 10, 37);
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0430, code lost:
        if (r3 != 1835560241) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0432, code lost:
        r7 = A0M(922, 10, 16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x043e, code lost:
        if (r3 != 1634492771) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x044d, code lost:
        if (com.facebook.ads.redexgen.X.IO.A01[2].length() == 24) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x044f, code lost:
        r3 = com.facebook.ads.redexgen.X.IO.A01;
        r3[7] = "Tx0aPYhLQcdbhycZDJ63DJlxAHLYnZiL";
        r3[4] = "3h5vNAL3r5q44mC2VqL1y1SAaDe1rbn7";
        r7 = A0M(840, 1, 31);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0464, code lost:
        com.facebook.ads.redexgen.X.IO.A01[5] = "qx3Rs2jX7JB6Nuy9TisbRByWp1zn9Qj8";
        r7 = A0M(840, 10, 41);
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0478, code lost:
        if (r3 != 1634492791) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x047a, code lost:
        r7 = A0M(882, 15, 96);
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0489, code lost:
        if (r3 != 1970037111) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x048b, code lost:
        r7 = A0M(897, 15, 77);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x049a, code lost:
        if (r3 != 1332770163) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x049c, code lost:
        r7 = A0M(957, 10, 67);
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x04ab, code lost:
        if (r3 != 1716281667) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x04ad, code lost:
        r7 = A0M(872, 10, 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x04bb, code lost:
        if (r3 != 1835823201) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x04bd, code lost:
        r7 = A0M(976, 13, 77);
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x055a, code lost:
        throw com.facebook.ads.redexgen.X.C03182i.A01(A0M(239, 49, 39) + r18, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0148, code lost:
        if (r0 == 2002876005) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0190, code lost:
        if (r0 == 2002876005) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01f7, code lost:
        if (r0 == 1684892784) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01f9, code lost:
        if (r18 <= 0) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01fb, code lost:
        r12 = 2;
        r9 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0200, code lost:
        if (r0 == 1684892784) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0206, code lost:
        if (r0 == 1684305011) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x020b, code lost:
        if (r0 != 1969517683) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x020d, code lost:
        r27.A02 = new com.facebook.ads.redexgen.X.C2D().A0g(r23).A11(r7).A0b(r12).A0m(r9).A0u(r2).A10(r24).A14();
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0237, code lost:
        if (r0 != 1682927731) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0239, code lost:
        r3 = r5 - 8;
        r1 = java.util.Arrays.copyOf(com.facebook.ads.redexgen.X.IO.A02, com.facebook.ads.redexgen.X.IO.A02.length + r3);
        r19.A0f(r8 + 8);
        r19.A0k(r1, com.facebook.ads.redexgen.X.IO.A02.length, r3);
        r6 = com.facebook.ads.redexgen.X.AbstractC0676Gr.A06(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0259, code lost:
        if (r0 != 1684425825) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x025b, code lost:
        r3 = r5 - 12;
        r1 = new byte[r3 + 4];
        r1[0] = 102;
        r1[1] = 76;
        r1[2] = 97;
        r1[3] = 67;
        r19.A0f(r8 + 12);
        r19.A0k(r1, 4, r3);
        r6 = com.facebook.ads.redexgen.X.AbstractC0517Am.A04(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0287, code lost:
        if (r0 != 1634492771) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0289, code lost:
        r3 = r5 - 12;
        r1 = new byte[r3];
        r19.A0f(r8 + 12);
        r19.A0k(r1, 0, r3);
        r3 = com.facebook.ads.redexgen.X.C3U.A00(r1);
        r9 = ((java.lang.Integer) r3.first).intValue();
        r12 = ((java.lang.Integer) r3.second).intValue();
        r6 = com.facebook.ads.redexgen.X.AbstractC0517Am.A04(r1);
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0T(com.facebook.ads.redexgen.X.C4J r19, int r20, int r21, int r22, int r23, java.lang.String r24, boolean r25, com.facebook.ads.androidx.media3.common.DrmInitData r26, com.facebook.ads.redexgen.X.IM r27, int r28) throws com.facebook.ads.redexgen.X.C03182i {
        /*
            Method dump skipped, instructions count: 1455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.IO.A0T(com.facebook.ads.redexgen.X.4J, int, int, int, int, java.lang.String, boolean, com.facebook.ads.androidx.media3.common.DrmInitData, com.facebook.ads.redexgen.X.IM, int):void");
    }

    static {
        A0P();
        A03 = new int[]{-3374493, -128628077, -2011932550, 38936541};
        A02 = AbstractC03624a.A1G(A0M(351, 8, 8));
    }

    public static float A00(C4J c4j, int i) {
        c4j.A0f(i + 8);
        int vSpacing = c4j.A0L();
        int hSpacing = c4j.A0L();
        return vSpacing / hSpacing;
    }

    public static int A01(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        String[] strArr = A01;
        if (strArr[1].charAt(26) != strArr[6].charAt(26)) {
            String[] strArr2 = A01;
            strArr2[0] = "Iy7m3jJh";
            strArr2[3] = "9tkcHcc8";
            if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
                return 3;
            }
            if (i == 1835365473) {
                return 5;
            }
            return -1;
        }
        throw new RuntimeException();
    }

    public static int A02(C4J c4j) {
        int A0I = c4j.A0I();
        int i = A0I & 127;
        while (true) {
            int i2 = A0I & 128;
            String[] strArr = A01;
            String str = strArr[7];
            String str2 = strArr[4];
            int size = str.charAt(30);
            int currentByte = str2.charAt(30);
            if (size == currentByte) {
                throw new RuntimeException();
            }
            A01[5] = "pSNibJ1kKp1RE21akOqiyNuWX3n84SWQ";
            if (i2 == 128) {
                A0I = c4j.A0I();
                int i3 = i << 7;
                String[] strArr2 = A01;
                String str3 = strArr2[0];
                String str4 = strArr2[3];
                int size2 = str3.length();
                int currentByte2 = str4.length();
                if (size2 != currentByte2) {
                    String[] strArr3 = A01;
                    strArr3[0] = "dUXzi2Ex";
                    strArr3[3] = "FqHw8aws";
                    int currentByte3 = A0I & 127;
                    i = i3 | currentByte3;
                } else {
                    A01[2] = "53iEjHDa99dBpQfClHLnj3Lr";
                    int currentByte4 = A0I & 127;
                    i = i3 | currentByte4;
                }
            } else {
                return i;
            }
        }
    }

    public static int A03(C4J c4j) {
        c4j.A0f(16);
        return c4j.A0C();
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x000d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A04(com.facebook.ads.redexgen.X.C4J r7, int r8, int r9, int r10) throws com.facebook.ads.redexgen.X.C03182i {
        /*
            int r3 = r7.A09()
            if (r3 < r9) goto L52
            r1 = 1
        L7:
            r0 = 0
            com.facebook.ads.redexgen.X.GZ.A01(r1, r0)
        Lb:
            int r0 = r3 - r9
            if (r0 >= r10) goto L54
            r7.A0f(r3)
            int r6 = r7.A0C()
            if (r6 <= 0) goto L50
            r4 = 1
        L19:
            r5 = 1090(0x442, float:1.527E-42)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.IO.A01
            r0 = 5
            r1 = r1[r0]
            r0 = 23
            char r1 = r1.charAt(r0)
            r0 = 87
            if (r1 == r0) goto L30
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L30:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.IO.A01
            java.lang.String r1 = "6gtDIh58mAlo0zqgdjwPUqi1ndJRBK82"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "DRBAnAjKoyJp6qnYv3HHxzBKoLLYYD5q"
            r0 = 4
            r2[r0] = r1
            r1 = 30
            r0 = 79
            java.lang.String r0 = A0M(r5, r1, r0)
            com.facebook.ads.redexgen.X.GZ.A01(r4, r0)
            int r0 = r7.A0C()
            if (r0 != r8) goto L4e
            return r3
        L4e:
            int r3 = r3 + r6
            goto Lb
        L50:
            r4 = 0
            goto L19
        L52:
            r1 = 0
            goto L7
        L54:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.IO.A04(com.facebook.ads.redexgen.X.4J, int, int, int):int");
    }

    public static long A05(C4J c4j) {
        int fullAtom = 8;
        c4j.A0f(8);
        if (II.A01(c4j.A0C()) != 0) {
            fullAtom = 16;
        }
        c4j.A0g(fullAtom);
        return c4j.A0Q();
    }

    public static Pair<Long, String> A06(C4J c4j) {
        c4j.A0f(8);
        int fullAtom = II.A01(c4j.A0C());
        int languageCode = fullAtom == 0 ? 8 : 16;
        c4j.A0g(languageCode);
        long A0Q = c4j.A0Q();
        int version = fullAtom == 0 ? 4 : 8;
        c4j.A0g(version);
        int A0M = c4j.A0M();
        int languageCode2 = A0M >> 10;
        StringBuilder append = new StringBuilder().append(A0M(0, 0, 93)).append((char) ((languageCode2 & 31) + 96));
        int languageCode3 = A0M >> 5;
        StringBuilder append2 = append.append((char) ((languageCode3 & 31) + 96));
        int languageCode4 = A0M & 31;
        return Pair.create(Long.valueOf(A0Q), append2.append((char) (languageCode4 + 96)).toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
        throw new java.lang.RuntimeException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, com.facebook.ads.redexgen.X.C0723In> A07(com.facebook.ads.redexgen.X.C4J r11, int r12, int r13) throws com.facebook.ads.redexgen.X.C03182i {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.IO.A07(com.facebook.ads.redexgen.X.4J, int, int):android.util.Pair");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004e, code lost:
        if (r0 > 0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0050, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
        if (r0 > 0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
        r5 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, com.facebook.ads.redexgen.X.C0723In> A08(com.facebook.ads.redexgen.X.C4J r6, int r7, int r8) throws com.facebook.ads.redexgen.X.C03182i {
        /*
            int r3 = r6.A09()
        L4:
            int r4 = r3 - r7
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.IO.A01
            r0 = 0
            r1 = r2[r0]
            r0 = 3
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L1e
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1e:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.IO.A01
            java.lang.String r1 = "alPn9WvAmZr8sIghV9sZ4SJG"
            r0 = 2
            r2[r0] = r1
            if (r4 >= r8) goto L85
            r6.A0f(r3)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.IO.A01
            r0 = 1
            r1 = r2[r0]
            r0 = 6
            r2 = r2[r0]
            r0 = 26
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L6e
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.IO.A01
            java.lang.String r1 = "bSC6gQO3"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "sEisHoVo"
            r0 = 3
            r2[r0] = r1
            int r0 = r6.A0C()
            if (r0 <= 0) goto L81
        L50:
            r5 = 1
        L51:
            r4 = 1090(0x442, float:1.527E-42)
            r2 = 30
            r1 = 79
            java.lang.String r1 = A0M(r4, r2, r1)
            com.facebook.ads.redexgen.X.GZ.A01(r5, r1)
            int r2 = r6.A0C()
            r1 = 1936289382(0x73696e66, float:1.8494329E31)
            if (r2 != r1) goto L83
            android.util.Pair r1 = A07(r6, r3, r0)
            if (r1 == 0) goto L83
            return r1
        L6e:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.IO.A01
            java.lang.String r1 = "sCQufaVXehZdAx160HDrkvqq2FYTSg6V"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "xgFgm7GbjtAXUGsxujgneuzUGgVoDuJS"
            r0 = 6
            r2[r0] = r1
            int r0 = r6.A0C()
            if (r0 <= 0) goto L81
            goto L50
        L81:
            r5 = 0
            goto L51
        L83:
            int r3 = r3 + r0
            goto L4
        L85:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.IO.A08(com.facebook.ads.redexgen.X.4J, int, int):android.util.Pair");
    }

    public static Pair<long[], long[]> A09(C1822kj c1822kj) {
        long j;
        C1821ki elstAtom = c1822kj.A07(Atom.TYPE_elst);
        if (elstAtom == null) {
            return null;
        }
        C4J c4j = elstAtom.A00;
        String[] strArr = A01;
        if (strArr[1].charAt(26) != strArr[6].charAt(26)) {
            String[] strArr2 = A01;
            strArr2[7] = "nlx0JEXKjNTNdSyjBy8qhdzuridSUNe7";
            strArr2[4] = "QPF9oPdHODxNb0EXvgymvar5stnTE0Tg";
            c4j.A0f(8);
            int version = II.A01(c4j.A0C());
            int fullAtom = c4j.A0L();
            long[] jArr = new long[fullAtom];
            long[] jArr2 = new long[fullAtom];
            for (int i = 0; i < fullAtom; i++) {
                jArr[i] = version == 1 ? c4j.A0R() : c4j.A0Q();
                if (version == 1) {
                    j = c4j.A0P();
                } else {
                    int entryCount = c4j.A0C();
                    j = entryCount;
                }
                jArr2[i] = j;
                int entryCount2 = c4j.A0b();
                if (entryCount2 == 1) {
                    c4j.A0g(2);
                } else {
                    throw new IllegalArgumentException(A0M(TXVodDownloadDataSource.QUALITY_540P, 23, 90));
                }
            }
            return Pair.create(jArr, jArr2);
        }
        throw new RuntimeException();
    }

    public static Pair<Metadata, Metadata> A0A(C1821ki c1821ki) {
        C4J c4j = c1821ki.A00;
        c4j.A0f(8);
        Metadata metadata = null;
        Metadata metadata2 = null;
        while (true) {
            int A07 = c4j.A07();
            String[] strArr = A01;
            if (strArr[7].charAt(30) == strArr[4].charAt(30)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[0] = "ATF6ss1I";
            strArr2[3] = "jntry4xS";
            if (A07 >= 8) {
                int A09 = c4j.A09();
                int A0C = c4j.A0C();
                int A0C2 = c4j.A0C();
                if (A0C2 == 1835365473) {
                    c4j.A0f(A09);
                    metadata = A0E(c4j, A09 + A0C);
                } else if (A0C2 == 1936553057) {
                    c4j.A0f(A09);
                    metadata2 = A0D(c4j, A09 + A0C);
                }
                c4j.A0f(A09 + A0C);
            } else {
                return Pair.create(metadata, metadata2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005d, code lost:
        if (r4 != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005f, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0061, code lost:
        if (r4 != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
        return new com.facebook.ads.androidx.media3.common.Metadata(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.androidx.media3.common.Metadata A0C(com.facebook.ads.redexgen.X.C4J r5, int r6) {
        /*
            r0 = 8
            r5.A0g(r0)
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
        La:
            int r0 = r5.A09()
            if (r0 >= r6) goto L39
            com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame r4 = com.facebook.ads.redexgen.X.IZ.A04(r5)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.IO.A01
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 24
            if (r1 == r0) goto L27
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L27:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.IO.A01
            java.lang.String r1 = "lHUs7TBcARFSvdLvQvihflkVmEpZ1MYm"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "ww6ZL200nHcHREaExV9g08P8Dpl3Z1fQ"
            r0 = 4
            r2[r0] = r1
            if (r4 == 0) goto La
            r3.add(r4)
            goto La
        L39:
            boolean r4 = r3.isEmpty()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.IO.A01
            r0 = 1
            r1 = r2[r0]
            r0 = 6
            r2 = r2[r0]
            r0 = 26
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L61
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.IO.A01
            java.lang.String r1 = "WnDUA4AhIDsAjF22CXXz4OtQUCX0JoWn"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "j7UA12dewj7emLVLNadXlb6UYVuvbHls"
            r0 = 4
            r2[r0] = r1
            if (r4 == 0) goto L64
        L5f:
            r0 = 0
        L60:
            return r0
        L61:
            if (r4 == 0) goto L64
            goto L5f
        L64:
            com.facebook.ads.androidx.media3.common.Metadata r0 = new com.facebook.ads.androidx.media3.common.Metadata
            r0.<init>(r3)
            goto L60
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.IO.A0C(com.facebook.ads.redexgen.X.4J, int):com.facebook.ads.androidx.media3.common.Metadata");
    }

    public static Metadata A0D(C4J c4j, int i) {
        c4j.A0g(12);
        while (true) {
            int A09 = c4j.A09();
            if (A01[5].charAt(23) != 'W') {
                throw new RuntimeException();
            }
            A01[2] = "yKVAIw0tCkGB7M4Cua27Coqh";
            if (A09 >= i) {
                return null;
            }
            int atomSize = c4j.A09();
            int A0C = c4j.A0C();
            int atomPosition = c4j.A0C();
            if (atomPosition == 1935766900) {
                if (A0C < 14) {
                    return null;
                }
                c4j.A0g(5);
                int A0I = c4j.A0I();
                if (A0I == 12 || A0I == 13) {
                    float f = A0I == 12 ? 240.0f : 120.0f;
                    c4j.A0g(1);
                    return new Metadata(new SmtaMetadataEntry(f, c4j.A0I()));
                }
                return null;
            }
            c4j.A0f(atomSize + A0C);
        }
    }

    public static Metadata A0E(C4J c4j, int i) {
        c4j.A0g(8);
        A0Q(c4j);
        while (c4j.A09() < i) {
            int A09 = c4j.A09();
            int atomType = c4j.A0C();
            int atomSize = c4j.A0C();
            if (atomSize == 1768715124) {
                c4j.A0f(A09);
                return A0C(c4j, A09 + atomType);
            }
            c4j.A0f(A09 + atomType);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x016c, code lost:
        r2 = com.facebook.ads.redexgen.X.IO.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x017f, code lost:
        if (r2[0].length() == r2[3].length()) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0183, code lost:
        com.facebook.ads.redexgen.X.IO.A01[5] = "mlJGx5h1gegl7007OPiYCkGWkqECmimV";
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x018a, code lost:
        if (r7 == 1414810956) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x019c, code lost:
        if (com.facebook.ads.redexgen.X.IO.A01[5].charAt(23) == 'W') goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01a3, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01a4, code lost:
        com.facebook.ads.redexgen.X.IO.A01[2] = "522w9jUs1Cdec5FzFXJEv7rx";
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01ab, code lost:
        if (r7 == 1954034535) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01b0, code lost:
        if (r7 == 2004251764) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01b5, code lost:
        if (r7 == 1937010800) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01ba, code lost:
        if (r7 != 1664495672) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01bc, code lost:
        r8 = r8;
        r9 = r9;
        A0S(r24, r7, r8, r9, r25, r27, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01cb, code lost:
        if (r7 != 1835365492) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01cd, code lost:
        A0U(r24, r7, r8, r25, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01d5, code lost:
        if (r7 != 1667329389) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01d7, code lost:
        r14.A02 = new com.facebook.ads.redexgen.X.C2D().A0g(r25).A11(A0M(711, 27, 38)).A14();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f8, code lost:
        if (r7 != 1835823201) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00fd, code lost:
        if (r7 == 1685353315) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0102, code lost:
        if (r7 == 1685353317) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0107, code lost:
        if (r7 == 1685353320) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x010c, code lost:
        if (r7 == 1685353324) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0111, code lost:
        if (r7 == 1685353336) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0116, code lost:
        if (r7 == 1935764850) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x011b, code lost:
        if (r7 == 1935767394) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0120, code lost:
        if (r7 == 1819304813) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0125, code lost:
        if (r7 == 1936684916) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x012a, code lost:
        if (r7 == 1953984371) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x012f, code lost:
        if (r7 == 778924082) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0134, code lost:
        if (r7 == 778924083) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0139, code lost:
        if (r7 == 1835557169) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x013e, code lost:
        if (r7 == 1835560241) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0143, code lost:
        if (r7 == 1634492771) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0148, code lost:
        if (r7 == 1634492791) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x014d, code lost:
        if (r7 == 1970037111) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0152, code lost:
        if (r7 == 1332770163) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0157, code lost:
        if (r7 != 1716281667) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0169, code lost:
        if (r7 != 1835823201) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.IM A0H(com.facebook.ads.redexgen.X.C4J r24, int r25, int r26, java.lang.String r27, com.facebook.ads.androidx.media3.common.DrmInitData r28, boolean r29) throws com.facebook.ads.redexgen.X.C03182i {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.IO.A0H(com.facebook.ads.redexgen.X.4J, int, int, java.lang.String, com.facebook.ads.androidx.media3.common.DrmInitData, boolean):com.facebook.ads.redexgen.X.IM");
    }

    public static ByteBuffer A0N() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.ip != com.google.common.base.Function<com.facebook.ads.androidx.media3.extractor.mp4.Track, com.facebook.ads.androidx.media3.extractor.mp4.Track> */
    public static List<C0725Ip> A0O(C1822kj c1822kj, C0667Gi c0667Gi, long j, DrmInitData drmInitData, boolean z, boolean z2, InterfaceC1706ip<C0722Im, C0722Im> interfaceC1706ip) throws C03182i {
        C0722Im A43;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < c1822kj.A01.size(); i++) {
            C1822kj c1822kj2 = c1822kj.A01.get(i);
            if (((II) c1822kj2).A00 == 1953653099 && (A43 = interfaceC1706ip.A43(A0J(c1822kj2, (C1821ki) C3M.A01(c1822kj.A07(Atom.TYPE_mvhd)), j, drmInitData, z, z2))) != null) {
                C1822kj c1822kj3 = (C1822kj) C3M.A01(c1822kj2.A06(Atom.TYPE_mdia));
                if (A01[2].length() != 24) {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[0] = "jveTcVJC";
                strArr[3] = "kDhQUkZe";
                arrayList.add(A0L(A43, (C1822kj) C3M.A01(((C1822kj) C3M.A01(c1822kj3.A06(Atom.TYPE_minf))).A06(Atom.TYPE_stbl)), c0667Gi));
            }
        }
        return arrayList;
    }

    public static void A0Q(C4J c4j) {
        int A09 = c4j.A09();
        c4j.A0g(4);
        if (c4j.A0C() != 1751411826) {
            A09 += 4;
        }
        c4j.A0f(A09);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<byte[]> */
    public static void A0S(C4J c4j, int i, int i2, int i3, int i4, String str, IM im) {
        String A0M;
        c4j.A0f(i2 + 8 + 8);
        AbstractC0517Am abstractC0517Am = null;
        long j = Long.MAX_VALUE;
        if (i == 1414810956) {
            A0M = A0M(691, 20, 103);
        } else if (i == 1954034535) {
            A0M = A0M(784, 28, 58);
            int sampleDescriptionLength = (i3 - 8) - 8;
            byte[] bArr = new byte[sampleDescriptionLength];
            c4j.A0k(bArr, 0, sampleDescriptionLength);
            abstractC0517Am = AbstractC0517Am.A04(bArr);
        } else if (i == 2004251764) {
            A0M = A0M(763, 21, 88);
        } else if (i == 1937010800) {
            A0M = A0M(691, 20, 103);
            j = 0;
        } else if (i == 1664495672) {
            A0M = A0M(738, 25, 73);
            im.A01 = 1;
        } else {
            throw new IllegalStateException();
        }
        im.A02 = new C2D().A0g(i4).A11(A0M).A10(str).A0s(j).A12(abstractC0517Am).A14();
    }

    public static void A0U(C4J c4j, int i, int i2, int i3, IM im) {
        c4j.A0f(i2 + 8 + 8);
        if (i == 1835365492) {
            c4j.A0U();
            String A0U = c4j.A0U();
            if (A0U != null) {
                im.A02 = new C2D().A0g(i3).A11(A0U).A14();
            }
        }
    }

    public static boolean A0V(long[] jArr, long j, long j2, long j3) {
        int latestDelayIndex = jArr.length - 1;
        int A07 = AbstractC03624a.A07(4, 0, latestDelayIndex);
        int lastIndex = jArr.length;
        int latestDelayIndex2 = AbstractC03624a.A07(lastIndex - 4, 0, latestDelayIndex);
        int lastIndex2 = (jArr[0] > j2 ? 1 : (jArr[0] == j2 ? 0 : -1));
        if (lastIndex2 <= 0) {
            int i = (j2 > jArr[A07] ? 1 : (j2 == jArr[A07] ? 0 : -1));
            String[] strArr = A01;
            String str = strArr[0];
            String str2 = strArr[3];
            int length = str.length();
            int lastIndex3 = str2.length();
            if (length != lastIndex3) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[7] = "4d2838LB6zuHL2SDSRFgaAe0bfX5eWcN";
            strArr2[4] = "2DmC9sheXkti4jYQDflGydtNBiOhlXlc";
            if (i < 0) {
                int lastIndex4 = (jArr[latestDelayIndex2] > j3 ? 1 : (jArr[latestDelayIndex2] == j3 ? 0 : -1));
                if (lastIndex4 < 0) {
                    int lastIndex5 = (j3 > j ? 1 : (j3 == j ? 0 : -1));
                    if (lastIndex5 <= 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0004 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] A0W(com.facebook.ads.redexgen.X.C4J r6, int r7, int r8) {
        /*
            int r3 = r7 + 8
        L2:
            int r0 = r3 - r7
            if (r0 >= r8) goto L49
            r6.A0f(r3)
            int r5 = r6.A0C()
            int r4 = r6.A0C()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.IO.A01
            r0 = 7
            r1 = r2[r0]
            r0 = 4
            r2 = r2[r0]
            r0 = 30
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L43
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.IO.A01
            java.lang.String r1 = "QfAHDCYR"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "If6V2JqI"
            r0 = 3
            r2[r0] = r1
            r0 = 1886547818(0x70726f6a, float:3.0012025E29)
            if (r4 != r0) goto L41
            byte[] r1 = r6.A0l()
            int r0 = r3 + r5
            byte[] r0 = java.util.Arrays.copyOfRange(r1, r3, r0)
            return r0
        L41:
            int r3 = r3 + r5
            goto L2
        L43:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L49:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.IO.A0W(com.facebook.ads.redexgen.X.4J, int, int):byte[]");
    }
}
