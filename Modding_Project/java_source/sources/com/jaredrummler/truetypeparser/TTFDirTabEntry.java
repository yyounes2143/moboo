package com.jaredrummler.truetypeparser;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class TTFDirTabEntry {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f8692Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f8693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte[] f8694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public TTFDirTabEntry() {
        this.f8694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new byte[4];
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FontFileReader fontFileReader) throws IOException {
        this.f8694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[0] = fontFileReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[1] = fontFileReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[2] = fontFileReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[3] = fontFileReader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        fontFileReader.Wwwwwwwwwwwwwwwwwwwwwww(4L);
        this.f8693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fontFileReader.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8692Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fontFileReader.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        return new String(this.f8694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "ISO-8859-1");
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public TTFDirTabEntry(long j, long j2) {
        this.f8694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new byte[4];
        this.f8693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f8692Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j2;
    }
}
