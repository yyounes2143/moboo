package org.apache.commons.io.input;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class NullInputStream extends InputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13366Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13367Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13368Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13369Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13370Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13371Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13372Wwwwwwwwwwwwwwwwwwwwwwwww;

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return 0;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws EOFException {
        this.f13368Wwwwwwwwwwwwwwwwwwwww = true;
        if (!this.f13367Wwwwwwwwwwwwwwwwwwww) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // java.io.InputStream
    public int available() {
        long j = this.f13372Wwwwwwwwwwwwwwwwwwwwwwwww - this.f13371Wwwwwwwwwwwwwwwwwwwwwwww;
        if (j <= 0) {
            return 0;
        }
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13368Wwwwwwwwwwwwwwwwwwwww = false;
        this.f13371Wwwwwwwwwwwwwwwwwwwwwwww = 0L;
        this.f13370Wwwwwwwwwwwwwwwwwwwwwww = -1L;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        if (this.f13366Wwwwwwwwwwwwwwwwwww) {
            this.f13370Wwwwwwwwwwwwwwwwwwwwwww = this.f13371Wwwwwwwwwwwwwwwwwwwwwwww;
            this.f13369Wwwwwwwwwwwwwwwwwwwwww = i;
        } else {
            throw new UnsupportedOperationException("Mark not supported");
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f13366Wwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.f13368Wwwwwwwwwwwwwwwwwwwww) {
            long j = this.f13371Wwwwwwwwwwwwwwwwwwwwwwww;
            if (j == this.f13372Wwwwwwwwwwwwwwwwwwwwwwwww) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            this.f13371Wwwwwwwwwwwwwwwwwwwwwwww = j + 1;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IOException("Read after end of file");
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f13366Wwwwwwwwwwwwwwwwwww) {
            long j = this.f13370Wwwwwwwwwwwwwwwwwwwwwww;
            if (j >= 0) {
                if (this.f13371Wwwwwwwwwwwwwwwwwwwwwwww <= this.f13369Wwwwwwwwwwwwwwwwwwwwww + j) {
                    this.f13371Wwwwwwwwwwwwwwwwwwwwwwww = j;
                    this.f13368Wwwwwwwwwwwwwwwwwwwww = false;
                } else {
                    throw new IOException("Marked position [" + this.f13370Wwwwwwwwwwwwwwwwwwwwwww + "] is no longer valid - passed the read limit [" + this.f13369Wwwwwwwwwwwwwwwwwwwwww + "]");
                }
            } else {
                throw new IOException("No position has been marked");
            }
        } else {
            throw new UnsupportedOperationException("Mark not supported");
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (!this.f13368Wwwwwwwwwwwwwwwwwwwww) {
            long j2 = this.f13371Wwwwwwwwwwwwwwwwwwwwwwww;
            long j3 = this.f13372Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (j2 == j3) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            long j4 = j2 + j;
            this.f13371Wwwwwwwwwwwwwwwwwwwwwwww = j4;
            if (j4 > j3) {
                long j5 = j - (j4 - j3);
                this.f13371Wwwwwwwwwwwwwwwwwwwwwwww = j3;
                return j5;
            }
            return j;
        }
        throw new IOException("Skip after end of file");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f13368Wwwwwwwwwwwwwwwwwwwww) {
            long j = this.f13371Wwwwwwwwwwwwwwwwwwwwwwww;
            long j2 = this.f13372Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (j == j2) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            long j3 = j + i2;
            this.f13371Wwwwwwwwwwwwwwwwwwwwwwww = j3;
            if (j3 > j2) {
                i2 -= (int) (j3 - j2);
                this.f13371Wwwwwwwwwwwwwwwwwwwwwwww = j2;
            }
            Wwwwwwwwwwwwww(bArr, i, i2);
            return i2;
        }
        throw new IOException("Read after end of file");
    }

    public void Wwwwwwwwwwwwww(byte[] bArr, int i, int i2) {
    }
}
