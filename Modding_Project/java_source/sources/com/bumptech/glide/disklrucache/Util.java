package com.bumptech.glide.disklrucache;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class Util {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Charset f4119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Charset.forName(C.ASCII_NAME);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Charset f4118Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Charset.forName("UTF-8");

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete file: " + file2);
                }
            }
            return;
        }
        throw new IOException("not a readable directory: " + file);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }
}
