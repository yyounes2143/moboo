package org.apache.commons.io.input;

import java.io.IOException;
import java.io.OutputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class TeeInputStream extends ProxyInputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13398Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final OutputStream f13399Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            if (this.f13398Wwwwwwwwwwwwwwwwwwwwwwww) {
                this.f13399Wwwwwwwwwwwwwwwwwwwwwwwww.close();
            }
        }
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.f13399Wwwwwwwwwwwwwwwwwwwwwwwww.write(read);
        }
        return read;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f13399Wwwwwwwwwwwwwwwwwwwwwwwww.write(bArr, i, read);
        }
        return read;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int read = super.read(bArr);
        if (read != -1) {
            this.f13399Wwwwwwwwwwwwwwwwwwwwwwwww.write(bArr, 0, read);
        }
        return read;
    }
}
