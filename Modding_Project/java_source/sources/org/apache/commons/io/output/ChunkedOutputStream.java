package org.apache.commons.io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ChunkedOutputStream extends FilterOutputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13429Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int min = Math.min(i2, this.f13429Wwwwwwwwwwwwwwwwwwwwwwwww);
            ((FilterOutputStream) this).out.write(bArr, i, min);
            i2 -= min;
            i += min;
        }
    }
}
