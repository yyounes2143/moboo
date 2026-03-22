package org.apache.commons.io.input;

import java.io.FilterInputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class CloseShieldInputStream extends ProxyInputStream {
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ((FilterInputStream) this).in = new ClosedInputStream();
    }
}
