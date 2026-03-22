package com.bumptech.glide.disklrucache;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class StrictLineReader implements Closeable, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4112Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4113Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte[] f4114Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Charset f4115Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InputStream f4116Wwwwwwwwwwwwwwwwwwwwwwwww;

    public StrictLineReader(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public String Kkkkkkkkkkkkkkkkkkkkkkk() throws IOException {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.f4116Wwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (this.f4114Wwwwwwwwwwwwwwwwwwwwwww != null) {
                    if (this.f4113Wwwwwwwwwwwwwwwwwwwwww >= this.f4112Wwwwwwwwwwwwwwwwwwwww) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    for (int i3 = this.f4113Wwwwwwwwwwwwwwwwwwwwww; i3 != this.f4112Wwwwwwwwwwwwwwwwwwwww; i3++) {
                        byte[] bArr2 = this.f4114Wwwwwwwwwwwwwwwwwwwwwww;
                        if (bArr2[i3] == 10) {
                            int i4 = this.f4113Wwwwwwwwwwwwwwwwwwwwww;
                            if (i3 != i4) {
                                i2 = i3 - 1;
                                if (bArr2[i2] == 13) {
                                    String str = new String(bArr2, i4, i2 - i4, this.f4115Wwwwwwwwwwwwwwwwwwwwwwww.name());
                                    this.f4113Wwwwwwwwwwwwwwwwwwwwww = i3 + 1;
                                    return str;
                                }
                            }
                            i2 = i3;
                            String str2 = new String(bArr2, i4, i2 - i4, this.f4115Wwwwwwwwwwwwwwwwwwwwwwww.name());
                            this.f4113Wwwwwwwwwwwwwwwwwwwwww = i3 + 1;
                            return str2;
                        }
                    }
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.f4112Wwwwwwwwwwwwwwwwwwwww - this.f4113Wwwwwwwwwwwwwwwwwwwwww) + 80) { // from class: com.bumptech.glide.disklrucache.StrictLineReader.1
                        @Override // java.io.ByteArrayOutputStream
                        public String toString() {
                            int i5 = ((ByteArrayOutputStream) this).count;
                            if (i5 > 0 && ((ByteArrayOutputStream) this).buf[i5 - 1] == 13) {
                                i5--;
                            }
                            try {
                                return new String(((ByteArrayOutputStream) this).buf, 0, i5, StrictLineReader.this.f4115Wwwwwwwwwwwwwwwwwwwwwwww.name());
                            } catch (UnsupportedEncodingException e) {
                                throw new AssertionError(e);
                            }
                        }
                    };
                    loop1: while (true) {
                        byte[] bArr3 = this.f4114Wwwwwwwwwwwwwwwwwwwwwww;
                        int i5 = this.f4113Wwwwwwwwwwwwwwwwwwwwww;
                        byteArrayOutputStream.write(bArr3, i5, this.f4112Wwwwwwwwwwwwwwwwwwwww - i5);
                        this.f4112Wwwwwwwwwwwwwwwwwwwww = -1;
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                        i = this.f4113Wwwwwwwwwwwwwwwwwwwwww;
                        while (i != this.f4112Wwwwwwwwwwwwwwwwwwwww) {
                            bArr = this.f4114Wwwwwwwwwwwwwwwwwwwwwww;
                            if (bArr[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                    int i6 = this.f4113Wwwwwwwwwwwwwwwwwwwwww;
                    if (i != i6) {
                        byteArrayOutputStream.write(bArr, i6, i - i6);
                    }
                    this.f4113Wwwwwwwwwwwwwwwwwwwwww = i + 1;
                    return byteArrayOutputStream.toString();
                }
                throw new IOException("LineReader is closed");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean Wwwwwwwwwwwwww() {
        if (this.f4112Wwwwwwwwwwwwwwwwwwwww == -1) {
            return true;
        }
        return false;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        InputStream inputStream = this.f4116Wwwwwwwwwwwwwwwwwwwwwwwww;
        byte[] bArr = this.f4114Wwwwwwwwwwwwwwwwwwwwwww;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f4113Wwwwwwwwwwwwwwwwwwwwww = 0;
            this.f4112Wwwwwwwwwwwwwwwwwwwww = read;
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f4116Wwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (this.f4114Wwwwwwwwwwwwwwwwwwwwwww != null) {
                    this.f4114Wwwwwwwwwwwwwwwwwwwwwww = null;
                    this.f4116Wwwwwwwwwwwwwwwwwwwwwwwww.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public StrictLineReader(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i >= 0) {
            if (charset.equals(Util.f4119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                this.f4116Wwwwwwwwwwwwwwwwwwwwwwwww = inputStream;
                this.f4115Wwwwwwwwwwwwwwwwwwwwwwww = charset;
                this.f4114Wwwwwwwwwwwwwwwwwwwwwww = new byte[i];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw new IllegalArgumentException("capacity <= 0");
    }
}
