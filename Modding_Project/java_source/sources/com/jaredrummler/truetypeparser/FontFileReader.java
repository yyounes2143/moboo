package com.jaredrummler.truetypeparser;

import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class FontFileReader {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte[] f8689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f8690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f8691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public FontFileReader(InputStream inputStream) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww(long j) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwww(this.f8690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(long j) throws IOException {
        if (j <= this.f8691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && j >= 0) {
            this.f8690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (int) j;
            return;
        }
        throw new EOFException("Reached EOF, file size=" + this.f8691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " offset=" + j);
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        return (Wwwwwwwwwwwwwwwwwwwwwwwwwww() << 8) + Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        return (((((Wwwwwwwwwwwwwwwwwwwwwwwwwww() << 8) + Wwwwwwwwwwwwwwwwwwwwwwwwwww()) << 8) + Wwwwwwwwwwwwwwwwwwwwwwwwwww()) << 8) + Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        byte Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < 0) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + 256;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) throws IOException {
        int i3 = this.f8690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i + i3 <= this.f8691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.f8689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i3, bArr, 0, i);
            this.f8690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += i;
            return new String(bArr, "UTF-16BE");
        }
        throw new EOFException("Reached EOF, file size=" + this.f8691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
        String str;
        int i2 = this.f8690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i + i2 <= this.f8691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.f8689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i2, bArr, 0, i);
            this.f8690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += i;
            if (i > 0 && bArr[0] == 0) {
                str = "UTF-16BE";
            } else {
                str = "ISO-8859-1";
            }
            return new String(bArr, str);
        }
        throw new EOFException("Reached EOF, file size=" + this.f8691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        return (int) ((((((Wwwwwwwwwwwwwwwwwwwwwwwwwww() << 8) + Wwwwwwwwwwwwwwwwwwwwwwwwwww()) << 8) + Wwwwwwwwwwwwwwwwwwwwwwwwwww()) << 8) + Wwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public byte Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final byte Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        int i = this.f8690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i < this.f8691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            byte[] bArr = this.f8689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f8690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i + 1;
            return bArr[i];
        }
        throw new EOFException("Reached EOF, file size=" + this.f8691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                this.f8689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = byteArray;
                this.f8691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = byteArray.length;
                this.f8690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
                return;
            }
        }
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
