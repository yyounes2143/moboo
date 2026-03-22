package org.apache.commons.io.input;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class NullReader extends Reader implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13373Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13374Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13375Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13376Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13377Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13378Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13379Wwwwwwwwwwwwwwwwwwwwwwwww;

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return 0;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws EOFException {
        this.f13375Wwwwwwwwwwwwwwwwwwwww = true;
        if (!this.f13374Wwwwwwwwwwwwwwwwwwww) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13375Wwwwwwwwwwwwwwwwwwwww = false;
        this.f13378Wwwwwwwwwwwwwwwwwwwwwwww = 0L;
        this.f13377Wwwwwwwwwwwwwwwwwwwwwww = -1L;
    }

    @Override // java.io.Reader
    public synchronized void mark(int i) {
        if (this.f13373Wwwwwwwwwwwwwwwwwww) {
            this.f13377Wwwwwwwwwwwwwwwwwwwwwww = this.f13378Wwwwwwwwwwwwwwwwwwwwwwww;
            this.f13376Wwwwwwwwwwwwwwwwwwwwww = i;
        } else {
            throw new UnsupportedOperationException("Mark not supported");
        }
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return this.f13373Wwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (!this.f13375Wwwwwwwwwwwwwwwwwwwww) {
            long j = this.f13378Wwwwwwwwwwwwwwwwwwwwwwww;
            if (j == this.f13379Wwwwwwwwwwwwwwwwwwwwwwwww) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            this.f13378Wwwwwwwwwwwwwwwwwwwwwwww = j + 1;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IOException("Read after end of file");
    }

    @Override // java.io.Reader
    public synchronized void reset() throws IOException {
        if (this.f13373Wwwwwwwwwwwwwwwwwww) {
            long j = this.f13377Wwwwwwwwwwwwwwwwwwwwwww;
            if (j >= 0) {
                if (this.f13378Wwwwwwwwwwwwwwwwwwwwwwww <= this.f13376Wwwwwwwwwwwwwwwwwwwwww + j) {
                    this.f13378Wwwwwwwwwwwwwwwwwwwwwwww = j;
                    this.f13375Wwwwwwwwwwwwwwwwwwwww = false;
                } else {
                    throw new IOException("Marked position [" + this.f13377Wwwwwwwwwwwwwwwwwwwwwww + "] is no longer valid - passed the read limit [" + this.f13376Wwwwwwwwwwwwwwwwwwwwww + "]");
                }
            } else {
                throw new IOException("No position has been marked");
            }
        } else {
            throw new UnsupportedOperationException("Mark not supported");
        }
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        if (!this.f13375Wwwwwwwwwwwwwwwwwwwww) {
            long j2 = this.f13378Wwwwwwwwwwwwwwwwwwwwwwww;
            long j3 = this.f13379Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (j2 == j3) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            long j4 = j2 + j;
            this.f13378Wwwwwwwwwwwwwwwwwwwwwwww = j4;
            if (j4 > j3) {
                long j5 = j - (j4 - j3);
                this.f13378Wwwwwwwwwwwwwwwwwwwwwwww = j3;
                return j5;
            }
            return j;
        }
        throw new IOException("Skip after end of file");
    }

    @Override // java.io.Reader
    public int read(char[] cArr) throws IOException {
        return read(cArr, 0, cArr.length);
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        if (!this.f13375Wwwwwwwwwwwwwwwwwwwww) {
            long j = this.f13378Wwwwwwwwwwwwwwwwwwwwwwww;
            long j2 = this.f13379Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (j == j2) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            long j3 = j + i2;
            this.f13378Wwwwwwwwwwwwwwwwwwwwwwww = j3;
            if (j3 > j2) {
                i2 -= (int) (j3 - j2);
                this.f13378Wwwwwwwwwwwwwwwwwwwwwwww = j2;
            }
            Wwwwwwwwwwwwww(cArr, i, i2);
            return i2;
        }
        throw new IOException("Read after end of file");
    }

    public void Wwwwwwwwwwwwww(char[] cArr, int i, int i2) {
    }
}
