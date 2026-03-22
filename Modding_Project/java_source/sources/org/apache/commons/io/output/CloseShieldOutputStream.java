package org.apache.commons.io.output;

import java.io.FilterOutputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class CloseShieldOutputStream extends ProxyOutputStream {
    @Override // org.apache.commons.io.output.ProxyOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ((FilterOutputStream) this).out = new ClosedOutputStream();
    }
}
