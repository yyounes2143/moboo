package org.apache.commons.io.input;

import java.io.FilterReader;
import java.io.IOException;
import java.nio.CharBuffer;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class ProxyReader extends FilterReader implements AutoCloseable {
    @Override // java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            ((FilterReader) this).in.close();
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public synchronized void mark(int i) throws IOException {
        try {
            ((FilterReader) this).in.mark(i);
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public boolean markSupported() {
        return ((FilterReader) this).in.markSupported();
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read() throws IOException {
        int i = 1;
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            int read = ((FilterReader) this).in.read();
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

    @Override // java.io.FilterReader, java.io.Reader
    public boolean ready() throws IOException {
        try {
            return ((FilterReader) this).in.ready();
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
            return false;
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public synchronized void reset() throws IOException {
        try {
            ((FilterReader) this).in.reset();
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public long skip(long j) throws IOException {
        try {
            return ((FilterReader) this).in.skip(j);
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
            return 0L;
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr) throws IOException {
        int length;
        if (cArr != null) {
            try {
                length = cArr.length;
            } catch (IOException e) {
                Wwwwwwwwwwwwww(e);
                return -1;
            }
        } else {
            length = 0;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(length);
        int read = ((FilterReader) this).in.read(cArr);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(read);
        return read;
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
            int read = ((FilterReader) this).in.read(cArr, i, i2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(read);
            return read;
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
            return -1;
        }
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) throws IOException {
        int length;
        if (charBuffer != null) {
            try {
                length = charBuffer.length();
            } catch (IOException e) {
                Wwwwwwwwwwwwww(e);
                return -1;
            }
        } else {
            length = 0;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(length);
        int read = ((FilterReader) this).in.read(charBuffer);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(read);
        return read;
    }

    public void Wwwwwwwwwwwwww(IOException iOException) throws IOException {
        throw iOException;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
    }
}
