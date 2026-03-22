package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class CharSequenceInputStream extends InputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13354Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13355Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ByteBuffer f13356Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CharBuffer f13357Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CharsetEncoder f13358Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws CharacterCodingException {
        this.f13356Wwwwwwwwwwwwwwwwwwwwwww.compact();
        CoderResult encode = this.f13358Wwwwwwwwwwwwwwwwwwwwwwwww.encode(this.f13357Wwwwwwwwwwwwwwwwwwwwwwww, this.f13356Wwwwwwwwwwwwwwwwwwwwwww, true);
        if (encode.isError()) {
            encode.throwException();
        }
        this.f13356Wwwwwwwwwwwwwwwwwwwwwww.flip();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f13356Wwwwwwwwwwwwwwwwwwwwwww.remaining() + this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.remaining();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        this.f13355Wwwwwwwwwwwwwwwwwwwwww = this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.position();
        this.f13354Wwwwwwwwwwwwwwwwwwwww = this.f13356Wwwwwwwwwwwwwwwwwwwwwww.position();
        this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.mark();
        this.f13356Wwwwwwwwwwwwwwwwwwwwwww.mark();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (bArr != null) {
            if (i2 < 0 || i + i2 > bArr.length) {
                throw new IndexOutOfBoundsException("Array Size=" + bArr.length + ", offset=" + i + ", length=" + i2);
            }
            int i3 = 0;
            if (i2 == 0) {
                return 0;
            }
            if (this.f13356Wwwwwwwwwwwwwwwwwwwwwww.hasRemaining() || this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
                while (i2 > 0) {
                    if (this.f13356Wwwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
                        int min = Math.min(this.f13356Wwwwwwwwwwwwwwwwwwwwwww.remaining(), i2);
                        this.f13356Wwwwwwwwwwwwwwwwwwwwwww.get(bArr, i, min);
                        i += min;
                        i2 -= min;
                        i3 += min;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (!this.f13356Wwwwwwwwwwwwwwwwwwwwwww.hasRemaining() && !this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
                            break;
                        }
                    }
                }
                if (i3 != 0 || this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
                    return i3;
                }
                return -1;
            }
            return -1;
        }
        throw new NullPointerException("Byte array is null");
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        try {
            if (this.f13355Wwwwwwwwwwwwwwwwwwwwww != -1) {
                if (this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.position() != 0) {
                    this.f13358Wwwwwwwwwwwwwwwwwwwwwwwww.reset();
                    this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.rewind();
                    this.f13356Wwwwwwwwwwwwwwwwwwwwwww.rewind();
                    this.f13356Wwwwwwwwwwwwwwwwwwwwwww.limit(0);
                    while (this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.position() < this.f13355Wwwwwwwwwwwwwwwwwwwwww) {
                        this.f13356Wwwwwwwwwwwwwwwwwwwwwww.rewind();
                        this.f13356Wwwwwwwwwwwwwwwwwwwwwww.limit(0);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
                if (this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.position() == this.f13355Wwwwwwwwwwwwwwwwwwwwww) {
                    this.f13356Wwwwwwwwwwwwwwwwwwwwwww.position(this.f13354Wwwwwwwwwwwwwwwwwwwww);
                    this.f13355Wwwwwwwwwwwwwwwwwwwwww = -1;
                    this.f13354Wwwwwwwwwwwwwwwwwwwww = -1;
                } else {
                    throw new IllegalStateException("Unexpected CharBuffer postion: actual=" + this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.position() + " expected=" + this.f13355Wwwwwwwwwwwwwwwwwwwwww);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = 0;
        while (j > 0 && available() > 0) {
            read();
            j--;
            j2++;
        }
        return j2;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        while (!this.f13356Wwwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (!this.f13356Wwwwwwwwwwwwwwwwwwwwwww.hasRemaining() && !this.f13357Wwwwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
                return -1;
            }
        }
        return this.f13356Wwwwwwwwwwwwwwwwwwwwwww.get() & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }
}
