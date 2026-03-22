package org.apache.commons.io.input;

import java.io.IOException;
import java.io.Reader;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class BoundedReader extends Reader implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13348Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13349Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13350Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13351Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Reader f13352Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13352Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        int i2 = this.f13351Wwwwwwwwwwwwwwwwwwwwwwww;
        this.f13349Wwwwwwwwwwwwwwwwwwwwww = i - i2;
        this.f13350Wwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f13352Wwwwwwwwwwwwwwwwwwwwwwwww.mark(i);
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        int i = this.f13351Wwwwwwwwwwwwwwwwwwwwwwww;
        if (i >= this.f13348Wwwwwwwwwwwwwwwwwwwww) {
            return -1;
        }
        int i2 = this.f13350Wwwwwwwwwwwwwwwwwwwwwww;
        if (i2 < 0 || i - i2 < this.f13349Wwwwwwwwwwwwwwwwwwwwww) {
            this.f13351Wwwwwwwwwwwwwwwwwwwwwwww = i + 1;
            return this.f13352Wwwwwwwwwwwwwwwwwwwwwwwww.read();
        }
        return -1;
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        this.f13351Wwwwwwwwwwwwwwwwwwwwwwww = this.f13350Wwwwwwwwwwwwwwwwwwwwwww;
        this.f13352Wwwwwwwwwwwwwwwwwwwwwwwww.reset();
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            int read = read();
            if (read == -1) {
                if (i3 == 0) {
                    return -1;
                }
                return i3;
            }
            cArr[i + i3] = (char) read;
        }
        return i2;
    }
}
