package org.apache.commons.io;

import io.flutter.embedding.android.KeyboardMap;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class EndianUtils {
    public static int Wwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        return (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream) & 255) + ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream) & 255) << 8);
    }

    public static short Wwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        return (short) ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream) & 255) + ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream) & 255) << 8));
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i) {
        return (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i + 4) << 32) + (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i) & KeyboardMap.kValueMask);
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, 0);
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i) {
        return (bArr[i] & 255) + ((bArr[i + 1] & 255) << 8) + ((bArr[i + 2] & 255) << 16) + ((bArr[i + 3] & 255) << 24);
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        return (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream) & 255) + ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream) & 255) << 8) + ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream) & 255) << 16) + ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream) & 255) << 24);
    }

    public static float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        return Float.intBitsToFloat(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream));
    }

    public static double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        return Double.longBitsToDouble(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream));
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (-1 != read) {
            return read;
        }
        throw new EOFException("Unexpected EOF reached");
    }
}
