package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class BrokenInputStream extends InputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final IOException f13353Wwwwwwwwwwwwwwwwwwwwwwwww;

    public BrokenInputStream(IOException iOException) {
        this.f13353Wwwwwwwwwwwwwwwwwwwwwwwww = iOException;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        throw this.f13353Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw this.f13353Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        throw this.f13353Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        throw this.f13353Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        throw this.f13353Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public BrokenInputStream() {
        this(new IOException("Broken input stream"));
    }
}
