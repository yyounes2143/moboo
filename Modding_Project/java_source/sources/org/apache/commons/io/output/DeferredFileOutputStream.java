package org.apache.commons.io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.io.FileUtils;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DeferredFileOutputStream extends ThresholdingOutputStream {

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13433Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final File f13434Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f13435Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f13436Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public File f13437Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public OutputStream f13438Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ByteArrayOutputStream f13439Wwwwwwwwwwwwwwwwwwwwww;

    @Override // org.apache.commons.io.output.ThresholdingOutputStream
    public void Wwwwwwwwwwwwww() throws IOException {
        String str = this.f13436Wwwwwwwwwwwwwwwwwww;
        if (str != null) {
            this.f13437Wwwwwwwwwwwwwwwwwwww = File.createTempFile(str, this.f13435Wwwwwwwwwwwwwwwwww, this.f13434Wwwwwwwwwwwwwwwww);
        }
        FileUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13437Wwwwwwwwwwwwwwwwwwww);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f13437Wwwwwwwwwwwwwwwwwwww);
        try {
            this.f13439Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww(fileOutputStream);
            this.f13438Wwwwwwwwwwwwwwwwwwwww = fileOutputStream;
            this.f13439Wwwwwwwwwwwwwwwwwwwwww = null;
        } catch (IOException e) {
            fileOutputStream.close();
            throw e;
        }
    }

    @Override // org.apache.commons.io.output.ThresholdingOutputStream
    public OutputStream Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        return this.f13438Wwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.apache.commons.io.output.ThresholdingOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f13433Wwwwwwwwwwwwwwww = true;
    }
}
