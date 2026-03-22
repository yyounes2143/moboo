package com.facebook.ads.redexgen.X;

import androidx.media3.exoplayer.RendererCapabilities;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.tencent.liteav.TXLiteAVCode;
import com.tencent.ugc.TXRecordCommon;
import com.vungle.ads.internal.protos.Sdk;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public abstract class GF {
    public static byte[] A00;
    public static String[] A01 = {"Jtf4c9GAOgAJpDK2mVqEjBHHHDeO7jol", "kDsThcfbWymyo7SA47OqEnjsA64Naf4x", "cJoAWc4I2qPJ3tdp2oEUxn8HL8nWEytb", "qFOfekTrSk46i", "58lsU6cH4CrpheTwcdx0E4dGrWTfnMIv", "Xoqjc4jVEqoArq5wHw2izr92BVYhns54", "K2bZ7AvhLOnhV8b3rnKBJIfNWJInr7Ql", "H1rRYQzsJBGjD"};
    public static final int[] A02;
    public static final int[] A03;
    public static final int[] A04;
    public static final int[] A05;
    public static final int[] A06;
    public static final int[] A07;

    public static String A0A(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 1);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A00 = new byte[]{100, 112, 97, 108, 106, 42, 100, 102, 54, 107, Byte.MAX_VALUE, 110, 99, 101, 37, 111, 107, 105, 57, 39, 51, 34, 47, 41, 105, 35, 39, 37, 117, 107, 44, 41, 37};
    }

    static {
        A0B();
        A03 = new int[]{1, 2, 3, 6};
        A05 = new int[]{48000, TXRecordCommon.AUDIO_SAMPLERATE_44100, TXRecordCommon.AUDIO_SAMPLERATE_32000};
        A06 = new int[]{24000, 22050, 16000};
        A04 = new int[]{2, 1, 2, 3, 3, 4, 4, 5};
        A02 = new int[]{32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, Sdk.SDKError.Reason.WEBVIEW_ERROR_VALUE, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 576, 640};
        A07 = new int[]{69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, TXLiteAVCode.WARNING_CAMERA_IS_OCCUPIED, 1253, 1393};
    }

    public static int A00(int i, int i2) {
        int sampleRate = i2 / 2;
        if (i >= 0) {
            int halfFrmsizecod = A05.length;
            if (i >= halfFrmsizecod || i2 < 0) {
                return -1;
            }
            int halfFrmsizecod2 = A07.length;
            if (sampleRate >= halfFrmsizecod2) {
                return -1;
            }
            int i3 = A05[i];
            if (i3 == 44100) {
                int halfFrmsizecod3 = i2 % 2;
                return (A07[sampleRate] + halfFrmsizecod3) * 2;
            }
            int i4 = A02[sampleRate];
            String[] strArr = A01;
            String str = strArr[5];
            String str2 = strArr[0];
            int sampleRate2 = str.charAt(4);
            int halfFrmsizecod4 = str2.charAt(4);
            if (sampleRate2 != halfFrmsizecod4) {
                throw new RuntimeException();
            }
            A01[2] = "CpIhzBdts1JRjCy6aRe02MLhvkoBTutu";
            if (i3 == 32000) {
                int halfFrmsizecod5 = i4 * 6;
                return halfFrmsizecod5;
            }
            int halfFrmsizecod6 = i4 * 4;
            return halfFrmsizecod6;
        }
        return -1;
    }

    public static int A01(int i, int i2, int i3) {
        return (i * i2) / (i3 * 32);
    }

    public static int A02(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int startIndex = byteBuffer.limit();
        int i = startIndex - 10;
        for (int i2 = position; i2 <= i; i2++) {
            int startIndex2 = i2 + 4;
            int endIndex = AbstractC03624a.A0F(byteBuffer, startIndex2) & (-2);
            if (endIndex == -126718022) {
                return i2 - position;
            }
        }
        return -1;
    }

    public static int A03(ByteBuffer byteBuffer) {
        boolean isEac3 = ((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10;
        if (isEac3) {
            int numblkscod = ((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3;
            return A03[numblkscod] * 256;
        }
        return 1536;
    }

    public static int A04(ByteBuffer byteBuffer, int i) {
        boolean z = (byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187;
        int position = byteBuffer.position() + i;
        if (A01[2].charAt(30) != 't') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[7] = "2LNqrJlwnzIqb";
        strArr[3] = "f1x5AMhp2hTyk";
        return 40 << ((byteBuffer.get(position + (z ? 9 : 8)) >> 4) & 7);
    }

    public static int A05(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        boolean isEac3 = ((bArr[5] & 248) >> 3) > 10;
        if (isEac3) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        int fscod = (bArr[4] & 192) >> 6;
        return A00(fscod, bArr[4] & 63);
    }

    public static int A06(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            return 40 << ((bArr[(bArr[7] & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
        }
        return 0;
    }

    public static C2061or A07(C4J c4j, String str, String str2, DrmInitData drmInitData) {
        C4I c4i = new C4I();
        c4i.A0C(c4j);
        int fscod = c4i.A04(2);
        int constantBitrate = A05[fscod];
        c4i.A09(8);
        int i = A04[c4i.A04(3)];
        if (c4i.A04(1) != 0) {
            i++;
        }
        int fscod2 = c4i.A04(5);
        int halfFrmsizecod = A02[fscod2] * 1000;
        c4i.A06();
        c4j.A0f(c4i.A02());
        return new C2D().A0y(str).A11(A0A(0, 9, 4)).A0b(i).A0m(constantBitrate).A0u(drmInitData).A10(str2).A0a(halfFrmsizecod).A0j(halfFrmsizecod).A14();
    }

    public static C2061or A08(C4J c4j, String str, String str2, DrmInitData drmInitData) {
        C4I c4i = new C4I();
        c4i.A0C(c4j);
        int fscod = c4i.A04(13) * 1000;
        c4i.A09(3);
        int peakBitrate = c4i.A04(2);
        int sampleRate = A05[peakBitrate];
        c4i.A09(10);
        int channelCount = A04[c4i.A04(3)];
        if (c4i.A04(1) != 0) {
            channelCount++;
        }
        c4i.A09(3);
        int A042 = c4i.A04(4);
        c4i.A09(1);
        String[] strArr = A01;
        String str3 = strArr[5];
        String str4 = strArr[0];
        int peakBitrate2 = str3.charAt(4);
        if (peakBitrate2 != str4.charAt(4)) {
            throw new RuntimeException();
        }
        A01[6] = "mDbBoGQY4vpPxfXnFDb06caCJn7GdJsS";
        if (A042 > 0) {
            c4i.A0A(6);
            if (c4i.A04(1) != 0) {
                channelCount += 2;
            }
            c4i.A09(1);
        }
        String A0A = A0A(9, 10, 11);
        int peakBitrate3 = c4i.A01();
        if (peakBitrate3 > 7) {
            c4i.A09(7);
            if (c4i.A04(1) != 0) {
                A0A = A0A(19, 14, 71);
            }
        }
        c4i.A06();
        c4j.A0f(c4i.A02());
        return new C2D().A0y(str).A11(A0A).A0b(channelCount).A0m(sampleRate).A0u(drmInitData).A10(str2).A0j(fscod).A14();
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0195, code lost:
        r24.A09(12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x019c, code lost:
        if (r0 != 3) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x019e, code lost:
        r16 = r24.A04(5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01a6, code lost:
        if (r24.A0H() == false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01a8, code lost:
        r24.A09(5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01af, code lost:
        if (r24.A0H() == false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01b1, code lost:
        r10 = 4;
        r24.A09(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01b5, code lost:
        r12 = r24.A0H();
        r1 = com.facebook.ads.redexgen.X.GF.A01[1].charAt(12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01c6, code lost:
        if (r1 == 111) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01c8, code lost:
        com.facebook.ads.redexgen.X.GF.A01[4] = "PWQ2PfTArLXSbAuYPJT5x4iA7pnZIJ5J";
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01cf, code lost:
        if (r12 == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01d1, code lost:
        r24.A09(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01d8, code lost:
        if (r24.A0H() == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01da, code lost:
        r24.A09(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01e1, code lost:
        if (r24.A0H() == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01e3, code lost:
        r24.A09(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01ea, code lost:
        if (r24.A0H() == false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01ec, code lost:
        r24.A09(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01f3, code lost:
        if (r24.A0H() == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01f5, code lost:
        r24.A09(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01fc, code lost:
        if (r24.A0H() == false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01fe, code lost:
        r24.A09(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0205, code lost:
        if (r24.A0H() == false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x020b, code lost:
        if (r24.A0H() == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x020d, code lost:
        r24.A09(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0214, code lost:
        if (r24.A0H() == false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0216, code lost:
        r24.A09(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x021d, code lost:
        if (r24.A0H() == false) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x021f, code lost:
        r24.A09(5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0226, code lost:
        if (r24.A0H() == false) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0228, code lost:
        r24.A09(7);
        r10 = r24.A0H();
        r1 = com.facebook.ads.redexgen.X.GF.A01[1].charAt(12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x023d, code lost:
        if (r1 == 111) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0244, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0245, code lost:
        r2 = com.facebook.ads.redexgen.X.GF.A01;
        r2[7] = "3piylhlPW6ECi";
        r2[3] = "2ld3o4GemUbvA";
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0251, code lost:
        if (r12 == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0255, code lost:
        r10 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0258, code lost:
        com.facebook.ads.redexgen.X.GF.A01[6] = "rSblh4R2S5jwen1kap7KA3ClbKLn4xCa";
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x025f, code lost:
        if (r10 == false) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0261, code lost:
        r24.A09(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0266, code lost:
        r24.A09((r16 + 2) * 8);
        r24.A06();
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0272, code lost:
        r1 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x027c, code lost:
        if (r17 != 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c5, code lost:
        if (r17 != 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c7, code lost:
        r24.A09(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ca, code lost:
        if (r18 == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d0, code lost:
        if (r24.A0H() == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d2, code lost:
        r24.A09(5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d5, code lost:
        if (r11 != 0) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00db, code lost:
        if (r24.A0H() == false) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00dd, code lost:
        r1 = 6;
        r24.A09(6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e1, code lost:
        if (r3 != 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e7, code lost:
        if (r24.A0H() == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e9, code lost:
        r24.A09(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f0, code lost:
        if (r24.A0H() == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f2, code lost:
        r24.A09(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f5, code lost:
        r0 = r24.A04(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00fa, code lost:
        if (r0 != 1) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00fc, code lost:
        r24.A09(5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ff, code lost:
        r1 = com.facebook.ads.redexgen.X.GF.A01[4].length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x010b, code lost:
        if (r1 == 32) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x010d, code lost:
        r10 = com.facebook.ads.redexgen.X.GF.A01;
        r10[5] = "CT6fc8NDwAee95wvc4i3U0G4PwptFgbR";
        r10[0] = "cOprcaH4V9QUBwGl6SpW2PXD2gkWJWIT";
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0119, code lost:
        if (r3 >= 2) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0121, code lost:
        if (r24.A0H() == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0123, code lost:
        r24.A09(14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0126, code lost:
        if (r3 != 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012c, code lost:
        if (r24.A0H() == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x012e, code lost:
        r24.A09(14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0135, code lost:
        if (r24.A0H() == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0137, code lost:
        if (r7 != 0) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0139, code lost:
        r24.A09(5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x017a, code lost:
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x017b, code lost:
        if (r1 >= r5) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0181, code lost:
        if (r24.A0H() == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0183, code lost:
        r24.A09(5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0186, code lost:
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0189, code lost:
        com.facebook.ads.redexgen.X.GF.A01[2] = "TfLNzHkYjjGfwBXQwG7FQ44lMKhqfIt5";
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0190, code lost:
        if (r3 >= 2) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0193, code lost:
        if (r0 != 2) goto L87;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.GE A09(com.facebook.ads.redexgen.X.C4I r24) {
        /*
            Method dump skipped, instructions count: 888
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.GF.A09(com.facebook.ads.redexgen.X.4I):com.facebook.ads.redexgen.X.GE");
    }
}
