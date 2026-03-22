package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RecyclableBufferedInputStream extends FilterInputStream implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f4810Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4811Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4812Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4813Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4814Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile byte[] f4815Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class InvalidMarkException extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        public InvalidMarkException(String str) {
            super(str);
        }
    }

    public RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool) {
        this(inputStream, arrayPool, 65536);
    }

    public static IOException Wwwwwwwwwwwwww() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4813Wwwwwwwwwwwwwwwwwwwwwww = this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww.length;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream, byte[] bArr) throws IOException {
        int i = this.f4812Wwwwwwwwwwwwwwwwwwwwww;
        if (i != -1) {
            int i2 = this.f4811Wwwwwwwwwwwwwwwwwwwww - i;
            int i3 = this.f4813Wwwwwwwwwwwwwwwwwwwwwww;
            if (i2 < i3) {
                if (i == 0 && i3 > bArr.length && this.f4814Wwwwwwwwwwwwwwwwwwwwwwww == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f4810Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww = bArr2;
                    this.f4810Wwwwwwwwwwwwwwwwwwww.put(bArr);
                    bArr = bArr2;
                } else if (i > 0) {
                    System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                }
                int i4 = this.f4811Wwwwwwwwwwwwwwwwwwwww - this.f4812Wwwwwwwwwwwwwwwwwwwwww;
                this.f4811Wwwwwwwwwwwwwwwwwwwww = i4;
                this.f4812Wwwwwwwwwwwwwwwwwwwwww = 0;
                this.f4814Wwwwwwwwwwwwwwwwwwwwwwww = 0;
                int read = inputStream.read(bArr, i4, bArr.length - i4);
                int i5 = this.f4811Wwwwwwwwwwwwwwwwwwwww;
                if (read > 0) {
                    i5 += read;
                }
                this.f4814Wwwwwwwwwwwwwwwwwwwwwwww = i5;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f4812Wwwwwwwwwwwwwwwwwwwwww = -1;
            this.f4811Wwwwwwwwwwwwwwwwwwwww = 0;
            this.f4814Wwwwwwwwwwwwwwwwwwwwwwww = read2;
        }
        return read2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww != null && inputStream != null) {
        } else {
            throw Wwwwwwwwwwwwww();
        }
        return (this.f4814Wwwwwwwwwwwwwwwwwwwwwwww - this.f4811Wwwwwwwwwwwwwwwwwwwww) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww != null) {
            this.f4810Wwwwwwwwwwwwwwwwwwww.put(this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww);
            this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.f4813Wwwwwwwwwwwwwwwwwwwwwww = Math.max(this.f4813Wwwwwwwwwwwwwwwwwwwwwww, i);
        this.f4812Wwwwwwwwwwwwwwwwwwwwww = this.f4811Wwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr != null && inputStream != null) {
            if (this.f4811Wwwwwwwwwwwwwwwwwwwww < this.f4814Wwwwwwwwwwwwwwwwwwwwwwww || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream, bArr) != -1) {
                if (bArr != this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww && (bArr = this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww) == null) {
                    throw Wwwwwwwwwwwwww();
                }
                int i = this.f4814Wwwwwwwwwwwwwwwwwwwwwwww;
                int i2 = this.f4811Wwwwwwwwwwwwwwwwwwwww;
                if (i - i2 > 0) {
                    this.f4811Wwwwwwwwwwwwwwwwwwwww = i2 + 1;
                    return bArr[i2] & 255;
                }
                return -1;
            }
            return -1;
        }
        throw Wwwwwwwwwwwwww();
    }

    public synchronized void release() {
        if (this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww != null) {
            this.f4810Wwwwwwwwwwwwwwwwwwww.put(this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww);
            this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww != null) {
            int i = this.f4812Wwwwwwwwwwwwwwwwwwwwww;
            if (-1 != i) {
                this.f4811Wwwwwwwwwwwwwwwwwwwww = i;
            } else {
                throw new InvalidMarkException("Mark has been invalidated, pos: " + this.f4811Wwwwwwwwwwwwwwwwwwwww + " markLimit: " + this.f4813Wwwwwwwwwwwwwwwwwwwwwww);
            }
        } else {
            throw new IOException("Stream is closed");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        if (j < 1) {
            return 0L;
        }
        byte[] bArr = this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (bArr != null) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream != null) {
                int i = this.f4814Wwwwwwwwwwwwwwwwwwwwwwww;
                int i2 = this.f4811Wwwwwwwwwwwwwwwwwwwww;
                if (i - i2 >= j) {
                    this.f4811Wwwwwwwwwwwwwwwwwwwww = (int) (i2 + j);
                    return j;
                }
                long j2 = i - i2;
                this.f4811Wwwwwwwwwwwwwwwwwwwww = i;
                if (this.f4812Wwwwwwwwwwwwwwwwwwwwww != -1 && j <= this.f4813Wwwwwwwwwwwwwwwwwwwwwww) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream, bArr) == -1) {
                        return j2;
                    }
                    int i3 = this.f4814Wwwwwwwwwwwwwwwwwwwwwwww;
                    int i4 = this.f4811Wwwwwwwwwwwwwwwwwwwww;
                    if (i3 - i4 >= j - j2) {
                        this.f4811Wwwwwwwwwwwwwwwwwwwww = (int) ((i4 + j) - j2);
                        return j;
                    }
                    long j3 = (j2 + i3) - i4;
                    this.f4811Wwwwwwwwwwwwwwwwwwwww = i3;
                    return j3;
                }
                long skip = inputStream.skip(j - j2);
                if (skip > 0) {
                    this.f4812Wwwwwwwwwwwwwwwwwwwwww = -1;
                }
                return j2 + skip;
            }
            throw Wwwwwwwwwwwwww();
        }
        throw Wwwwwwwwwwwwww();
    }

    @VisibleForTesting
    public RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool, int i) {
        super(inputStream);
        this.f4812Wwwwwwwwwwwwwwwwwwwwww = -1;
        this.f4810Wwwwwwwwwwwwwwwwwwww = arrayPool;
        this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww = (byte[]) arrayPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, byte[].class);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        byte[] bArr2 = this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (bArr2 == null) {
            throw Wwwwwwwwwwwwww();
        }
        if (i2 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i5 = this.f4811Wwwwwwwwwwwwwwwwwwwww;
            int i6 = this.f4814Wwwwwwwwwwwwwwwwwwwwwwww;
            if (i5 < i6) {
                int i7 = i6 - i5 >= i2 ? i2 : i6 - i5;
                System.arraycopy(bArr2, i5, bArr, i, i7);
                this.f4811Wwwwwwwwwwwwwwwwwwwww += i7;
                if (i7 == i2 || inputStream.available() == 0) {
                    return i7;
                }
                i += i7;
                i3 = i2 - i7;
            } else {
                i3 = i2;
            }
            while (true) {
                if (this.f4812Wwwwwwwwwwwwwwwwwwwwww == -1 && i3 >= bArr2.length) {
                    i4 = inputStream.read(bArr, i, i3);
                    if (i4 == -1) {
                        return i3 != i2 ? i2 - i3 : -1;
                    }
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream, bArr2) == -1) {
                    return i3 != i2 ? i2 - i3 : -1;
                } else {
                    if (bArr2 != this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww && (bArr2 = this.f4815Wwwwwwwwwwwwwwwwwwwwwwwww) == null) {
                        throw Wwwwwwwwwwwwww();
                    }
                    int i8 = this.f4814Wwwwwwwwwwwwwwwwwwwwwwww;
                    int i9 = this.f4811Wwwwwwwwwwwwwwwwwwwww;
                    i4 = i8 - i9 >= i3 ? i3 : i8 - i9;
                    System.arraycopy(bArr2, i9, bArr, i, i4);
                    this.f4811Wwwwwwwwwwwwwwwwwwwww += i4;
                }
                i3 -= i4;
                if (i3 == 0) {
                    return i2;
                }
                if (inputStream.available() == 0) {
                    return i2 - i3;
                }
                i += i4;
            }
        } else {
            throw Wwwwwwwwwwwwww();
        }
    }
}
