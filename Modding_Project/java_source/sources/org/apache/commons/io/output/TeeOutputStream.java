package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class TeeOutputStream extends ProxyOutputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public OutputStream f13447Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // org.apache.commons.io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            this.f13447Wwwwwwwwwwwwwwwwwwwwwwwww.close();
        }
    }

    @Override // org.apache.commons.io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        super.flush();
        this.f13447Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    @Override // org.apache.commons.io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr) throws IOException {
        super.write(bArr);
        this.f13447Wwwwwwwwwwwwwwwwwwwwwwwww.write(bArr);
    }

    @Override // org.apache.commons.io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) throws IOException {
        super.write(bArr, i, i2);
        this.f13447Wwwwwwwwwwwwwwwwwwwwwwwww.write(bArr, i, i2);
    }

    @Override // org.apache.commons.io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(int i) throws IOException {
        super.write(i);
        this.f13447Wwwwwwwwwwwwwwwwwwwwwwwww.write(i);
    }
}
