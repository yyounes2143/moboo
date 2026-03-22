package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.text.Typography;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class c implements e, d, Cloneable, ByteChannel, AutoCloseable {
    private static final byte[] c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    o f9633a;
    long b;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class a extends InputStream implements AutoCloseable {
        public a() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(c.this.b, 2147483647L);
        }

        @Override // java.io.InputStream
        public int read() {
            c cVar = c.this;
            if (cVar.b > 0) {
                return cVar.readByte() & 255;
            }
            return -1;
        }

        public String toString() {
            return c.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            return c.this.read(bArr, i, i2);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e, com.mbridge.msdk.thrid.okio.d
    public c a() {
        return this;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public f b(long j) throws EOFException {
        return new f(c(j));
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String c() throws EOFException {
        return d(Long.MAX_VALUE);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String d(long j) throws EOFException {
        if (j >= 0) {
            long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
            long a2 = a((byte) 10, 0L, j2);
            if (a2 != -1) {
                return h(a2);
            }
            if (j2 < size() && f(j2 - 1) == 13 && f(j2) == 10) {
                return h(j2);
            }
            c cVar = new c();
            a(cVar, 0L, Math.min(32L, size()));
            throw new EOFException("\\n not found: limit=" + Math.min(size(), j) + " content=" + cVar.o().b() + Typography.ellipsis);
        }
        throw new IllegalArgumentException("limit < 0: " + j);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void e(long j) throws EOFException {
        if (this.b < j) {
            throw new EOFException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j = this.b;
        if (j != cVar.b) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        o oVar = this.f9633a;
        o oVar2 = cVar.f9633a;
        int i = oVar.b;
        int i2 = oVar2.b;
        while (j2 < this.b) {
            long min = Math.min(oVar.c - i, oVar2.c - i2);
            int i3 = 0;
            while (i3 < min) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (oVar.f9646a[i] != oVar2.f9646a[i2]) {
                    return false;
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            if (i == oVar.c) {
                oVar = oVar.f;
                i = oVar.b;
            }
            if (i2 == oVar2.c) {
                oVar2 = oVar2.f;
                i2 = oVar2.b;
            }
            j2 += min;
        }
        return true;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public boolean f() {
        return this.b == 0;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short g() {
        return u.a(readShort());
    }

    public String h(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (f(j2) == 13) {
                String g = g(j2);
                skip(2L);
                return g;
            }
        }
        String g2 = g(j);
        skip(1L);
        return g2;
    }

    public int hashCode() {
        o oVar = this.f9633a;
        if (oVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = oVar.c;
            for (int i3 = oVar.b; i3 < i2; i3++) {
                i = (i * 31) + oVar.f9646a[i3];
            }
            oVar = oVar.f;
        } while (oVar != this.f9633a);
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a2 A[EDGE_INSN: B:41:0x00a2->B:37:0x00a2 ?: BREAK  , SYNTHETIC] */
    @Override // com.mbridge.msdk.thrid.okio.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long i() {
        /*
            r14 = this;
            long r0 = r14.b
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto La9
            r0 = 0
            r1 = r0
            r4 = r2
        Lb:
            com.mbridge.msdk.thrid.okio.o r6 = r14.f9633a
            byte[] r7 = r6.f9646a
            int r8 = r6.b
            int r9 = r6.c
        L13:
            if (r8 >= r9) goto L8e
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L37
        L22:
            r11 = 97
            if (r10 < r11) goto L2d
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2d
            int r11 = r10 + (-87)
            goto L37
        L2d:
            r11 = 65
            if (r10 < r11) goto L6f
            r11 = 70
            if (r10 > r11) goto L6f
            int r11 = r10 + (-55)
        L37:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L47
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L13
        L47:
            com.mbridge.msdk.thrid.okio.c r0 = new com.mbridge.msdk.thrid.okio.c
            r0.<init>()
            com.mbridge.msdk.thrid.okio.c r0 = r0.a(r4)
            com.mbridge.msdk.thrid.okio.c r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.p()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L6f:
            if (r0 == 0) goto L73
            r1 = 1
            goto L8e
        L73:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8e:
            if (r8 != r9) goto L9a
            com.mbridge.msdk.thrid.okio.o r7 = r6.b()
            r14.f9633a = r7
            com.mbridge.msdk.thrid.okio.p.a(r6)
            goto L9c
        L9a:
            r6.b = r8
        L9c:
            if (r1 != 0) goto La2
            com.mbridge.msdk.thrid.okio.o r6 = r14.f9633a
            if (r6 != 0) goto Lb
        La2:
            long r1 = r14.b
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.b = r1
            return r4
        La9:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okio.c.i():long");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public InputStream j() {
        return new a();
    }

    public final void k() {
        try {
            skip(this.b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: l */
    public c clone() {
        c cVar = new c();
        if (this.b == 0) {
            return cVar;
        }
        o c2 = this.f9633a.c();
        cVar.f9633a = c2;
        c2.g = c2;
        c2.f = c2;
        for (o oVar = this.f9633a.f; oVar != this.f9633a; oVar = oVar.f) {
            cVar.f9633a.g.a(oVar.c());
        }
        cVar.b = this.b;
        return cVar;
    }

    public final long m() {
        long j = this.b;
        if (j == 0) {
            return 0L;
        }
        o oVar = this.f9633a.g;
        int i = oVar.c;
        if (i < 8192 && oVar.e) {
            return j - (i - oVar.b);
        }
        return j;
    }

    public byte[] n() {
        try {
            return c(this.b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public f o() {
        return new f(n());
    }

    public String p() {
        try {
            return a(this.b, u.f9649a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final f q() {
        long j = this.b;
        if (j <= 2147483647L) {
            return a((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.b);
    }

    public int read(byte[] bArr, int i, int i2) {
        u.a(bArr.length, i, i2);
        o oVar = this.f9633a;
        if (oVar == null) {
            return -1;
        }
        int min = Math.min(i2, oVar.c - oVar.b);
        System.arraycopy(oVar.f9646a, oVar.b, bArr, i, min);
        int i3 = oVar.b + min;
        oVar.b = i3;
        this.b -= min;
        if (i3 == oVar.c) {
            this.f9633a = oVar.b();
            p.a(oVar);
        }
        return min;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte readByte() {
        long j = this.b;
        if (j != 0) {
            o oVar = this.f9633a;
            int i = oVar.b;
            int i2 = oVar.c;
            int i3 = i + 1;
            byte b = oVar.f9646a[i];
            this.b = j - 1;
            if (i3 == i2) {
                this.f9633a = oVar.b();
                p.a(oVar);
                return b;
            }
            oVar.b = i3;
            return b;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void readFully(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int read = read(bArr, i, bArr.length - i);
            if (read != -1) {
                i += read;
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int readInt() {
        long j = this.b;
        if (j >= 4) {
            o oVar = this.f9633a;
            int i = oVar.b;
            int i2 = oVar.c;
            if (i2 - i < 4) {
                return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            }
            byte[] bArr = oVar.f9646a;
            int i3 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24);
            int i4 = i + 3;
            int i5 = i + 4;
            int i6 = (bArr[i4] & 255) | i3 | ((bArr[i + 2] & 255) << 8);
            this.b = j - 4;
            if (i5 == i2) {
                this.f9633a = oVar.b();
                p.a(oVar);
                return i6;
            }
            oVar.b = i5;
            return i6;
        }
        throw new IllegalStateException("size < 4: " + this.b);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short readShort() {
        long j = this.b;
        if (j >= 2) {
            o oVar = this.f9633a;
            int i = oVar.b;
            int i2 = oVar.c;
            if (i2 - i < 2) {
                return (short) (((readByte() & 255) << 8) | (readByte() & 255));
            }
            byte[] bArr = oVar.f9646a;
            int i3 = i + 1;
            int i4 = i + 2;
            int i5 = (bArr[i3] & 255) | ((bArr[i] & 255) << 8);
            this.b = j - 2;
            if (i4 == i2) {
                this.f9633a = oVar.b();
                p.a(oVar);
            } else {
                oVar.b = i4;
            }
            return (short) i5;
        }
        throw new IllegalStateException("size < 2: " + this.b);
    }

    public final long size() {
        return this.b;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void skip(long j) throws EOFException {
        o oVar;
        while (j > 0) {
            if (this.f9633a != null) {
                int min = (int) Math.min(j, oVar.c - oVar.b);
                long j2 = min;
                this.b -= j2;
                j -= j2;
                o oVar2 = this.f9633a;
                int i = oVar2.b + min;
                oVar2.b = i;
                if (i == oVar2.c) {
                    this.f9633a = oVar2.b();
                    p.a(oVar2);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    public String toString() {
        return q().toString();
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: b */
    public c a(String str) {
        return a(str, 0, str.length());
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte[] c(long j) throws EOFException {
        u.a(this.b, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int e() {
        return u.a(readInt());
    }

    public final byte f(long j) {
        u.a(this.b, j, 1L);
        long j2 = this.b;
        if (j2 - j > j) {
            o oVar = this.f9633a;
            long j3 = j;
            while (true) {
                int i = oVar.c;
                int i2 = oVar.b;
                long j4 = i - i2;
                if (j3 < j4) {
                    return oVar.f9646a[i2 + ((int) j3)];
                }
                j3 -= j4;
                oVar = oVar.f;
            }
        } else {
            long j5 = j - j2;
            o oVar2 = this.f9633a.g;
            while (true) {
                int i3 = oVar2.c;
                int i4 = oVar2.b;
                j5 += i3 - i4;
                if (j5 >= 0) {
                    return oVar2.f9646a[i4 + ((int) j5)];
                }
                oVar2 = oVar2.g;
            }
        }
    }

    public String g(long j) throws EOFException {
        return a(j, u.f9649a);
    }

    public o b(int i) {
        if (i >= 1 && i <= 8192) {
            o oVar = this.f9633a;
            if (oVar == null) {
                o a2 = p.a();
                this.f9633a = a2;
                a2.g = a2;
                a2.f = a2;
                return a2;
            }
            o oVar2 = oVar.g;
            return (oVar2.c + i > 8192 || !oVar2.e) ? oVar2.a(p.a()) : oVar2;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: e */
    public c writeShort(int i) {
        o b = b(2);
        byte[] bArr = b.f9646a;
        int i2 = b.c;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
        b.c = i2 + 2;
        this.b += 2;
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                o b = b(1);
                int min = Math.min(i, 8192 - b.c);
                byteBuffer.get(b.f9646a, b.c, min);
                i -= min;
                b.c += min;
            }
            this.b += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    public final c a(c cVar, long j, long j2) {
        if (cVar != null) {
            long j3 = j;
            u.a(this.b, j3, j2);
            if (j2 != 0) {
                cVar.b += j2;
                o oVar = this.f9633a;
                while (true) {
                    long j4 = oVar.c - oVar.b;
                    if (j3 < j4) {
                        break;
                    }
                    j3 -= j4;
                    oVar = oVar.f;
                }
                o oVar2 = oVar;
                long j5 = j2;
                while (j5 > 0) {
                    o c2 = oVar2.c();
                    int i = (int) (c2.b + j3);
                    c2.b = i;
                    c2.c = Math.min(i + ((int) j5), c2.c);
                    o oVar3 = cVar.f9633a;
                    if (oVar3 == null) {
                        c2.g = c2;
                        c2.f = c2;
                        cVar.f9633a = c2;
                    } else {
                        oVar3.g.a(c2);
                    }
                    j5 -= c2.c - c2.b;
                    oVar2 = oVar2.f;
                    j3 = 0;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: c */
    public c writeByte(int i) {
        o b = b(1);
        byte[] bArr = b.f9646a;
        int i2 = b.c;
        b.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.b++;
        return this;
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public long b(c cVar, long j) {
        if (cVar != null) {
            if (j >= 0) {
                long j2 = this.b;
                if (j2 == 0) {
                    return -1L;
                }
                if (j > j2) {
                    j = j2;
                }
                cVar.a(this, j);
                return j;
            }
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        o oVar = this.f9633a;
        if (oVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), oVar.c - oVar.b);
        byteBuffer.put(oVar.f9646a, oVar.b, min);
        int i = oVar.b + min;
        oVar.b = i;
        this.b -= min;
        if (i == oVar.c) {
            this.f9633a = oVar.b();
            p.a(oVar);
        }
        return min;
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: d */
    public c writeInt(int i) {
        o b = b(4);
        byte[] bArr = b.f9646a;
        int i2 = b.c;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        b.c = i2 + 4;
        this.b += 4;
        return this;
    }

    public c f(int i) {
        if (i < 128) {
            writeByte(i);
            return this;
        } else if (i < 2048) {
            writeByte((i >> 6) | 192);
            writeByte((i & 63) | 128);
            return this;
        } else if (i < 65536) {
            if (i >= 55296 && i <= 57343) {
                writeByte(63);
                return this;
            }
            writeByte((i >> 12) | 224);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
            return this;
        } else if (i <= 1114111) {
            writeByte((i >> 18) | 240);
            writeByte(((i >> 12) & 63) | 128);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
            return this;
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return t.d;
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // com.mbridge.msdk.thrid.okio.d, com.mbridge.msdk.thrid.okio.r, java.io.Flushable
    public void flush() {
    }

    public String a(long j, Charset charset) throws EOFException {
        u.a(this.b, 0L, j);
        if (charset != null) {
            if (j > 2147483647L) {
                throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
            } else if (j == 0) {
                return "";
            } else {
                o oVar = this.f9633a;
                int i = oVar.b;
                if (i + j > oVar.c) {
                    return new String(c(j), charset);
                }
                String str = new String(oVar.f9646a, i, (int) j, charset);
                int i2 = (int) (oVar.b + j);
                oVar.b = i2;
                this.b -= j;
                if (i2 == oVar.c) {
                    this.f9633a = oVar.b();
                    p.a(oVar);
                }
                return str;
            }
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: i */
    public c a(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        o b = b(numberOfTrailingZeros);
        byte[] bArr = b.f9646a;
        int i = b.c;
        for (int i2 = (i + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = c[(int) (15 & j)];
            j >>>= 4;
        }
        b.c += numberOfTrailingZeros;
        this.b += numberOfTrailingZeros;
        return this;
    }

    public c a(f fVar) {
        if (fVar != null) {
            fVar.a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    public c a(String str, int i, int i2) {
        char charAt;
        if (str != null) {
            if (i < 0) {
                throw new IllegalArgumentException("beginIndex < 0: " + i);
            } else if (i2 >= i) {
                if (i2 > str.length()) {
                    throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
                }
                while (i < i2) {
                    char charAt2 = str.charAt(i);
                    if (charAt2 < 128) {
                        o b = b(1);
                        byte[] bArr = b.f9646a;
                        int i3 = b.c - i;
                        int min = Math.min(i2, 8192 - i3);
                        int i4 = i + 1;
                        bArr[i + i3] = (byte) charAt2;
                        while (true) {
                            i = i4;
                            if (i >= min || (charAt = str.charAt(i)) >= 128) {
                                break;
                            }
                            i4 = i + 1;
                            bArr[i + i3] = (byte) charAt;
                        }
                        int i5 = b.c;
                        int i6 = (i3 + i) - i5;
                        b.c = i5 + i6;
                        this.b += i6;
                    } else {
                        if (charAt2 < 2048) {
                            writeByte((charAt2 >> 6) | 192);
                            writeByte((charAt2 & '?') | 128);
                        } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                            int i7 = i + 1;
                            char charAt3 = i7 < i2 ? str.charAt(i7) : (char) 0;
                            if (charAt2 <= 56319 && charAt3 >= 56320 && charAt3 <= 57343) {
                                int i8 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                                writeByte((i8 >> 18) | 240);
                                writeByte(((i8 >> 12) & 63) | 128);
                                writeByte(((i8 >> 6) & 63) | 128);
                                writeByte((i8 & 63) | 128);
                                i += 2;
                            } else {
                                writeByte(63);
                                i = i7;
                            }
                        } else {
                            writeByte((charAt2 >> '\f') | 224);
                            writeByte(((charAt2 >> 6) & 63) | 128);
                            writeByte((charAt2 & '?') | 128);
                        }
                        i++;
                    }
                }
                return this;
            } else {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    public c a(String str, int i, int i2, Charset charset) {
        if (str != null) {
            if (i < 0) {
                throw new IllegalAccessError("beginIndex < 0: " + i);
            } else if (i2 >= i) {
                if (i2 <= str.length()) {
                    if (charset != null) {
                        if (charset.equals(u.f9649a)) {
                            return a(str, i, i2);
                        }
                        byte[] bytes = str.substring(i, i2).getBytes(charset);
                        return write(bytes, 0, bytes.length);
                    }
                    throw new IllegalArgumentException("charset == null");
                }
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            } else {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: a */
    public c write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    /* renamed from: a */
    public c write(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = i2;
            u.a(bArr.length, i, j);
            int i3 = i2 + i;
            while (i < i3) {
                o b = b(1);
                int min = Math.min(i3 - i, 8192 - b.c);
                System.arraycopy(bArr, i, b.f9646a, b.c, min);
                i += min;
                b.c += min;
            }
            this.b += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public long a(s sVar) throws IOException {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long b = sVar.b(this, 8192L);
            if (b == -1) {
                return j;
            }
            j += b;
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public void a(c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar != this) {
            u.a(cVar.b, 0L, j);
            while (j > 0) {
                o oVar = cVar.f9633a;
                if (j < oVar.c - oVar.b) {
                    o oVar2 = this.f9633a;
                    o oVar3 = oVar2 != null ? oVar2.g : null;
                    if (oVar3 != null && oVar3.e) {
                        if ((oVar3.c + j) - (oVar3.d ? 0 : oVar3.b) <= 8192) {
                            oVar.a(oVar3, (int) j);
                            cVar.b -= j;
                            this.b += j;
                            return;
                        }
                    }
                    cVar.f9633a = oVar.a((int) j);
                }
                o oVar4 = cVar.f9633a;
                long j2 = oVar4.c - oVar4.b;
                cVar.f9633a = oVar4.b();
                o oVar5 = this.f9633a;
                if (oVar5 == null) {
                    this.f9633a = oVar4;
                    oVar4.g = oVar4;
                    oVar4.f = oVar4;
                } else {
                    oVar5.g.a(oVar4).a();
                }
                cVar.b -= j2;
                this.b += j2;
                j -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public long a(byte b) {
        return a(b, 0L, Long.MAX_VALUE);
    }

    public long a(byte b, long j, long j2) {
        o oVar;
        long j3 = 0;
        if (j >= 0 && j2 >= j) {
            long j4 = this.b;
            long j5 = j2 > j4 ? j4 : j2;
            if (j == j5 || (oVar = this.f9633a) == null) {
                return -1L;
            }
            if (j4 - j < j) {
                while (j4 > j) {
                    oVar = oVar.g;
                    j4 -= oVar.c - oVar.b;
                }
            } else {
                while (true) {
                    long j6 = (oVar.c - oVar.b) + j3;
                    if (j6 >= j) {
                        break;
                    }
                    oVar = oVar.f;
                    j3 = j6;
                }
                j4 = j3;
            }
            long j7 = j;
            while (j4 < j5) {
                byte[] bArr = oVar.f9646a;
                int min = (int) Math.min(oVar.c, (oVar.b + j5) - j4);
                for (int i = (int) ((oVar.b + j7) - j4); i < min; i++) {
                    if (bArr[i] == b) {
                        return (i - oVar.b) + j4;
                    }
                }
                j4 += oVar.c - oVar.b;
                oVar = oVar.f;
                j7 = j4;
            }
            return -1L;
        }
        throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.b), Long.valueOf(j), Long.valueOf(j2)));
    }

    public final f a(int i) {
        if (i == 0) {
            return f.e;
        }
        return new q(this, i);
    }
}
