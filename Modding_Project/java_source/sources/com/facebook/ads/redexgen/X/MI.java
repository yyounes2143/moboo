package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Map;
import kotlin.io.encoding.Base64;
/* loaded from: assets/audience_network.dex */
public final class MI {
    public static byte[] A00;
    public static final String A01;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 9);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{44, Ascii.ETB, Ascii.CAN, Ascii.ESC, Ascii.NAK, Ascii.FS, 89, Ascii.CR, Ascii.SYN, 89, 9, Ascii.CAN, Ascii.VT, 10, Ascii.FS, 89, 19, 10, Ascii.SYN, Ascii.ETB, 89, Ascii.GS, Ascii.CAN, Ascii.CR, Ascii.CAN, 89, Ascii.DLE, Ascii.ETB, 89, 56, Ascii.GS, 56, Ascii.SUB, Ascii.CR, Ascii.DLE, Ascii.SYN, Ascii.ETB, 63, Ascii.CAN, Ascii.SUB, Ascii.CR, Ascii.SYN, Ascii.VT, 0, 87, 114, 119, 98, 119, 51, 50, 47, 53, 40, 57, 126, 97, 116, Byte.MAX_VALUE, 78, 125, 120, Byte.MAX_VALUE, 122, 49, 32, 51, 50, 40, 47, 38, 62, 47, Base64.padSymbol, Base64.padSymbol, 58, 38, 60, 33, 59, 41, 38, 42, 45, 54, 43, 60, 88, 95, 68, 89, 78, 116, 94, 89, 71, 116, 92, 78, 73, 116, 77, 74, 71, 71, 73, 74, 72, SignedBytes.MAX_POWER_OF_TWO, 50, 52, 51, 35, 76, 83, 94, 95, 85, 101, 79, 72, 86};
    }

    static {
        A03();
        A01 = MI.class.getSimpleName();
    }

    public static MH A00(C1376dL c1376dL, US us, String str, Uri uri, Map<String, String> extraData, N3 n3) {
        return A01(c1376dL, us, str, uri, extraData, true, false, n3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.MH A01(final com.facebook.ads.redexgen.X.C1376dL r15, final com.facebook.ads.redexgen.X.US r16, final java.lang.String r17, final android.net.Uri r18, final java.util.Map<java.lang.String, java.lang.String> r19, final boolean r20, boolean r21, com.facebook.ads.redexgen.X.N3 r22) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.MI.A01(com.facebook.ads.redexgen.X.dL, com.facebook.ads.redexgen.X.US, java.lang.String, android.net.Uri, java.util.Map, boolean, boolean, com.facebook.ads.redexgen.X.N3):com.facebook.ads.redexgen.X.MH");
    }

    public static boolean A04(String str) {
        return A02(82, 5, 80).equalsIgnoreCase(str) || A02(55, 9, 24).equalsIgnoreCase(str);
    }
}
