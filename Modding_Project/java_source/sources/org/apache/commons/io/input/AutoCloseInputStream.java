package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class AutoCloseInputStream extends ProxyInputStream {
    @Override // org.apache.commons.io.input.ProxyInputStream
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
        if (i == -1) {
            close();
        }
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterInputStream) this).in.close();
        ((FilterInputStream) this).in = new ClosedInputStream();
    }

    public void finalize() throws Throwable {
        close();
        super.finalize();
    }
}
