package com.cd_core4.cd_core.Des;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.lang.reflect.Array;
import kotlin.io.encoding.Base64;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DESAlgorithm {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static DESAlgorithm f5260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte[][] f5261Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (byte[][]) Array.newInstance(Byte.TYPE, 16, 48);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {57, 49, 41, 33, Ascii.EM, 17, 9, 1, 58, 50, 42, 34, Ascii.SUB, Ascii.DC2, 10, 2, 59, 51, 43, 35, Ascii.ESC, 19, Ascii.VT, 3, 60, 52, 44, 36, 63, 55, 47, 39, Ascii.US, Ascii.ETB, Ascii.SI, 7, 62, 54, 46, 38, Ascii.RS, Ascii.SYN, Ascii.SO, 6, Base64.padSymbol, 53, 45, 37, Ascii.GS, Ascii.NAK, Ascii.CR, 5, Ascii.FS, Ascii.DC4, Ascii.FF, 4};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final char[] f5258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new byte[64];

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5256Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new byte[256];

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5255Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new byte[256];

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static byte[] f5254Wwwwwwwwwwwwwwwwwwwwwwwwwww = new byte[48];

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5253Wwwwwwwwwwwwwwwwwwwwwwwwww = new byte[32];

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5252Wwwwwwwwwwwwwwwwwwwwwwwww = new byte[64];

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5251Wwwwwwwwwwwwwwwwwwwwwwww = {1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5250Wwwwwwwwwwwwwwwwwwwwwww = {Ascii.SO, 17, Ascii.VT, Ascii.CAN, 1, 5, 3, Ascii.FS, Ascii.SI, 6, Ascii.NAK, 10, Ascii.ETB, 19, Ascii.FF, 4, Ascii.SUB, 8, Ascii.DLE, 7, Ascii.ESC, Ascii.DC4, Ascii.CR, 2, 41, 52, Ascii.US, 37, 47, 55, Ascii.RS, 40, 51, 45, 33, 48, 44, 49, 39, 56, 34, 53, 46, 42, 50, 36, Ascii.GS, 32};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5249Wwwwwwwwwwwwwwwwwwwwww = {58, 50, 42, 34, Ascii.SUB, Ascii.DC2, 10, 2, 60, 52, 44, 36, Ascii.FS, Ascii.DC4, Ascii.FF, 4, 62, 54, 46, 38, Ascii.RS, Ascii.SYN, Ascii.SO, 6, SignedBytes.MAX_POWER_OF_TWO, 56, 48, 40, 32, Ascii.CAN, Ascii.DLE, 8, 57, 49, 41, 33, Ascii.EM, 17, 9, 1, 59, 51, 43, 35, Ascii.ESC, 19, Ascii.VT, 3, Base64.padSymbol, 53, 45, 37, Ascii.GS, Ascii.NAK, Ascii.CR, 5, 63, 55, 47, 39, Ascii.US, Ascii.ETB, Ascii.SI, 7};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5248Wwwwwwwwwwwwwwwwwwwww = {32, 1, 2, 3, 4, 5, 4, 5, 6, 7, 8, 9, 8, 9, 10, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, Ascii.CAN, Ascii.EM, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 1};

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5247Wwwwwwwwwwwwwwwwwwww = {Ascii.DLE, 7, Ascii.DC4, Ascii.NAK, Ascii.GS, Ascii.FF, Ascii.FS, 17, 1, Ascii.SI, Ascii.ETB, Ascii.SUB, 5, Ascii.DC2, Ascii.US, 10, 2, 8, Ascii.CAN, Ascii.SO, 32, Ascii.ESC, 3, 9, 19, Ascii.CR, Ascii.RS, 6, Ascii.SYN, Ascii.VT, 4, Ascii.EM};

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5246Wwwwwwwwwwwwwwwwwww = {Ascii.SO, 4, Ascii.CR, 1, 2, Ascii.SI, Ascii.VT, 8, 3, 10, 6, Ascii.FF, 5, 9, 0, 7, 0, Ascii.SI, 7, 4, Ascii.SO, 2, Ascii.CR, 1, 10, 6, Ascii.FF, Ascii.VT, 9, 5, 3, 8, 4, 1, Ascii.SO, 8, Ascii.CR, 6, 2, Ascii.VT, Ascii.SI, Ascii.FF, 9, 7, 3, 10, 5, 0, Ascii.SI, Ascii.FF, 8, 2, 4, 9, 1, 7, 5, Ascii.VT, 3, Ascii.SO, 10, 0, 6, Ascii.CR, Ascii.SI, 1, 8, Ascii.SO, 6, Ascii.VT, 3, 4, 9, 7, 2, Ascii.CR, Ascii.FF, 0, 5, 10, 3, Ascii.CR, 4, 7, Ascii.SI, 2, 8, Ascii.SO, Ascii.FF, 0, 1, 10, 6, 9, Ascii.VT, 5, 0, Ascii.SO, 7, Ascii.VT, 10, 4, Ascii.CR, 1, 5, 8, Ascii.FF, 6, 9, 3, 2, Ascii.SI, Ascii.CR, 8, 10, 1, 3, Ascii.SI, 4, 2, Ascii.VT, 6, 7, Ascii.FF, 0, 5, Ascii.SO, 9, 10, 0, 9, Ascii.SO, 6, 3, Ascii.SI, 5, 1, Ascii.CR, Ascii.FF, 7, Ascii.VT, 4, 2, 8, Ascii.CR, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, Ascii.SO, Ascii.FF, Ascii.VT, Ascii.SI, 1, Ascii.CR, 6, 4, 9, 8, Ascii.SI, 3, 0, Ascii.VT, 1, 2, Ascii.FF, 5, 10, Ascii.SO, 7, 1, 10, Ascii.CR, 0, 6, 9, 8, 7, 4, Ascii.SI, Ascii.SO, 3, Ascii.VT, 5, 2, Ascii.FF, 7, Ascii.CR, Ascii.SO, 3, 0, 6, 9, 10, 1, 2, 8, 5, Ascii.VT, Ascii.FF, 4, Ascii.SI, Ascii.CR, 8, Ascii.VT, 5, 6, Ascii.SI, 0, 3, 4, 7, 2, Ascii.FF, 1, 10, Ascii.SO, 9, 10, 6, 9, 0, Ascii.FF, Ascii.VT, 7, Ascii.CR, Ascii.SI, 1, 3, Ascii.SO, 5, 2, 8, 4, 3, Ascii.SI, 0, 6, 10, 1, Ascii.CR, 8, 9, 4, 5, Ascii.VT, Ascii.FF, 7, 2, Ascii.SO, 2, Ascii.FF, 4, 1, 7, 10, Ascii.VT, 6, 8, 5, 3, Ascii.SI, Ascii.CR, 0, Ascii.SO, 9, Ascii.SO, Ascii.VT, 2, Ascii.FF, 4, 7, Ascii.CR, 1, 5, 0, Ascii.SI, 10, 3, 9, 8, 6, 4, 2, 1, Ascii.VT, 10, Ascii.CR, 7, 8, Ascii.SI, 9, Ascii.FF, 5, 6, 3, 0, Ascii.SO, Ascii.VT, 8, Ascii.FF, 7, 1, Ascii.SO, 2, Ascii.CR, 6, Ascii.SI, 0, 9, 10, 4, 5, 3, Ascii.FF, 1, 10, Ascii.SI, 9, 2, 6, 8, 0, Ascii.CR, 3, 4, Ascii.SO, 7, 5, Ascii.VT, 10, Ascii.SI, 4, 2, 7, Ascii.FF, 9, 5, 6, 1, Ascii.CR, Ascii.SO, 0, Ascii.VT, 3, 8, 9, Ascii.SO, Ascii.SI, 5, 2, 8, Ascii.FF, 3, 7, 0, 4, 10, 1, Ascii.CR, Ascii.VT, 6, 4, 3, 2, Ascii.FF, 9, 5, Ascii.SI, 10, Ascii.VT, Ascii.SO, 1, 7, 6, 0, 8, Ascii.CR, 4, Ascii.VT, 2, Ascii.SO, Ascii.SI, 0, 8, Ascii.CR, 3, Ascii.FF, 9, 7, 5, 10, 6, 1, Ascii.CR, 0, Ascii.VT, 7, 4, 9, 1, 10, Ascii.SO, 3, 5, Ascii.FF, 2, Ascii.SI, 8, 6, 1, 4, Ascii.VT, Ascii.CR, Ascii.FF, 3, 7, Ascii.SO, 10, Ascii.SI, 6, 8, 0, 5, 9, 2, 6, Ascii.VT, Ascii.CR, 8, 1, 4, 10, 7, 9, 5, 0, Ascii.SI, Ascii.SO, 2, 3, Ascii.FF, Ascii.CR, 2, 8, 4, 6, Ascii.SI, Ascii.VT, 1, 10, 9, 3, Ascii.SO, 5, 0, Ascii.FF, 7, 1, Ascii.SI, Ascii.CR, 8, 10, 3, 7, 4, Ascii.FF, 5, 6, Ascii.VT, 0, Ascii.SO, 9, 2, 7, Ascii.VT, 4, 1, 9, Ascii.FF, Ascii.SO, 2, 0, 6, 10, Ascii.CR, Ascii.SI, 3, 5, 8, 2, 1, Ascii.SO, 7, 4, 10, 8, Ascii.CR, Ascii.SI, Ascii.FF, 9, 0, 3, 5, 6, Ascii.VT};

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f5245Wwwwwwwwwwwwwwwwww = {40, 8, 48, Ascii.DLE, 56, Ascii.CAN, SignedBytes.MAX_POWER_OF_TWO, 32, 39, 7, 47, Ascii.SI, 55, Ascii.ETB, 63, Ascii.US, 38, 6, 46, Ascii.SO, 54, Ascii.SYN, 62, Ascii.RS, 37, 5, 45, Ascii.CR, 53, Ascii.NAK, Base64.padSymbol, Ascii.GS, 36, 4, 44, Ascii.FF, 52, Ascii.DC4, 60, Ascii.FS, 35, 3, 43, Ascii.VT, 51, 19, 59, Ascii.ESC, 34, 2, 42, 10, 50, Ascii.DC2, 58, Ascii.SUB, 33, 1, 41, 9, 49, 17, 57, Ascii.EM};

    public static DESAlgorithm Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f5260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            f5260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DESAlgorithm();
        }
        return f5260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i + i4;
            bArr[i5] = (byte) (bArr[i5] ^ bArr2[i2 + i4]);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            f5255Wwwwwwwwwwwwwwwwwwwwwwwwwwww[i4] = bArr2[(bArr3[i4] + i2) - 1];
        }
        System.arraycopy(f5255Wwwwwwwwwwwwwwwwwwwwwwwwwwww, 0, bArr, i, i3);
    }

    public final char[] Wwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr) {
        char[] cArr = new char[bArr.length * 3];
        int i = 0;
        int i2 = 0;
        for (byte b : bArr) {
            int i3 = b & 255;
            if ((i3 >= 97 && i3 <= 122) || ((i3 >= 65 && i3 <= 90) || (i3 >= 48 && i3 <= 57))) {
                cArr[i2] = (char) i3;
                i++;
                i2++;
            } else {
                cArr[i2] = '%';
                int i4 = i2 + 2;
                char[] cArr2 = f5258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                cArr[i2 + 1] = cArr2[(i3 >>> 4) & 15];
                i2 += 3;
                cArr[i4] = cArr2[b & Ascii.SI];
                i += 3;
            }
        }
        char[] cArr3 = new char[i];
        System.arraycopy(cArr, 0, cArr3, 0, i);
        return cArr3;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, byte[] bArr2) {
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < 8; i4++) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i + i3, f5246Wwwwwwwwwwwwwwwwwww, (i4 * 64) + (((bArr2[i2] << 1) + bArr2[i2 + 5]) * 16) + (bArr2[i2 + 1] << 3) + (bArr2[i2 + 2] << 2) + (bArr2[i2 + 3] << 1) + bArr2[i2 + 4], 4);
            i3 += 4;
            i2 += 6;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(bArr, i, f5256Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0, i3);
        for (int i4 = 0; i4 < i2 - i3; i4++) {
            int i5 = i + i4;
            bArr[i5] = bArr[i5 + i3];
        }
        System.arraycopy(f5256Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0, bArr, (i + i2) - i3, i3);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, 8));
        byte[] bArr3 = f5257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr3, 0, bArr2, 0, 64);
        Wwwwwwwwwwwwwwwwwwwwwwww(bArr3, 0, bArr3, 0, f5259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 56);
        for (int i = 0; i < 16; i++) {
            byte[] bArr4 = f5257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            byte[] bArr5 = f5251Wwwwwwwwwwwwwwwwwwwwwwww;
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(bArr4, 0, 28, bArr5[i]);
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(bArr4, 28, 28, bArr5[i]);
            Wwwwwwwwwwwwwwwwwwwwwwww(this.f5261Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i], 0, bArr4, 0, f5250Wwwwwwwwwwwwwwwwwwwwwww, 48);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, byte[] bArr2) {
        Wwwwwwwwwwwwwwwwwwwwwwww(f5254Wwwwwwwwwwwwwwwwwwwwwwwwwww, 0, bArr, i, f5248Wwwwwwwwwwwwwwwwwwwww, 48);
        Wwwwwwwwwwwwwwwwwwwwwww(f5254Wwwwwwwwwwwwwwwwwwwwwwwwwww, 0, bArr2, 0, 48);
        Wwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i, f5254Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        Wwwwwwwwwwwwwwwwwwwwwwww(bArr, i, bArr, i, f5247Wwwwwwwwwwwwwwwwwwww, 32);
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str.getBytes());
        int i = 2;
        int length = (str2.length() - 1) * 2;
        if (str2.length() != 1) {
            i = length;
        }
        int i2 = ((i + 7) / 8) * 16;
        byte[] bytes = str2.getBytes();
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i3 / 2;
            if (i4 >= bytes.length) {
                break;
            }
            bArr[i3] = bytes[i4];
            bArr[i3 + 1] = 0;
        }
        for (int i5 = 0; i5 < i2; i5 += 8) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i5, bArr, i5, (byte) 0);
        }
        return new String(Wwwwwwwwwwwwwwwwwwwwwwwww(bArr));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, byte[] bArr2, int i2, byte b) {
        byte[] bArr3 = f5252Wwwwwwwwwwwwwwwwwwwwwwwww;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr3, 0, bArr2, i2, 64);
        Wwwwwwwwwwwwwwwwwwwwwwww(bArr3, 0, bArr3, 0, f5249Wwwwwwwwwwwwwwwwwwwwww, 64);
        if (b == 0) {
            for (int i3 = 0; i3 < 16; i3++) {
                byte[] bArr4 = f5252Wwwwwwwwwwwwwwwwwwwwwwwww;
                byte[] bArr5 = f5253Wwwwwwwwwwwwwwwwwwwwwwwwww;
                System.arraycopy(bArr4, 32, bArr5, 0, 32);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr4, 32, this.f5261Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i3]);
                Wwwwwwwwwwwwwwwwwwwwwww(bArr4, 32, bArr4, 0, 32);
                System.arraycopy(bArr5, 0, bArr4, 0, 32);
            }
        } else {
            for (int i4 = 15; i4 >= 0; i4--) {
                byte[] bArr6 = f5252Wwwwwwwwwwwwwwwwwwwwwwwww;
                byte[] bArr7 = f5253Wwwwwwwwwwwwwwwwwwwwwwwwww;
                System.arraycopy(bArr6, 0, bArr7, 0, 32);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr6, 0, this.f5261Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i4]);
                Wwwwwwwwwwwwwwwwwwwwwww(bArr6, 0, bArr6, 32, 32);
                System.arraycopy(bArr7, 0, bArr6, 32, 32);
            }
        }
        byte[] bArr8 = f5252Wwwwwwwwwwwwwwwwwwwwwwwww;
        Wwwwwwwwwwwwwwwwwwwwwwww(bArr8, 0, bArr8, 0, f5245Wwwwwwwwwwwwwwwwww, 64);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i, bArr8, 0, 64);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i + i4] = (byte) ((bArr2[(i4 / 8) + i2] >> (i4 % 8)) & 1);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < (i3 + 7) / 8; i4++) {
            bArr[i + i4] = 0;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = (i5 / 8) + i;
            bArr[i6] = (byte) (bArr[i6] | (bArr2[i2 + i5] << (i5 % 8)));
        }
    }
}
