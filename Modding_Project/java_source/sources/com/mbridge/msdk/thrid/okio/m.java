package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class m implements d, AutoCloseable {

    /* renamed from: a  reason: collision with root package name */
    public final c f9643a = new c();
    public final r b;
    boolean c;

    public m(r rVar) {
        if (rVar != null) {
            this.b = rVar;
            return;
        }
        throw new NullPointerException("sink == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public c a() {
        return this.f9643a;
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public t b() {
        return this.b.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.c) {
            try {
                c cVar = this.f9643a;
                long j = cVar.b;
                if (j > 0) {
                    this.b.a(cVar, j);
                }
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                this.b.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                }
            }
            this.c = true;
            if (th != null) {
                u.a(th);
            }
        }
    }

    public d d() throws IOException {
        if (!this.c) {
            long m = this.f9643a.m();
            if (m > 0) {
                this.b.a(this.f9643a, m);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d, com.mbridge.msdk.thrid.okio.r, java.io.Flushable
    public void flush() throws IOException {
        if (!this.c) {
            c cVar = this.f9643a;
            long j = cVar.b;
            if (j > 0) {
                this.b.a(cVar, j);
            }
            this.b.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.c;
    }

    public String toString() {
        return "buffer(" + this.b + ")";
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d write(byte[] bArr) throws IOException {
        if (!this.c) {
            this.f9643a.write(bArr);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d writeByte(int i) throws IOException {
        if (!this.c) {
            this.f9643a.writeByte(i);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d writeInt(int i) throws IOException {
        if (!this.c) {
            this.f9643a.writeInt(i);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d writeShort(int i) throws IOException {
        if (!this.c) {
            this.f9643a.writeShort(i);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public void a(c cVar, long j) throws IOException {
        if (!this.c) {
            this.f9643a.a(cVar, j);
            d();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.c) {
            this.f9643a.write(bArr, i, i2);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d a(String str) throws IOException {
        if (!this.c) {
            this.f9643a.a(str);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (!this.c) {
            int write = this.f9643a.write(byteBuffer);
            d();
            return write;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d a(long j) throws IOException {
        if (!this.c) {
            this.f9643a.a(j);
            return d();
        }
        throw new IllegalStateException("closed");
    }
}
