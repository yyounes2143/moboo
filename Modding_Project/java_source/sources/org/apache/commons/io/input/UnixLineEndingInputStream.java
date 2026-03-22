package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class UnixLineEndingInputStream extends InputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13400Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InputStream f13401Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13402Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13403Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13404Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        boolean z;
        boolean z2;
        int read = this.f13401Wwwwwwwwwwwwwwwwwwwwww.read();
        boolean z3 = false;
        if (read == -1) {
            z = true;
        } else {
            z = false;
        }
        this.f13402Wwwwwwwwwwwwwwwwwwwwwww = z;
        if (z) {
            return read;
        }
        if (read == 10) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f13404Wwwwwwwwwwwwwwwwwwwwwwwww = z2;
        if (read == 13) {
            z3 = true;
        }
        this.f13403Wwwwwwwwwwwwwwwwwwwwwwww = z3;
        return read;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (z || !this.f13400Wwwwwwwwwwwwwwwwwwwww || this.f13404Wwwwwwwwwwwwwwwwwwwwwwwww) {
            return -1;
        }
        this.f13404Wwwwwwwwwwwwwwwwwwwwwwwww = true;
        return 10;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f13401Wwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        throw new UnsupportedOperationException("Mark notsupported");
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        boolean z = this.f13403Wwwwwwwwwwwwwwwwwwwwwwww;
        if (this.f13402Wwwwwwwwwwwwwwwwwwwwwww) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
        }
        int Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (this.f13402Wwwwwwwwwwwwwwwwwwwwwww) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
        }
        if (this.f13403Wwwwwwwwwwwwwwwwwwwwwwww) {
            return 10;
        }
        if (z && this.f13404Wwwwwwwwwwwwwwwwwwwwwwwww) {
            return read();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
