package com.mbridge.msdk.foundation.tools;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class h0 {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f9103a;
    public static final int[] b;

    static {
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        f9103a = charArray;
        int[] iArr = new int[256];
        b = iArr;
        Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i = 0; i < length; i++) {
            b[f9103a[i]] = i;
        }
        b[61] = 0;
    }

    public static String a(String str) {
        byte[] b2 = b(str);
        if (b2 != null && b2.length != 0) {
            return new String(b2, StandardCharsets.UTF_8);
        }
        return "";
    }

    public static byte[] b(String str) {
        int i;
        int i2;
        int i3;
        int length = str.length();
        if (length == 0) {
            return new byte[0];
        }
        int i4 = length - 1;
        int i5 = 0;
        while (i5 < i4 && b[str.charAt(i5) & 255] < 0) {
            i5++;
        }
        while (i4 > 0 && b[str.charAt(i4) & 255] < 0) {
            i4--;
        }
        if (str.charAt(i4) == '=') {
            if (str.charAt(i4 - 1) == '=') {
                i = 2;
            } else {
                i = 1;
            }
        } else {
            i = 0;
        }
        int i6 = (i4 - i5) + 1;
        if (length > 76) {
            if (str.charAt(76) == '\r') {
                i3 = i6 / 78;
            } else {
                i3 = 0;
            }
            i2 = i3 << 1;
        } else {
            i2 = 0;
        }
        int i7 = (((i6 - i2) * 6) >> 3) - i;
        byte[] bArr = new byte[i7];
        int i8 = (i7 / 3) * 3;
        int i9 = 0;
        int i10 = 0;
        while (i9 < i8) {
            int[] iArr = b;
            int i11 = i5 + 4;
            int i12 = iArr[str.charAt(i5 + 3)] | (iArr[str.charAt(i5 + 1)] << 12) | (iArr[str.charAt(i5)] << 18) | (iArr[str.charAt(i5 + 2)] << 6);
            bArr[i9] = (byte) (i12 >> 16);
            int i13 = i9 + 2;
            bArr[i9 + 1] = (byte) (i12 >> 8);
            i9 += 3;
            bArr[i13] = (byte) i12;
            if (i2 > 0 && (i10 = i10 + 1) == 19) {
                i5 += 6;
                i10 = 0;
            } else {
                i5 = i11;
            }
        }
        if (i9 < i7) {
            int i14 = 0;
            int i15 = 0;
            while (i5 <= i4 - i) {
                i14 |= b[str.charAt(i5)] << (18 - (i15 * 6));
                i15++;
                i5++;
            }
            int i16 = 16;
            while (i9 < i7) {
                bArr[i9] = (byte) (i14 >> i16);
                i16 -= 8;
                i9++;
            }
        }
        return bArr;
    }
}
