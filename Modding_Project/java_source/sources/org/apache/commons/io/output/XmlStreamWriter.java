package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.input.XmlStreamReader;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class XmlStreamWriter extends Writer implements AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f13456Wwwwwwwwwwwwwwwwwwww = XmlStreamReader.f13411Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f13457Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Writer f13458Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public StringWriter f13459Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f13460Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final OutputStream f13461Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(char[] cArr, int i, int i2) throws IOException {
        int i3;
        StringBuffer buffer = this.f13459Wwwwwwwwwwwwwwwwwwwwwww.getBuffer();
        if (buffer.length() + i2 > 4096) {
            i3 = 4096 - buffer.length();
        } else {
            i3 = i2;
        }
        this.f13459Wwwwwwwwwwwwwwwwwwwwwww.write(cArr, i, i3);
        if (buffer.length() >= 5) {
            if (buffer.substring(0, 5).equals("<?xml")) {
                int indexOf = buffer.indexOf("?>");
                if (indexOf > 0) {
                    Matcher matcher = f13456Wwwwwwwwwwwwwwwwwwww.matcher(buffer.substring(0, indexOf));
                    if (matcher.find()) {
                        String upperCase = matcher.group(1).toUpperCase();
                        this.f13457Wwwwwwwwwwwwwwwwwwwww = upperCase;
                        this.f13457Wwwwwwwwwwwwwwwwwwwww = upperCase.substring(1, upperCase.length() - 1);
                    } else {
                        this.f13457Wwwwwwwwwwwwwwwwwwwww = this.f13460Wwwwwwwwwwwwwwwwwwwwwwww;
                    }
                } else if (buffer.length() >= 4096) {
                    this.f13457Wwwwwwwwwwwwwwwwwwwww = this.f13460Wwwwwwwwwwwwwwwwwwwwwwww;
                }
            } else {
                this.f13457Wwwwwwwwwwwwwwwwwwwww = this.f13460Wwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (this.f13457Wwwwwwwwwwwwwwwwwwwww != null) {
                this.f13459Wwwwwwwwwwwwwwwwwwwwwww = null;
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.f13461Wwwwwwwwwwwwwwwwwwwwwwwww, this.f13457Wwwwwwwwwwwwwwwwwwwww);
                this.f13458Wwwwwwwwwwwwwwwwwwwwww = outputStreamWriter;
                outputStreamWriter.write(buffer.toString());
                if (i2 > i3) {
                    this.f13458Wwwwwwwwwwwwwwwwwwwwww.write(cArr, i + i3, i2 - i3);
                }
            }
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f13458Wwwwwwwwwwwwwwwwwwwwww == null) {
            this.f13457Wwwwwwwwwwwwwwwwwwwww = this.f13460Wwwwwwwwwwwwwwwwwwwwwwww;
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.f13461Wwwwwwwwwwwwwwwwwwwwwwwww, this.f13457Wwwwwwwwwwwwwwwwwwwww);
            this.f13458Wwwwwwwwwwwwwwwwwwwwww = outputStreamWriter;
            outputStreamWriter.write(this.f13459Wwwwwwwwwwwwwwwwwwwwwww.toString());
        }
        this.f13458Wwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        Writer writer = this.f13458Wwwwwwwwwwwwwwwwwwwwww;
        if (writer != null) {
            writer.flush();
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        if (this.f13459Wwwwwwwwwwwwwwwwwwwwwww != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cArr, i, i2);
        } else {
            this.f13458Wwwwwwwwwwwwwwwwwwwwww.write(cArr, i, i2);
        }
    }
}
