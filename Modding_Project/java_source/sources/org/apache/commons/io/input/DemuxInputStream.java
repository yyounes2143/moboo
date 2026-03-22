package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DemuxInputStream extends InputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InheritableThreadLocal<InputStream> f13362Wwwwwwwwwwwwwwwwwwwwwwwww = new InheritableThreadLocal<>();

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.f13362Wwwwwwwwwwwwwwwwwwwwwwwww.get();
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        InputStream inputStream = this.f13362Wwwwwwwwwwwwwwwwwwwwwwwww.get();
        if (inputStream != null) {
            return inputStream.read();
        }
        return -1;
    }
}
