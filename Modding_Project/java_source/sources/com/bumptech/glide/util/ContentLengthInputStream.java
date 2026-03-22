package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ContentLengthInputStream extends FilterInputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5186Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5187Wwwwwwwwwwwwwwwwwwwwwwwww;

    public ContentLengthInputStream(@NonNull InputStream inputStream, long j) {
        super(inputStream);
        this.f5187Wwwwwwwwwwwwwwwwwwwwwwwww = j;
    }

    @NonNull
    public static InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream, long j) {
        return new ContentLengthInputStream(inputStream, j);
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
        if (i >= 0) {
            this.f5186Wwwwwwwwwwwwwwwwwwwwwwww += i;
            return i;
        } else if (this.f5187Wwwwwwwwwwwwwwwwwwwwwwwww - this.f5186Wwwwwwwwwwwwwwwwwwwwwwww <= 0) {
            return i;
        } else {
            throw new IOException("Failed to read all expected data, expected: " + this.f5187Wwwwwwwwwwwwwwwwwwwwwwwww + ", but read: " + this.f5186Wwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.f5187Wwwwwwwwwwwwwwwwwwwwwwwww - this.f5186Wwwwwwwwwwwwwwwwwwwwwwww, ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int read;
        read = super.read();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(super.read(bArr, i, i2));
    }
}
