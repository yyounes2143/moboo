package org.apache.commons.io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ProxyWriter extends FilterWriter implements AutoCloseable {
    @Override // java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            ((FilterWriter) this).out.close();
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        try {
            ((FilterWriter) this).out.flush();
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i) throws IOException {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            ((FilterWriter) this).out.write(i);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            ((FilterWriter) this).out.append(c);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            return this;
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
            return this;
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        int length;
        if (cArr != null) {
            try {
                length = cArr.length;
            } catch (IOException e) {
                Wwwwwwwwwwwwww(e);
                return;
            }
        } else {
            length = 0;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(length);
        ((FilterWriter) this).out.write(cArr);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(length);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) throws IOException {
        int i3 = i2 - i;
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(i3);
            ((FilterWriter) this).out.append(charSequence, i, i2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3);
            return this;
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
            return this;
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
            ((FilterWriter) this).out.write(cArr, i, i2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
        } catch (IOException e) {
            Wwwwwwwwwwwwww(e);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) throws IOException {
        int length;
        if (charSequence != null) {
            try {
                length = charSequence.length();
            } catch (IOException e) {
                Wwwwwwwwwwwwww(e);
                return this;
            }
        } else {
            length = 0;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(length);
        ((FilterWriter) this).out.append(charSequence);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(length);
        return this;
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        int length;
        if (str != null) {
            try {
                length = str.length();
            } catch (IOException e) {
                Wwwwwwwwwwwwww(e);
                return;
            }
        } else {
            length = 0;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(length);
        ((FilterWriter) this).out.write(str);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(length);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
            ((FilterWriter) this).out.write(str, i, i2);
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
