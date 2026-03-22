package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class ProxyInputStream extends FilterInputStream implements AutoCloseable {
    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        try {
            return super.available();
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
            return 0;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            ((FilterInputStream) this).in.close();
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = 1;
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            int read = ((FilterInputStream) this).in.read();
            if (read == -1) {
                i = -1;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
            return read;
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        try {
            ((FilterInputStream) this).in.reset();
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        try {
            return ((FilterInputStream) this).in.skip(j);
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
            return 0L;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int length;
        if (bArr != null) {
            try {
                length = bArr.length;
            } catch (IOException e) {
                Wwwwwwwwwwwwww(e);
                return -1;
            }
        } else {
            length = 0;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(length);
        int read = ((FilterInputStream) this).in.read(bArr);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
            int read = ((FilterInputStream) this).in.read(bArr, i, i2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(read);
            return read;
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
            return -1;
        }
    }

    public void Wwwwwwwwwwwwww(IOException iOException) throws IOException {
        throw iOException;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
    }
}
