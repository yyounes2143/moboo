package org.apache.commons.io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ProxyOutputStream extends FilterOutputStream implements AutoCloseable {
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            ((FilterOutputStream) this).out.close();
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            ((FilterOutputStream) this).out.flush();
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            ((FilterOutputStream) this).out.write(i);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        int length;
        if (bArr != null) {
            try {
                length = bArr.length;
            } catch (IOException e) {
                Wwwwwwwwwwwwww(e);
                return;
            }
        } else {
            length = 0;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(length);
        ((FilterOutputStream) this).out.write(bArr);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
            ((FilterOutputStream) this).out.write(bArr, i, i2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
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
