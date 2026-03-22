package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class BrokenOutputStream extends OutputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final IOException f13421Wwwwwwwwwwwwwwwwwwwwwwwww;

    public BrokenOutputStream(IOException iOException) {
        this.f13421Wwwwwwwwwwwwwwwwwwwwwwwww = iOException;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw this.f13421Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        throw this.f13421Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        throw this.f13421Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public BrokenOutputStream() {
        this(new IOException("Broken output stream"));
    }
}
