package org.apache.commons.io.output;

import java.io.IOException;
import java.io.Writer;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class FileWriterWithEncoding extends Writer implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Writer f13441Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13441Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.f13441Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        this.f13441Wwwwwwwwwwwwwwwwwwwwwwwww.write(i);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        this.f13441Wwwwwwwwwwwwwwwwwwwwwwwww.write(cArr);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.f13441Wwwwwwwwwwwwwwwwwwwwwwwww.write(cArr, i, i2);
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        this.f13441Wwwwwwwwwwwwwwwwwwwwwwwww.write(str);
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        this.f13441Wwwwwwwwwwwwwwwwwwwwwwwww.write(str, i, i2);
    }
}
