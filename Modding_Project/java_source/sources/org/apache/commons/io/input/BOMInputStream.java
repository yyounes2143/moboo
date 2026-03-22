package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.io.ByteOrderMark;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class BOMInputStream extends ProxyInputStream {

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Comparator<ByteOrderMark> f13334Wwwwwwwwwwwwwwwww = new Comparator<ByteOrderMark>() { // from class: org.apache.commons.io.input.BOMInputStream.1
        @Override // java.util.Comparator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public int compare(ByteOrderMark byteOrderMark, ByteOrderMark byteOrderMark2) {
            int length = byteOrderMark.length();
            int length2 = byteOrderMark2.length();
            if (length > length2) {
                return -1;
            }
            if (length2 > length) {
                return 1;
            }
            return 0;
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13335Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13336Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13337Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13338Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int[] f13339Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ByteOrderMark f13340Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ByteOrderMark> f13341Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13342Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final int Kkkkkkkkkkkkkkkkkkkk() throws IOException {
        Kkkkkkkkkkkkkkkkkkkkkk();
        int i = this.f13337Wwwwwwwwwwwwwwwwwwww;
        if (i < this.f13338Wwwwwwwwwwwwwwwwwwwww) {
            int[] iArr = this.f13339Wwwwwwwwwwwwwwwwwwwwww;
            this.f13337Wwwwwwwwwwwwwwwwwwww = i + 1;
            return iArr[i];
        }
        return -1;
    }

    public final boolean Kkkkkkkkkkkkkkkkkkkkk(ByteOrderMark byteOrderMark) {
        for (int i = 0; i < byteOrderMark.length(); i++) {
            if (byteOrderMark.get(i) != this.f13339Wwwwwwwwwwwwwwwwwwwwww[i]) {
                return false;
            }
        }
        return true;
    }

    public ByteOrderMark Kkkkkkkkkkkkkkkkkkkkkk() throws IOException {
        if (this.f13339Wwwwwwwwwwwwwwwwwwwwww == null) {
            this.f13338Wwwwwwwwwwwwwwwwwwwww = 0;
            this.f13339Wwwwwwwwwwwwwwwwwwwwww = new int[this.f13341Wwwwwwwwwwwwwwwwwwwwwwww.get(0).length()];
            int i = 0;
            while (true) {
                int[] iArr = this.f13339Wwwwwwwwwwwwwwwwwwwwww;
                if (i >= iArr.length) {
                    break;
                }
                iArr[i] = ((FilterInputStream) this).in.read();
                this.f13338Wwwwwwwwwwwwwwwwwwwww++;
                if (this.f13339Wwwwwwwwwwwwwwwwwwwwww[i] < 0) {
                    break;
                }
                i++;
            }
            ByteOrderMark Kkkkkkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkkkkkk();
            this.f13340Wwwwwwwwwwwwwwwwwwwwwww = Kkkkkkkkkkkkkkkkkkkkkkk2;
            if (Kkkkkkkkkkkkkkkkkkkkkkk2 != null && !this.f13342Wwwwwwwwwwwwwwwwwwwwwwwww) {
                if (Kkkkkkkkkkkkkkkkkkkkkkk2.length() < this.f13339Wwwwwwwwwwwwwwwwwwwwww.length) {
                    this.f13337Wwwwwwwwwwwwwwwwwwww = this.f13340Wwwwwwwwwwwwwwwwwwwwwww.length();
                } else {
                    this.f13338Wwwwwwwwwwwwwwwwwwwww = 0;
                }
            }
        }
        return this.f13340Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public final ByteOrderMark Kkkkkkkkkkkkkkkkkkkkkkk() {
        for (ByteOrderMark byteOrderMark : this.f13341Wwwwwwwwwwwwwwwwwwwwwwww) {
            if (Kkkkkkkkkkkkkkkkkkkkk(byteOrderMark)) {
                return byteOrderMark;
            }
        }
        return null;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        boolean z;
        this.f13336Wwwwwwwwwwwwwwwwwww = this.f13337Wwwwwwwwwwwwwwwwwwww;
        if (this.f13339Wwwwwwwwwwwwwwwwwwwwww == null) {
            z = true;
        } else {
            z = false;
        }
        this.f13335Wwwwwwwwwwwwwwwwww = z;
        ((FilterInputStream) this).in.mark(i);
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int Kkkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkkk();
        return Kkkkkkkkkkkkkkkkkkkk2 >= 0 ? Kkkkkkkkkkkkkkkkkkkk2 : ((FilterInputStream) this).in.read();
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        try {
            this.f13337Wwwwwwwwwwwwwwwwwwww = this.f13336Wwwwwwwwwwwwwwwwwww;
            if (this.f13335Wwwwwwwwwwwwwwwwww) {
                this.f13339Wwwwwwwwwwwwwwwwwwwwww = null;
            }
            ((FilterInputStream) this).in.reset();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long j2;
        int i = 0;
        while (true) {
            j2 = i;
            if (j <= j2 || Kkkkkkkkkkkkkkkkkkkk() < 0) {
                break;
            }
            i++;
        }
        return ((FilterInputStream) this).in.skip(j - j2) + j2;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        int i4 = 0;
        while (i2 > 0 && i3 >= 0) {
            i3 = Kkkkkkkkkkkkkkkkkkkk();
            if (i3 >= 0) {
                bArr[i] = (byte) (i3 & 255);
                i2--;
                i4++;
                i++;
            }
        }
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read < 0) {
            if (i4 > 0) {
                return i4;
            }
            return -1;
        }
        return i4 + read;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
