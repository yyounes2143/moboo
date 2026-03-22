package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.google.common.base.Ascii;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ExifOrientationStream extends FilterInputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f4198Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f4199Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final byte[] f4200Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4201Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte f4202Wwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        byte[] bArr = {-1, -31, 0, Ascii.FS, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, Ascii.DC2, 0, 2, 0, 0, 0, 1, 0};
        f4200Wwwwwwwwwwwwwwwwwwwwwww = bArr;
        int length = bArr.length;
        f4199Wwwwwwwwwwwwwwwwwwwwww = length;
        f4198Wwwwwwwwwwwwwwwwwwwww = length + 2;
    }

    public ExifOrientationStream(InputStream inputStream, int i) {
        super(inputStream);
        if (i >= -1 && i <= 8) {
            this.f4202Wwwwwwwwwwwwwwwwwwwwwwwww = (byte) i;
            return;
        }
        throw new IllegalArgumentException("Cannot add invalid orientation: " + i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read;
        int i;
        int i2 = this.f4201Wwwwwwwwwwwwwwwwwwwwwwww;
        if (i2 < 2 || i2 > (i = f4198Wwwwwwwwwwwwwwwwwwwww)) {
            read = super.read();
        } else if (i2 == i) {
            read = this.f4202Wwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            read = f4200Wwwwwwwwwwwwwwwwwwwwwww[i2 - 2] & 255;
        }
        if (read != -1) {
            this.f4201Wwwwwwwwwwwwwwwwwwwwwwww++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = super.skip(j);
        if (skip > 0) {
            this.f4201Wwwwwwwwwwwwwwwwwwwwwwww = (int) (this.f4201Wwwwwwwwwwwwwwwwwwwwwwww + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4 = this.f4201Wwwwwwwwwwwwwwwwwwwwwwww;
        int i5 = f4198Wwwwwwwwwwwwwwwwwwwww;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.f4202Wwwwwwwwwwwwwwwwwwwwwwwww;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int min = Math.min(i5 - i4, i2);
            System.arraycopy(f4200Wwwwwwwwwwwwwwwwwwwwwww, this.f4201Wwwwwwwwwwwwwwwwwwwwwwww - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.f4201Wwwwwwwwwwwwwwwwwwwwwwww += i3;
        }
        return i3;
    }
}
