package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.IOException;
import java.io.OutputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class BufferedOutputStream extends OutputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4191Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ArrayPool f4192Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte[] f4193Wwwwwwwwwwwwwwwwwwwwwwww;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final OutputStream f4194Wwwwwwwwwwwwwwwwwwwwwwwww;

    public BufferedOutputStream(@NonNull OutputStream outputStream, @NonNull ArrayPool arrayPool) {
        this(outputStream, arrayPool, 65536);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        if (this.f4191Wwwwwwwwwwwwwwwwwwwwww == this.f4193Wwwwwwwwwwwwwwwwwwwwwwww.length) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        int i = this.f4191Wwwwwwwwwwwwwwwwwwwwww;
        if (i > 0) {
            this.f4194Wwwwwwwwwwwwwwwwwwwwwwwww.write(this.f4193Wwwwwwwwwwwwwwwwwwwwwwww, 0, i);
            this.f4191Wwwwwwwwwwwwwwwwwwwwww = 0;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.f4194Wwwwwwwwwwwwwwwwwwwwwwwww.close();
            release();
        } catch (Throwable th) {
            this.f4194Wwwwwwwwwwwwwwwwwwwwwwwww.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f4194Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    public final void release() {
        byte[] bArr = this.f4193Wwwwwwwwwwwwwwwwwwwwwwww;
        if (bArr != null) {
            this.f4192Wwwwwwwwwwwwwwwwwwwwwww.put(bArr);
            this.f4193Wwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f4193Wwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = this.f4191Wwwwwwwwwwwwwwwwwwwwww;
        this.f4191Wwwwwwwwwwwwwwwwwwwwww = i2 + 1;
        bArr[i2] = (byte) i;
        Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @VisibleForTesting
    public BufferedOutputStream(@NonNull OutputStream outputStream, ArrayPool arrayPool, int i) {
        this.f4194Wwwwwwwwwwwwwwwwwwwwwwwww = outputStream;
        this.f4192Wwwwwwwwwwwwwwwwwwwwwww = arrayPool;
        this.f4193Wwwwwwwwwwwwwwwwwwwwwwww = (byte[]) arrayPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, byte[].class);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        do {
            int i4 = i2 - i3;
            int i5 = i + i3;
            int i6 = this.f4191Wwwwwwwwwwwwwwwwwwwwww;
            if (i6 == 0 && i4 >= this.f4193Wwwwwwwwwwwwwwwwwwwwwwww.length) {
                this.f4194Wwwwwwwwwwwwwwwwwwwwwwwww.write(bArr, i5, i4);
                return;
            }
            int min = Math.min(i4, this.f4193Wwwwwwwwwwwwwwwwwwwwwwww.length - i6);
            System.arraycopy(bArr, i5, this.f4193Wwwwwwwwwwwwwwwwwwwwwwww, this.f4191Wwwwwwwwwwwwwwwwwwwwww, min);
            this.f4191Wwwwwwwwwwwwwwwwwwwwww += min;
            i3 += min;
            Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        } while (i3 < i2);
    }
}
