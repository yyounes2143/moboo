package org.apache.commons.io.input;

import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ObservableInputStream extends ProxyInputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Observer> f13380Wwwwwwwwwwwwwwwwwwwwwwwww;

    public void Kkkkkkkkkkkkkkkkkk() throws IOException {
        for (Observer observer : Kkkkkkkkkkkkkkkkkkkkkkk()) {
            observer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public void Kkkkkkkkkkkkkkkkkkk(IOException iOException) throws IOException {
        for (Observer observer : Kkkkkkkkkkkkkkkkkkkkkkk()) {
            observer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iOException);
        }
    }

    public void Kkkkkkkkkkkkkkkkkkkk(byte[] bArr, int i, int i2) throws IOException {
        for (Observer observer : Kkkkkkkkkkkkkkkkkkkkkkk()) {
            observer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i, i2);
        }
    }

    public void Kkkkkkkkkkkkkkkkkkkkk(int i) throws IOException {
        for (Observer observer : Kkkkkkkkkkkkkkkkkkkkkkk()) {
            observer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        }
    }

    public void Kkkkkkkkkkkkkkkkkkkkkk() throws IOException {
        for (Observer observer : Kkkkkkkkkkkkkkkkkkkkkkk()) {
            observer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public List<Observer> Kkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f13380Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
            e = null;
        } catch (IOException e) {
            e = e;
        }
        if (e == null) {
            Kkkkkkkkkkkkkkkkkkkkkk();
        } else {
            Kkkkkkkkkkkkkkkkkkk(e);
        }
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i;
        try {
            i = super.read();
            e = null;
        } catch (IOException e) {
            e = e;
            i = 0;
        }
        if (e != null) {
            Kkkkkkkkkkkkkkkkkkk(e);
        } else if (i == -1) {
            Kkkkkkkkkkkkkkkkkk();
        } else {
            Kkkkkkkkkkkkkkkkkkkkk(i);
        }
        return i;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i;
        try {
            i = super.read(bArr);
            e = null;
        } catch (IOException e) {
            e = e;
            i = 0;
        }
        if (e != null) {
            Kkkkkkkkkkkkkkkkkkk(e);
        } else if (i == -1) {
            Kkkkkkkkkkkkkkkkkk();
        } else if (i > 0) {
            Kkkkkkkkkkkkkkkkkkkk(bArr, 0, i);
        }
        return i;
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        try {
            i3 = super.read(bArr, i, i2);
            e = null;
        } catch (IOException e) {
            e = e;
            i3 = 0;
        }
        if (e != null) {
            Kkkkkkkkkkkkkkkkkkk(e);
        } else if (i3 == -1) {
            Kkkkkkkkkkkkkkkkkk();
        } else if (i3 > 0) {
            Kkkkkkkkkkkkkkkkkkkk(bArr, i, i3);
        }
        return i3;
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static abstract class Observer {
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IOException iOException) throws IOException {
            throw iOException;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, int i2) throws IOException {
        }
    }
}
