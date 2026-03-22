package com.bumptech.glide.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes3.dex */
public class ExceptionCatchingInputStream extends InputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Queue<ExceptionCatchingInputStream> f5188Wwwwwwwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IOException f5189Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public InputStream f5190Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f5190Wwwwwwwwwwwwwwwwwwwwwwwww.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5190Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f5190Wwwwwwwwwwwwwwwwwwwwwwwww.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f5190Wwwwwwwwwwwwwwwwwwwwwwwww.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f5190Wwwwwwwwwwwwwwwwwwwwwwwww.read(bArr);
        } catch (IOException e) {
            this.f5189Wwwwwwwwwwwwwwwwwwwwwwww = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f5190Wwwwwwwwwwwwwwwwwwwwwwwww.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        try {
            return this.f5190Wwwwwwwwwwwwwwwwwwwwwwwww.skip(j);
        } catch (IOException e) {
            this.f5189Wwwwwwwwwwwwwwwwwwwwwwww = e;
            return 0L;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.f5190Wwwwwwwwwwwwwwwwwwwwwwwww.read(bArr, i, i2);
        } catch (IOException e) {
            this.f5189Wwwwwwwwwwwwwwwwwwwwwwww = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f5190Wwwwwwwwwwwwwwwwwwwwwwwww.read();
        } catch (IOException e) {
            this.f5189Wwwwwwwwwwwwwwwwwwwwwwww = e;
            return -1;
        }
    }
}
