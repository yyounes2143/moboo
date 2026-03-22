package com.jaredrummler.truetypeparser;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class TTFFile {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f8695Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Map<TTFTableName, TTFDirTabEntry> f8700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public FontFileReader f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f8702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f8699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f8698Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f8697Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f8696Wwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

    public static TTFFile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        TTFFile tTFFile = new TTFFile();
        tTFFile.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FontFileReader(inputStream));
        return tTFFile;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FontFileReader fontFileReader, TTFTableName tTFTableName, long j) throws IOException {
        TTFDirTabEntry tTFDirTabEntry = this.f8700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(tTFTableName);
        if (tTFDirTabEntry == null) {
            return false;
        }
        fontFileReader.Wwwwwwwwwwwwwwwwwwwwwwww(tTFDirTabEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + j);
        return true;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        FontFileReader fontFileReader;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, TTFTableName.f8704Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 2L);
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwwwwwwwww3 = (this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww() + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) - 2;
        int i = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + 4;
        while (true) {
            int i2 = Wwwwwwwwwwwwwwwwwwwwwwwww2 - 1;
            if (Wwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(i);
                int Wwwwwwwwwwwwwwwwwwwwwwwww4 = this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
                int Wwwwwwwwwwwwwwwwwwwwwwwww5 = this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
                int Wwwwwwwwwwwwwwwwwwwwwwwww6 = this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
                int Wwwwwwwwwwwwwwwwwwwwwwwww7 = this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
                int Wwwwwwwwwwwwwwwwwwwwwwwww8 = this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
                if ((Wwwwwwwwwwwwwwwwwwwwwwwww4 == 1 || Wwwwwwwwwwwwwwwwwwwwwwwww4 == 3) && (Wwwwwwwwwwwwwwwwwwwwwwwww5 == 0 || Wwwwwwwwwwwwwwwwwwwwwwwww5 == 1)) {
                    this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(fontFileReader.Wwwwwwwwwwwwwwwwwwwwwwwww() + Wwwwwwwwwwwwwwwwwwwwwwwww3);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwww4 == 3) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww8, Wwwwwwwwwwwwwwwwwwwwwwwww5);
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww8);
                    }
                    if (Wwwwwwwwwwwwwwwwwwwwwwwww7 != 0) {
                        if (Wwwwwwwwwwwwwwwwwwwwwwwww7 != 1) {
                            if (Wwwwwwwwwwwwwwwwwwwwwwwww7 != 2) {
                                if (Wwwwwwwwwwwwwwwwwwwwwwwww7 != 4) {
                                    if (Wwwwwwwwwwwwwwwwwwwwwwwww7 != 6) {
                                        if (Wwwwwwwwwwwwwwwwwwwwwwwww7 != 16) {
                                        }
                                    } else if (this.f8699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length() == 0) {
                                        this.f8699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                                    }
                                } else if (this.f8698Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length() == 0 || (Wwwwwwwwwwwwwwwwwwwwwwwww4 == 3 && Wwwwwwwwwwwwwwwwwwwwwwwww6 == 1033)) {
                                    this.f8698Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                                }
                            } else if (this.f8696Wwwwwwwwwwwwwwwwwwwwwwwwwwww.length() == 0) {
                                this.f8696Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            }
                        }
                        this.f8702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    } else if (this.f8697Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.length() == 0) {
                        this.f8697Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    }
                }
                i += 12;
                Wwwwwwwwwwwwwwwwwwwwwwwww2 = i2;
            } else {
                return;
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FontFileReader fontFileReader) throws IOException {
        this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fontFileReader;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Map<TTFTableName, TTFDirTabEntry> map = this.f8700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        TTFTableName tTFTableName = TTFTableName.f8703Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (map.get(tTFTableName) != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, tTFTableName, 0L);
            this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
            this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(2L);
            this.f8695Wwwwwwwwwwwwwwwwwwwwwwwwwww = this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(6L);
        this.f8700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
        TTFDirTabEntry[] tTFDirTabEntryArr = new TTFDirTabEntry[Wwwwwwwwwwwwwwwwwwwwwwwww2];
        for (int i = 0; i < Wwwwwwwwwwwwwwwwwwwwwwwww2; i++) {
            TTFDirTabEntry tTFDirTabEntry = new TTFDirTabEntry();
            tTFDirTabEntryArr[i] = tTFDirTabEntry;
            this.f8700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(TTFTableName.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(tTFDirTabEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)), tTFDirTabEntryArr[i]);
        }
        this.f8700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(TTFTableName.f8705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new TTFDirTabEntry(0L, this.f8701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8698Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
