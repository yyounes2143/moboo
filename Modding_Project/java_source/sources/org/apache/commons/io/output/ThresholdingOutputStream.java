package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class ThresholdingOutputStream extends OutputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13448Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13449Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13450Wwwwwwwwwwwwwwwwwwwwwwwww;

    public abstract void Wwwwwwwwwwwwww() throws IOException;

    public abstract OutputStream Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException;

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
        if (!this.f13448Wwwwwwwwwwwwwwwwwwwwwww && this.f13449Wwwwwwwwwwwwwwwwwwwwwwww + i > this.f13450Wwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f13448Wwwwwwwwwwwwwwwwwwwwwww = true;
            Wwwwwwwwwwwwww();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
        } catch (IOException unused) {
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwww().close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww().flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
        Wwwwwwwwwwwwwwwwwwwwwwwwwww().write(i);
        this.f13449Wwwwwwwwwwwwwwwwwwwwwwww++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr.length);
        Wwwwwwwwwwwwwwwwwwwwwwwwwww().write(bArr);
        this.f13449Wwwwwwwwwwwwwwwwwwwwwwww += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
        Wwwwwwwwwwwwwwwwwwwwwwwwwww().write(bArr, i, i2);
        this.f13449Wwwwwwwwwwwwwwwwwwwwwwww += i2;
    }
}
