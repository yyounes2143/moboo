package org.apache.commons.io.output;

import java.io.FilterWriter;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ChunkedWriter extends FilterWriter {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13430Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int min = Math.min(i2, this.f13430Wwwwwwwwwwwwwwwwwwwwwwwww);
            ((FilterWriter) this).out.write(cArr, i, min);
            i2 -= min;
            i += min;
        }
    }
}
