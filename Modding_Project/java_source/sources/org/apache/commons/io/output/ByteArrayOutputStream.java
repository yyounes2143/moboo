package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ByteArrayOutputStream extends OutputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f13422Wwwwwwwwwwwwwwwwwww = new byte[0];

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13423Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13424Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte[] f13425Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13426Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13427Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<byte[]> f13428Wwwwwwwwwwwwwwwwwwwwwwwww;

    public ByteArrayOutputStream() {
        this(1024);
    }

    public synchronized void Wwwwwwwwwwwwww(OutputStream outputStream) throws IOException {
        int i = this.f13424Wwwwwwwwwwwwwwwwwwwww;
        for (byte[] bArr : this.f13428Wwwwwwwwwwwwwwwwwwwwwwwww) {
            int min = Math.min(bArr.length, i);
            outputStream.write(bArr, 0, min);
            i -= min;
            if (i == 0) {
                break;
            }
        }
    }

    public synchronized byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i = this.f13424Wwwwwwwwwwwwwwwwwwwww;
        if (i == 0) {
            return f13422Wwwwwwwwwwwwwwwwwww;
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (byte[] bArr2 : this.f13428Wwwwwwwwwwwwwwwwwwwwwwwww) {
            int min = Math.min(bArr2.length, i);
            System.arraycopy(bArr2, 0, bArr, i2, min);
            i2 += min;
            i -= min;
            if (i == 0) {
                break;
            }
        }
        return bArr;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (this.f13427Wwwwwwwwwwwwwwwwwwwwwwww < this.f13428Wwwwwwwwwwwwwwwwwwwwwwwww.size() - 1) {
            this.f13426Wwwwwwwwwwwwwwwwwwwwwww += this.f13425Wwwwwwwwwwwwwwwwwwwwww.length;
            int i2 = this.f13427Wwwwwwwwwwwwwwwwwwwwwwww + 1;
            this.f13427Wwwwwwwwwwwwwwwwwwwwwwww = i2;
            this.f13425Wwwwwwwwwwwwwwwwwwwwww = this.f13428Wwwwwwwwwwwwwwwwwwwwwwwww.get(i2);
            return;
        }
        byte[] bArr = this.f13425Wwwwwwwwwwwwwwwwwwwwww;
        if (bArr == null) {
            this.f13426Wwwwwwwwwwwwwwwwwwwwwww = 0;
        } else {
            i = Math.max(bArr.length << 1, i - this.f13426Wwwwwwwwwwwwwwwwwwwwwww);
            this.f13426Wwwwwwwwwwwwwwwwwwwwwww += this.f13425Wwwwwwwwwwwwwwwwwwwwww.length;
        }
        this.f13427Wwwwwwwwwwwwwwwwwwwwwwww++;
        byte[] bArr2 = new byte[i];
        this.f13425Wwwwwwwwwwwwwwwwwwwwww = bArr2;
        this.f13428Wwwwwwwwwwwwwwwwwwwwwwwww.add(bArr2);
    }

    @Deprecated
    public String toString() {
        return new String(Wwwwwwwwwwwwwwwwwwwwwwwwwww(), Charset.defaultCharset());
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        synchronized (this) {
            try {
                int i4 = this.f13424Wwwwwwwwwwwwwwwwwwwww;
                int i5 = i4 + i2;
                int i6 = i4 - this.f13426Wwwwwwwwwwwwwwwwwwwwwww;
                while (i2 > 0) {
                    int min = Math.min(i2, this.f13425Wwwwwwwwwwwwwwwwwwwwww.length - i6);
                    System.arraycopy(bArr, i3 - i2, this.f13425Wwwwwwwwwwwwwwwwwwwwww, i6, min);
                    i2 -= min;
                    if (i2 > 0) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i5);
                        i6 = 0;
                    }
                }
                this.f13424Wwwwwwwwwwwwwwwwwwwww = i5;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ByteArrayOutputStream(int i) {
        this.f13428Wwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        this.f13423Wwwwwwwwwwwwwwwwwwww = true;
        if (i >= 0) {
            synchronized (this) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
            }
            return;
        }
        throw new IllegalArgumentException("Negative initial size: " + i);
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i) {
        try {
            int i2 = this.f13424Wwwwwwwwwwwwwwwwwwwww;
            int i3 = i2 - this.f13426Wwwwwwwwwwwwwwwwwwwwwww;
            if (i3 == this.f13425Wwwwwwwwwwwwwwwwwwwwww.length) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2 + 1);
                i3 = 0;
            }
            this.f13425Wwwwwwwwwwwwwwwwwwwwww[i3] = (byte) i;
            this.f13424Wwwwwwwwwwwwwwwwwwwww++;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }
}
