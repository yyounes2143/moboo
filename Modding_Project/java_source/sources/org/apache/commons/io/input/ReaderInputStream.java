package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ReaderInputStream extends InputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13381Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CoderResult f13382Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ByteBuffer f13383Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CharBuffer f13384Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CharsetEncoder f13385Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Reader f13386Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        CoderResult coderResult;
        if (!this.f13381Wwwwwwwwwwwwwwwwwwww && ((coderResult = this.f13382Wwwwwwwwwwwwwwwwwwwww) == null || coderResult.isUnderflow())) {
            this.f13384Wwwwwwwwwwwwwwwwwwwwwww.compact();
            int position = this.f13384Wwwwwwwwwwwwwwwwwwwwwww.position();
            int read = this.f13386Wwwwwwwwwwwwwwwwwwwwwwwww.read(this.f13384Wwwwwwwwwwwwwwwwwwwwwww.array(), position, this.f13384Wwwwwwwwwwwwwwwwwwwwwww.remaining());
            if (read == -1) {
                this.f13381Wwwwwwwwwwwwwwwwwwww = true;
            } else {
                this.f13384Wwwwwwwwwwwwwwwwwwwwwww.position(position + read);
            }
            this.f13384Wwwwwwwwwwwwwwwwwwwwwww.flip();
        }
        this.f13383Wwwwwwwwwwwwwwwwwwwwww.compact();
        this.f13382Wwwwwwwwwwwwwwwwwwwww = this.f13385Wwwwwwwwwwwwwwwwwwwwwwww.encode(this.f13384Wwwwwwwwwwwwwwwwwwwwwww, this.f13383Wwwwwwwwwwwwwwwwwwwwww, this.f13381Wwwwwwwwwwwwwwwwwwww);
        this.f13383Wwwwwwwwwwwwwwwwwwwwww.flip();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13386Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (bArr != null) {
            if (i2 < 0 || i < 0 || i + i2 > bArr.length) {
                throw new IndexOutOfBoundsException("Array Size=" + bArr.length + ", offset=" + i + ", length=" + i2);
            }
            int i3 = 0;
            if (i2 == 0) {
                return 0;
            }
            while (i2 > 0) {
                if (this.f13383Wwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
                    int min = Math.min(this.f13383Wwwwwwwwwwwwwwwwwwwwww.remaining(), i2);
                    this.f13383Wwwwwwwwwwwwwwwwwwwwww.get(bArr, i, min);
                    i += min;
                    i2 -= min;
                    i3 += min;
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (this.f13381Wwwwwwwwwwwwwwwwwwww && !this.f13383Wwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
                        break;
                    }
                }
            }
            if (i3 == 0 && this.f13381Wwwwwwwwwwwwwwwwwwww) {
                return -1;
            }
            return i3;
        }
        throw new NullPointerException("Byte array must not be null");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        while (!this.f13383Wwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (this.f13381Wwwwwwwwwwwwwwwwwwww && !this.f13383Wwwwwwwwwwwwwwwwwwwwww.hasRemaining()) {
                return -1;
            }
        }
        return this.f13383Wwwwwwwwwwwwwwwwwwwwww.get() & 255;
    }
}
