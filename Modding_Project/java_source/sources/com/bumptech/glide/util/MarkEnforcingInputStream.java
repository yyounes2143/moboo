package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MarkEnforcingInputStream extends FilterInputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5206Wwwwwwwwwwwwwwwwwwwwwwwww;

    public MarkEnforcingInputStream(@NonNull InputStream inputStream) {
        super(inputStream);
        this.f5206Wwwwwwwwwwwwwwwwwwwwwwwww = Integer.MIN_VALUE;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        int i = this.f5206Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (i != Integer.MIN_VALUE && j != -1) {
            this.f5206Wwwwwwwwwwwwwwwwwwwwwwwww = (int) (i - j);
        }
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        int i = this.f5206Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == 0) {
            return -1L;
        }
        if (i != Integer.MIN_VALUE && j > i) {
            return i;
        }
        return j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i = this.f5206Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(i, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        super.mark(i);
        this.f5206Wwwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1L) == -1) {
            return -1;
        }
        int read = super.read();
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.f5206Wwwwwwwwwwwwwwwwwwwwwwwww = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
            return 0L;
        }
        long skip = super.skip(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = (int) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
            return -1;
        }
        int read = super.read(bArr, i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(read);
        return read;
    }
}
