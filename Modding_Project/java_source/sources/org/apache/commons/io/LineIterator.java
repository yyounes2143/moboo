package org.apache.commons.io;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class LineIterator implements Iterator<String>, Closeable, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13326Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f13327Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedReader f13328Wwwwwwwwwwwwwwwwwwwwwwwww;

    public String Wwwwwwwwwwwwww() {
        if (hasNext()) {
            String str = this.f13327Wwwwwwwwwwwwwwwwwwwwwwww;
            this.f13327Wwwwwwwwwwwwwwwwwwwwwwww = null;
            return str;
        }
        throw new NoSuchElementException("No more lines");
    }

    @Override // java.util.Iterator
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww */
    public String next() {
        return Wwwwwwwwwwwwww();
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13326Wwwwwwwwwwwwwwwwwwwwwww = true;
        this.f13327Wwwwwwwwwwwwwwwwwwwwwwww = null;
        BufferedReader bufferedReader = this.f13328Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (bufferedReader != null) {
            bufferedReader.close();
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        String readLine;
        if (this.f13327Wwwwwwwwwwwwwwwwwwwwwwww != null) {
            return true;
        }
        if (this.f13326Wwwwwwwwwwwwwwwwwwwwwww) {
            return false;
        }
        do {
            try {
                readLine = this.f13328Wwwwwwwwwwwwwwwwwwwwwwwww.readLine();
                if (readLine == null) {
                    this.f13326Wwwwwwwwwwwwwwwwwwwwwww = true;
                    return false;
                }
            } catch (IOException e) {
                try {
                    close();
                } catch (IOException e2) {
                    e.addSuppressed(e2);
                }
                throw new IllegalStateException(e);
            }
        } while (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readLine));
        this.f13327Wwwwwwwwwwwwwwwwwwwwwwww = readLine;
        return true;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Remove unsupported on LineIterator");
    }
}
