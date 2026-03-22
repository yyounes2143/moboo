package com.bumptech.glide.util;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ExceptionPassthroughInputStream extends InputStream implements AutoCloseable {
    @GuardedBy("POOL")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Queue<ExceptionPassthroughInputStream> f5191Wwwwwwwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IOException f5192Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public InputStream f5193Wwwwwwwwwwwwwwwwwwwwwwwww;

    @NonNull
    public static ExceptionPassthroughInputStream Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull InputStream inputStream) {
        ExceptionPassthroughInputStream poll;
        Queue<ExceptionPassthroughInputStream> queue = f5191Wwwwwwwwwwwwwwwwwwwwwww;
        synchronized (queue) {
            poll = queue.poll();
        }
        if (poll == null) {
            poll = new ExceptionPassthroughInputStream();
        }
        poll.Wwwwwwwwwwwwww(inputStream);
        return poll;
    }

    public void Wwwwwwwwwwwwww(@NonNull InputStream inputStream) {
        this.f5193Wwwwwwwwwwwwwwwwwwwwwwwww = inputStream;
    }

    @Nullable
    public IOException Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5192Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f5193Wwwwwwwwwwwwwwwwwwwwwwwww.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5193Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f5193Wwwwwwwwwwwwwwwwwwwwwwwww.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f5193Wwwwwwwwwwwwwwwwwwwwwwwww.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            return this.f5193Wwwwwwwwwwwwwwwwwwwwwwwww.read();
        } catch (IOException e) {
            this.f5192Wwwwwwwwwwwwwwwwwwwwwwww = e;
            throw e;
        }
    }

    public void release() {
        this.f5192Wwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f5193Wwwwwwwwwwwwwwwwwwwwwwwww = null;
        Queue<ExceptionPassthroughInputStream> queue = f5191Wwwwwwwwwwwwwwwwwwwwwww;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f5193Wwwwwwwwwwwwwwwwwwwwwwwww.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        try {
            return this.f5193Wwwwwwwwwwwwwwwwwwwwwwwww.skip(j);
        } catch (IOException e) {
            this.f5192Wwwwwwwwwwwwwwwwwwwwwwww = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            return this.f5193Wwwwwwwwwwwwwwwwwwwwwwwww.read(bArr);
        } catch (IOException e) {
            this.f5192Wwwwwwwwwwwwwwwwwwwwwwww = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            return this.f5193Wwwwwwwwwwwwwwwwwwwwwwwww.read(bArr, i, i2);
        } catch (IOException e) {
            this.f5192Wwwwwwwwwwwwwwwwwwwwwwww = e;
            throw e;
        }
    }
}
