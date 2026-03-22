package com.mbridge.msdk.thrid.okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.text.Typography;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class n implements e, AutoCloseable {

    /* renamed from: a  reason: collision with root package name */
    public final c f9644a = new c();
    public final s b;
    boolean c;

    public n(s sVar) {
        if (sVar != null) {
            this.b = sVar;
            return;
        }
        throw new NullPointerException("source == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.e, com.mbridge.msdk.thrid.okio.d
    public c a() {
        return this.f9644a;
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public long b(c cVar, long j) throws IOException {
        if (cVar != null) {
            if (j >= 0) {
                if (!this.c) {
                    c cVar2 = this.f9644a;
                    if (cVar2.b == 0 && this.b.b(cVar2, 8192L) == -1) {
                        return -1L;
                    }
                    return this.f9644a.b(cVar, Math.min(j, this.f9644a.b));
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte[] c(long j) throws IOException {
        e(j);
        return this.f9644a.c(j);
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.c) {
            return;
        }
        this.c = true;
        this.b.close();
        this.f9644a.k();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String d(long j) throws IOException {
        long j2;
        if (j >= 0) {
            if (j == Long.MAX_VALUE) {
                j2 = Long.MAX_VALUE;
            } else {
                j2 = j + 1;
            }
            long a2 = a((byte) 10, 0L, j2);
            if (a2 != -1) {
                return this.f9644a.h(a2);
            }
            if (j2 < Long.MAX_VALUE && f(j2) && this.f9644a.f(j2 - 1) == 13 && f(j2 + 1) && this.f9644a.f(j2) == 10) {
                return this.f9644a.h(j2);
            }
            c cVar = new c();
            c cVar2 = this.f9644a;
            cVar2.a(cVar, 0L, Math.min(32L, cVar2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f9644a.size(), j) + " content=" + cVar.o().b() + Typography.ellipsis);
        }
        throw new IllegalArgumentException("limit < 0: " + j);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void e(long j) throws IOException {
        if (!f(j)) {
            throw new EOFException();
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public boolean f() throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        return this.f9644a.f() && this.b.b(this.f9644a, 8192L) == -1;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short g() throws IOException {
        e(2L);
        return this.f9644a.g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0033, code lost:
        if (r2 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
        throw new java.lang.NumberFormatException(java.lang.String.format("Expected leading [0-9a-fA-F] character but was %#x", java.lang.Byte.valueOf(r4)));
     */
    @Override // com.mbridge.msdk.thrid.okio.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long i() throws java.io.IOException {
        /*
            r7 = this;
            r0 = 1
            r1 = 1
            r7.e(r1)
            r1 = 0
            r2 = r1
        L8:
            int r3 = r2 + 1
            long r4 = (long) r3
            boolean r4 = r7.f(r4)
            if (r4 == 0) goto L4a
            com.mbridge.msdk.thrid.okio.c r4 = r7.f9644a
            long r5 = (long) r2
            byte r4 = r4.f(r5)
            r5 = 48
            if (r4 < r5) goto L20
            r5 = 57
            if (r4 <= r5) goto L31
        L20:
            r5 = 97
            if (r4 < r5) goto L28
            r5 = 102(0x66, float:1.43E-43)
            if (r4 <= r5) goto L31
        L28:
            r5 = 65
            if (r4 < r5) goto L33
            r5 = 70
            if (r4 <= r5) goto L31
            goto L33
        L31:
            r2 = r3
            goto L8
        L33:
            if (r2 == 0) goto L36
            goto L4a
        L36:
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.Byte r3 = java.lang.Byte.valueOf(r4)
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r1] = r3
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was %#x"
            java.lang.String r0 = java.lang.String.format(r1, r0)
            r2.<init>(r0)
            throw r2
        L4a:
            com.mbridge.msdk.thrid.okio.c r0 = r7.f9644a
            long r0 = r0.i()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okio.n.i():long");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.c;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public InputStream j() {
        return new a();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        c cVar = this.f9644a;
        if (cVar.b == 0 && this.b.b(cVar, 8192L) == -1) {
            return -1;
        }
        return this.f9644a.read(byteBuffer);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte readByte() throws IOException {
        e(1L);
        return this.f9644a.readByte();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void readFully(byte[] bArr) throws IOException {
        try {
            e(bArr.length);
            this.f9644a.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                c cVar = this.f9644a;
                long j = cVar.b;
                if (j > 0) {
                    int read = cVar.read(bArr, i, (int) j);
                    if (read != -1) {
                        i += read;
                    } else {
                        throw new AssertionError();
                    }
                } else {
                    throw e;
                }
            }
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int readInt() throws IOException {
        e(4L);
        return this.f9644a.readInt();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short readShort() throws IOException {
        e(2L);
        return this.f9644a.readShort();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void skip(long j) throws IOException {
        if (!this.c) {
            while (j > 0) {
                c cVar = this.f9644a;
                if (cVar.b == 0 && this.b.b(cVar, 8192L) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, this.f9644a.size());
                this.f9644a.skip(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    public String toString() {
        return "buffer(" + this.b + ")";
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public long a(byte b) throws IOException {
        return a(b, 0L, Long.MAX_VALUE);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int e() throws IOException {
        e(4L);
        return this.f9644a.e();
    }

    public long a(byte b, long j, long j2) throws IOException {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        }
        long j3 = j;
        while (j3 < j2) {
            byte b2 = b;
            long j4 = j2;
            long a2 = this.f9644a.a(b2, j3, j4);
            if (a2 == -1) {
                c cVar = this.f9644a;
                long j5 = cVar.b;
                if (j5 >= j4 || this.b.b(cVar, 8192L) == -1) {
                    break;
                }
                j3 = Math.max(j3, j5);
                b = b2;
                j2 = j4;
            } else {
                return a2;
            }
        }
        return -1L;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String c() throws IOException {
        return d(Long.MAX_VALUE);
    }

    public boolean f(long j) throws IOException {
        c cVar;
        if (j >= 0) {
            if (!this.c) {
                do {
                    cVar = this.f9644a;
                    if (cVar.b >= j) {
                        return true;
                    }
                } while (this.b.b(cVar, 8192L) != -1);
                return false;
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException("byteCount < 0: " + j);
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public class a extends InputStream implements AutoCloseable {
        public a() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            n nVar = n.this;
            if (!nVar.c) {
                return (int) Math.min(nVar.f9644a.b, 2147483647L);
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            n.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            n nVar = n.this;
            if (!nVar.c) {
                c cVar = nVar.f9644a;
                if (cVar.b == 0 && nVar.b.b(cVar, 8192L) == -1) {
                    return -1;
                }
                return n.this.f9644a.readByte() & 255;
            }
            throw new IOException("closed");
        }

        public String toString() {
            return n.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (!n.this.c) {
                u.a(bArr.length, i, i2);
                n nVar = n.this;
                c cVar = nVar.f9644a;
                if (cVar.b == 0 && nVar.b.b(cVar, 8192L) == -1) {
                    return -1;
                }
                return n.this.f9644a.read(bArr, i, i2);
            }
            throw new IOException("closed");
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public f b(long j) throws IOException {
        e(j);
        return this.f9644a.b(j);
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.b.b();
    }
}
