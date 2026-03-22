package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class WriterOutputStream extends OutputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CharBuffer f13451Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ByteBuffer f13452Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13453Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CharsetDecoder f13454Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Writer f13455Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) throws IOException {
        CoderResult decode;
        this.f13452Wwwwwwwwwwwwwwwwwwwwww.flip();
        while (true) {
            decode = this.f13454Wwwwwwwwwwwwwwwwwwwwwwww.decode(this.f13452Wwwwwwwwwwwwwwwwwwwwww, this.f13451Wwwwwwwwwwwwwwwwwwwww, z);
            if (!decode.isOverflow()) {
                break;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (decode.isUnderflow()) {
            this.f13452Wwwwwwwwwwwwwwwwwwwwww.compact();
            return;
        }
        throw new IOException("Unexpected coder result");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        if (this.f13451Wwwwwwwwwwwwwwwwwwwww.position() > 0) {
            this.f13455Wwwwwwwwwwwwwwwwwwwwwwwww.write(this.f13451Wwwwwwwwwwwwwwwwwwwww.array(), 0, this.f13451Wwwwwwwwwwwwwwwwwwwww.position());
            this.f13451Wwwwwwwwwwwwwwwwwwwww.rewind();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(true);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f13455Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f13455Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int min = Math.min(i2, this.f13452Wwwwwwwwwwwwwwwwwwwwww.remaining());
            this.f13452Wwwwwwwwwwwwwwwwwwwwww.put(bArr, i, min);
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(false);
            i2 -= min;
            i += min;
        }
        if (this.f13453Wwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }
}
