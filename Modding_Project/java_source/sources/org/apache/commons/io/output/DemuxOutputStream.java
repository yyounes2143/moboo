package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DemuxOutputStream extends OutputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InheritableThreadLocal<OutputStream> f13440Wwwwwwwwwwwwwwwwwwwwwwwww = new InheritableThreadLocal<>();

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OutputStream outputStream = this.f13440Wwwwwwwwwwwwwwwwwwwwwwwww.get();
        if (outputStream != null) {
            outputStream.close();
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this.f13440Wwwwwwwwwwwwwwwwwwwwwwwww.get();
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        OutputStream outputStream = this.f13440Wwwwwwwwwwwwwwwwwwwwwwwww.get();
        if (outputStream != null) {
            outputStream.write(i);
        }
    }
}
