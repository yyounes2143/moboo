package com.applovin.impl;

import android.text.TextUtils;
import android.util.Base64;
import com.applovin.impl.sdk.utils.StringUtils;
import com.google.common.base.Ascii;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class i4 {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f3149a = {-83, -98, -53, -112, -29, -118, 55, 117, 59, 8, -12, -15, 73, 110, -67, 57, 117, 4, -26, 97, 66, -12, 125, 91, -119, -103, -30, 114, 123, 54, 51, -77};
    private static final byte[] b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum a {
        NONE(-1),
        DEFAULT(0),
        V2(1);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f3150a;

        a(int i) {
            this.f3150a = i;
        }

        public int b() {
            return this.f3150a;
        }

        public static a a(int i) {
            if (i == 0) {
                return DEFAULT;
            }
            if (i == 1) {
                return V2;
            }
            return DEFAULT;
        }
    }

    static {
        byte[] bArr = new byte[32];
        b = bArr;
        System.arraycopy(new byte[]{Ascii.DC2, Ascii.FF, Ascii.FS, Ascii.DC4, 17, Ascii.ETB, Ascii.SUB, 9, Ascii.NAK, 3, Ascii.SO, Ascii.GS, 4, 0, 2, 7, 10, Ascii.GS, 6, Ascii.DC4, 1}, 0, bArr, 0, 21);
    }

    public static byte[] a(String str, long j, a aVar, String str2, com.applovin.impl.sdk.k kVar) {
        if (str2 != null) {
            if (str2.length() >= 86) {
                if (TextUtils.isEmpty(str)) {
                    return new byte[0];
                }
                if (a.NONE == aVar) {
                    return str.getBytes();
                }
                if (a.V2 == aVar) {
                    return a(str, j, false, str2, kVar);
                }
                return a(str, j, str2, kVar);
            }
            throw new IllegalArgumentException("SDK key is too short");
        }
        throw new IllegalArgumentException("No SDK key specified");
    }

    public static String b(String str, long j, a aVar, String str2, com.applovin.impl.sdk.k kVar) {
        byte[] a2;
        if (str2 != null) {
            if (str2.length() >= 86) {
                if (TextUtils.isEmpty(str) || a.NONE == aVar) {
                    return str;
                }
                if (a.V2 == aVar) {
                    a2 = a(str, j, true, str2, kVar);
                } else {
                    a2 = a(str, j, str2, kVar);
                }
                if (a2 != null) {
                    return new String(a2);
                }
                return null;
            }
            throw new IllegalArgumentException("SDK key is too short");
        }
        throw new IllegalArgumentException("No SDK key specified");
    }

    private static int c(byte[] bArr, String str, com.applovin.impl.sdk.k kVar) {
        int a2;
        int i;
        if (bArr == null || bArr.length == 0 || TextUtils.isEmpty(str) || (a2 = a(bArr, (byte) 58)) < 0) {
            return 0;
        }
        byte[] bytes = a(b, kVar).getBytes();
        int i2 = a2 + 1;
        int length = bytes.length + i2;
        if (bArr.length > length && bArr[length] == 58 && bArr.length > (i = length + 55) && bArr[i] == 58 && Arrays.equals(Arrays.copyOfRange(bArr, i2, bytes.length + i2), bytes)) {
            int i3 = length + 56;
            if (length + 64 > bArr.length) {
                return 0;
            }
            return i3;
        }
        return 0;
    }

    private static byte[] a(String str, long j, String str2, com.applovin.impl.sdk.k kVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        char c = ' ';
        try {
            String substring = str2.substring(32);
            byte b2 = 0;
            String substring2 = str2.substring(0, 32);
            byte[] bytes = str.getBytes("UTF-8");
            byte[] a2 = a(substring2, f3149a, kVar);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(((byte) (j & 255)) ^ a2[0]);
            char c2 = '\b';
            byteArrayOutputStream.write(((byte) ((j >> 8) & 255)) ^ a2[1]);
            char c3 = 16;
            byteArrayOutputStream.write(((byte) ((j >> 16) & 255)) ^ a2[2]);
            byteArrayOutputStream.write(((byte) ((j >> 24) & 255)) ^ a2[3]);
            byteArrayOutputStream.write(((byte) ((j >> 32) & 255)) ^ a2[4]);
            byteArrayOutputStream.write(((byte) ((j >> 40) & 255)) ^ a2[5]);
            byteArrayOutputStream.write(((byte) ((j >> 48) & 255)) ^ a2[6]);
            byteArrayOutputStream.write(((byte) ((j >> 56) & 255)) ^ a2[7]);
            int i8 = 0;
            while (i8 < bytes.length) {
                char c4 = c2;
                char c5 = c3;
                long j2 = j + i8;
                long j3 = (j2 ^ (j2 >> 33)) * (-4417276706812531889L);
                long j4 = (j3 ^ (j3 >> 29)) * (-8796714831421723037L);
                long j5 = j4 ^ (j4 >> c);
                char c6 = c;
                byteArrayOutputStream.write((byte) (((i8 >= bytes.length ? b2 : bytes[i8]) ^ a2[i8 % a2.length]) ^ (j5 & 255)));
                byteArrayOutputStream.write((byte) ((a2[i % a2.length] ^ (i8 + 1 >= bytes.length ? (byte) 0 : bytes[i])) ^ ((j5 >> c4) & 255)));
                byteArrayOutputStream.write((byte) ((a2[i2 % a2.length] ^ (i8 + 2 >= bytes.length ? (byte) 0 : bytes[i2])) ^ ((j5 >> c5) & 255)));
                byteArrayOutputStream.write((byte) ((a2[i3 % a2.length] ^ (i8 + 3 >= bytes.length ? (byte) 0 : bytes[i3])) ^ ((j5 >> 24) & 255)));
                byteArrayOutputStream.write((byte) ((a2[i4 % a2.length] ^ (i8 + 4 >= bytes.length ? (byte) 0 : bytes[i4])) ^ ((j5 >> c6) & 255)));
                byteArrayOutputStream.write((byte) ((a2[i5 % a2.length] ^ (i8 + 5 >= bytes.length ? (byte) 0 : bytes[i5])) ^ ((j5 >> 40) & 255)));
                byteArrayOutputStream.write((byte) ((a2[i6 % a2.length] ^ (i8 + 6 >= bytes.length ? (byte) 0 : bytes[i6])) ^ ((j5 >> 48) & 255)));
                byteArrayOutputStream.write((byte) ((a2[i7 % a2.length] ^ (i8 + 7 >= bytes.length ? (byte) 0 : bytes[i7])) ^ ((j5 >> 56) & 255)));
                i8 += 8;
                c2 = c4;
                c3 = c5;
                c = c6;
                b2 = 0;
            }
            String c7 = c(byteArrayOutputStream.toByteArray());
            return ("1:" + a(f3149a, kVar) + ":" + substring + ":" + c7).getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            kVar.E().a("AppLovinSdk", "encode", e);
            return null;
        }
    }

    public static String b(byte[] bArr, String str, com.applovin.impl.sdk.k kVar) {
        if (str != null) {
            if (str.length() >= 86) {
                if (bArr == null) {
                    return null;
                }
                if (bArr.length == 0) {
                    return "";
                }
                a b2 = b(bArr);
                if (a.NONE == b2) {
                    return new String(bArr);
                }
                if (b2 == a.V2) {
                    return a(bArr, str, kVar);
                }
                return a(new String(bArr), str, kVar);
            }
            throw new IllegalArgumentException("SDK key is too short");
        }
        throw new IllegalArgumentException("No SDK key specified");
    }

    private static String c(byte[] bArr) {
        return a(Base64.encode(bArr, 2));
    }

    public static a b(byte[] bArr) {
        if (bArr != null && bArr.length != 0) {
            char c = (char) bArr[0];
            if (c == '2') {
                return a.V2;
            }
            if (c == '{') {
                return a.NONE;
            }
            return a.DEFAULT;
        }
        return a.NONE;
    }

    private static byte[] b(String str) {
        return Base64.decode(a(str), 0);
    }

    private static byte[] a(String str, long j, boolean z, String str2, com.applovin.impl.sdk.k kVar) {
        ByteBuffer allocate;
        try {
            byte[] bytes = str.getBytes("UTF-8");
            int length = bytes.length;
            String substring = str2.substring(32);
            String substring2 = str2.substring(0, 32);
            byte[] bArr = b;
            byte[] a2 = a(substring2, bArr, kVar);
            byte[] bytes2 = String.format("2:%s:%s:", a(bArr, kVar), substring).getBytes();
            ByteBuffer allocate2 = ByteBuffer.allocate(16);
            allocate2.order(ByteOrder.LITTLE_ENDIAN);
            allocate2.putLong(length);
            allocate2.putLong(z6.c(a2) ^ j);
            allocate2.flip();
            byte[] a3 = a(z6.a(bytes), j, a2);
            if (z) {
                byte[] bytes3 = c(allocate2.array()).getBytes();
                byte[] bytes4 = c(a3).getBytes();
                allocate = ByteBuffer.allocate(bytes2.length + bytes3.length + bytes4.length);
                allocate.put(bytes2);
                allocate.put(bytes3);
                allocate.put(bytes4);
            } else {
                allocate = ByteBuffer.allocate(bytes2.length + allocate2.remaining() + a3.length);
                allocate.put(bytes2);
                allocate.put(allocate2);
                allocate.put(a3);
            }
            allocate.flip();
            return allocate.array();
        } catch (UnsupportedEncodingException e) {
            kVar.E().a("AppLovinSdk", "encode2", e);
            throw new RuntimeException("UTF-8 encoding not found", e);
        } catch (IOException e2) {
            kVar.E().a("AppLovinSdk", "encode2", e2);
            return null;
        }
    }

    private static byte[] a(byte[] bArr, long j, byte[] bArr2) {
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        long j2 = j;
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i % 8;
            if (i2 == 0) {
                long j3 = i + j;
                long j4 = (j3 ^ (j3 >>> 33)) * (-4417276706812531889L);
                long j5 = (j4 ^ (j4 >>> 29)) * (-8796714831421723037L);
                j2 = j5 ^ (j5 >>> 32);
            }
            copyOf[i] = (byte) (copyOf[i] ^ (((j2 >> (i2 * 8)) & 255) ^ bArr2[i % bArr2.length]));
        }
        return copyOf;
    }

    private static String a(String str, String str2, com.applovin.impl.sdk.k kVar) {
        String str3;
        char c;
        char c2;
        char c3;
        char c4;
        String[] split = str.split(":");
        try {
            try {
                if ("1".equals(split[0]) && split.length == 4) {
                    String str4 = split[1];
                    char c5 = 2;
                    String str5 = split[2];
                    char c6 = 3;
                    byte[] b2 = b(split[3]);
                    if (str2.endsWith(str5)) {
                        byte[] bArr = f3149a;
                        if (a(bArr, kVar).equals(str4)) {
                            byte[] a2 = a(str2.substring(0, 32), bArr, kVar);
                            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(b2);
                            char c7 = 5;
                            str3 = null;
                            char c8 = '(';
                            try {
                                char c9 = 7;
                                long read = (((byteArrayInputStream.read() ^ a2[1]) & 255) << 8) | ((byteArrayInputStream.read() ^ a2[0]) & 255) | (((byteArrayInputStream.read() ^ a2[2]) & 255) << 16) | (((byteArrayInputStream.read() ^ a2[3]) & 255) << 24) | (((byteArrayInputStream.read() ^ a2[4]) & 255) << 32) | (((byteArrayInputStream.read() ^ a2[5]) & 255) << 40) | (((byteArrayInputStream.read() ^ a2[6]) & 255) << 48) | (((byteArrayInputStream.read() ^ a2[7]) & 255) << 56);
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                byte[] bArr2 = new byte[8];
                                int read2 = byteArrayInputStream.read(bArr2);
                                int i = 0;
                                while (read2 >= 0) {
                                    char c10 = c9;
                                    long j = i + read;
                                    long j2 = (j ^ (j >> 33)) * (-4417276706812531889L);
                                    long j3 = (j2 ^ (j2 >> 29)) * (-8796714831421723037L);
                                    long j4 = j3 ^ (j3 >> 32);
                                    byteArrayOutputStream.write((byte) ((bArr2[0] ^ a2[i % a2.length]) ^ (j4 & 255)));
                                    byteArrayOutputStream.write((byte) ((bArr2[1] ^ a2[(i + 1) % a2.length]) ^ ((j4 >> 8) & 255)));
                                    byteArrayOutputStream.write((byte) ((bArr2[c] ^ a2[(i + 2) % a2.length]) ^ ((j4 >> 16) & 255)));
                                    byteArrayOutputStream.write((byte) ((bArr2[c2] ^ a2[(i + 3) % a2.length]) ^ ((j4 >> 24) & 255)));
                                    byteArrayOutputStream.write((byte) ((bArr2[4] ^ a2[(i + 4) % a2.length]) ^ ((j4 >> 32) & 255)));
                                    byteArrayOutputStream.write((byte) ((bArr2[c4] ^ a2[(i + 5) % a2.length]) ^ ((j4 >> c3) & 255)));
                                    byteArrayOutputStream.write((byte) ((bArr2[6] ^ a2[(i + 6) % a2.length]) ^ ((j4 >> 48) & 255)));
                                    byteArrayOutputStream.write((byte) (((j4 >> 56) & 255) ^ (bArr2[c10] ^ a2[(i + 7) % a2.length])));
                                    i += 8;
                                    c5 = c5;
                                    c7 = c7;
                                    c6 = c6;
                                    c8 = c8;
                                    read2 = byteArrayInputStream.read(bArr2);
                                    c9 = c10;
                                }
                                return new String(byteArrayOutputStream.toByteArray(), "UTF-8").trim();
                            } catch (IOException e) {
                                e = e;
                                com.applovin.impl.sdk.o.b("AppLovinSdk", "Failed to read bytes", e);
                                kVar.E().a("AppLovinSdk", "decode", e);
                                return str3;
                            }
                        }
                        return null;
                    }
                    return null;
                }
                return null;
            } catch (IOException e2) {
                e = e2;
                str3 = null;
            }
        } catch (UnsupportedEncodingException e3) {
            kVar.E().a("AppLovinSdk", "decode", e3);
            throw new RuntimeException("UTF-8 encoding not found", e3);
        }
    }

    private static String a(byte[] bArr, String str, com.applovin.impl.sdk.k kVar) {
        try {
            int c = c(bArr, str, kVar);
            if (c == 0) {
                return null;
            }
            byte[] copyOfRange = Arrays.copyOfRange(bArr, c, bArr.length);
            if (copyOfRange.length < 16) {
                return null;
            }
            long a2 = z6.a(copyOfRange, 8);
            byte[] a3 = a(str.substring(0, 32), b, kVar);
            return new String(z6.d(a(Arrays.copyOfRange(copyOfRange, 16, copyOfRange.length), a2 ^ z6.c(a3), a3)), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            kVar.E().a("AppLovinSdk", "decode2", e);
            throw new RuntimeException("UTF-8 encoding not found", e);
        } catch (IOException e2) {
            com.applovin.impl.sdk.o.b("AppLovinSdk", "Failed to ungzip decode", e2);
            kVar.E().a("AppLovinSdk", "decode2", e2);
            return null;
        }
    }

    private static int a(byte[] bArr, byte b2) {
        if (bArr != null && bArr.length != 0) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == b2) {
                    return i;
                }
            }
        }
        return -1;
    }

    private static byte[] a(String str, byte[] bArr, com.applovin.impl.sdk.k kVar) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            messageDigest.update(str.getBytes("UTF-8"));
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            kVar.E().a("AppLovinSdk", "SHA256", e);
            throw new RuntimeException("SHA-256 algorithm not found", e);
        }
    }

    private static String a(byte[] bArr, com.applovin.impl.sdk.k kVar) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
            messageDigest.update(bArr);
            return StringUtils.toHexString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            kVar.E().a("AppLovinSdk", "SHA1", e);
            throw new RuntimeException("SHA-1 algorithm not found", e);
        }
    }

    private static String a(String str) {
        return str.replace('-', '+').replace('_', '/').replace('*', '=');
    }

    private static String a(byte[] bArr) {
        return new String(bArr, "UTF-8").replace('+', '-').replace('/', '_').replace('=', '*');
    }
}
