package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class BoundedInputStream extends InputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13343Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13344Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13345Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13346Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InputStream f13347Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.io.InputStream
    public int available() throws IOException {
        long j = this.f13346Wwwwwwwwwwwwwwwwwwwwwwww;
        if (j >= 0 && this.f13345Wwwwwwwwwwwwwwwwwwwwwww >= j) {
            return 0;
        }
        return this.f13347Wwwwwwwwwwwwwwwwwwwwwwwww.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f13343Wwwwwwwwwwwwwwwwwwwww) {
            this.f13347Wwwwwwwwwwwwwwwwwwwwwwwww.close();
        }
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        this.f13347Wwwwwwwwwwwwwwwwwwwwwwwww.mark(i);
        this.f13344Wwwwwwwwwwwwwwwwwwwwww = this.f13345Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f13347Wwwwwwwwwwwwwwwwwwwwwwwww.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        long j = this.f13346Wwwwwwwwwwwwwwwwwwwwwwww;
        if (j < 0 || this.f13345Wwwwwwwwwwwwwwwwwwwwwww < j) {
            int read = this.f13347Wwwwwwwwwwwwwwwwwwwwwwwww.read();
            this.f13345Wwwwwwwwwwwwwwwwwwwwwww++;
            return read;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f13347Wwwwwwwwwwwwwwwwwwwwwwwww.reset();
        this.f13345Wwwwwwwwwwwwwwwwwwwwwww = this.f13344Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = this.f13346Wwwwwwwwwwwwwwwwwwwwwwww;
        if (j2 >= 0) {
            j = Math.min(j, j2 - this.f13345Wwwwwwwwwwwwwwwwwwwwwww);
        }
        long skip = this.f13347Wwwwwwwwwwwwwwwwwwwwwwwww.skip(j);
        this.f13345Wwwwwwwwwwwwwwwwwwwwwww += skip;
        return skip;
    }

    public String toString() {
        return this.f13347Wwwwwwwwwwwwwwwwwwwwwwwww.toString();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f13346Wwwwwwwwwwwwwwwwwwwwwwww;
        if (j < 0 || this.f13345Wwwwwwwwwwwwwwwwwwwwwww < j) {
            int read = this.f13347Wwwwwwwwwwwwwwwwwwwwwwwww.read(bArr, i, (int) (j >= 0 ? Math.min(i2, j - this.f13345Wwwwwwwwwwwwwwwwwwwwwww) : i2));
            if (read == -1) {
                return -1;
            }
            this.f13345Wwwwwwwwwwwwwwwwwwwwwww += read;
            return read;
        }
        return -1;
    }
}
