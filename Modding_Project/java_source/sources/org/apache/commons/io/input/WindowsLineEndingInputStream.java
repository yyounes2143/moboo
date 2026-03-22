package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class WindowsLineEndingInputStream extends InputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13405Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InputStream f13406Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13407Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13408Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13409Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13410Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        boolean z;
        boolean z2;
        int read = this.f13406Wwwwwwwwwwwwwwwwwwwww.read();
        boolean z3 = false;
        if (read == -1) {
            z = true;
        } else {
            z = false;
        }
        this.f13407Wwwwwwwwwwwwwwwwwwwwww = z;
        if (z) {
            return read;
        }
        if (read == 13) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f13410Wwwwwwwwwwwwwwwwwwwwwwwww = z2;
        if (read == 10) {
            z3 = true;
        }
        this.f13409Wwwwwwwwwwwwwwwwwwwwwwww = z3;
        return read;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f13405Wwwwwwwwwwwwwwwwwwww) {
            return -1;
        }
        boolean z = this.f13409Wwwwwwwwwwwwwwwwwwwwwwww;
        if (!z && !this.f13410Wwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f13410Wwwwwwwwwwwwwwwwwwwwwwwww = true;
            return 13;
        } else if (z) {
            return -1;
        } else {
            this.f13410Wwwwwwwwwwwwwwwwwwwwwwwww = false;
            this.f13409Wwwwwwwwwwwwwwwwwwwwwwww = true;
            return 10;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f13406Wwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        throw new UnsupportedOperationException("Mark not supported");
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f13407Wwwwwwwwwwwwwwwwwwwwww) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (this.f13408Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13408Wwwwwwwwwwwwwwwwwwwwwww = false;
            return 10;
        }
        boolean z = this.f13410Wwwwwwwwwwwwwwwwwwwwwwwww;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (this.f13407Wwwwwwwwwwwwwwwwwwwwww) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == 10 && !z) {
            this.f13408Wwwwwwwwwwwwwwwwwwwwwww = true;
            return 13;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
