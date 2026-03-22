package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import org.apache.commons.io.output.StringBuilderWriter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class IOUtils {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f13324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final char f13325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = File.separatorChar;

    static {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter(4);
        try {
            PrintWriter printWriter = new PrintWriter(stringBuilderWriter);
            printWriter.println();
            f13324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = stringBuilderWriter.toString();
            printWriter.close();
            stringBuilderWriter.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    stringBuilderWriter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, OutputStream outputStream) throws IOException {
        if (bArr != null) {
            outputStream.write(bArr);
        }
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 != read) {
                outputStream.write(bArr, 0, read);
                j += read;
            } else {
                return j;
            }
        }
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream, OutputStream outputStream) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream, outputStream, 4096);
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream, outputStream, new byte[i]);
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream, OutputStream outputStream) throws IOException {
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream, outputStream);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 2147483647L) {
            return -1;
        }
        return (int) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
