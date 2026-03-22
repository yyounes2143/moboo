package com.jaredrummler.truetypeparser;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class TTFTableName {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final TTFTableName f8705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new TTFTableName("tableDirectory");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final TTFTableName f8704Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new TTFTableName("name");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final TTFTableName f8703Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new TTFTableName("OS/2");

    public TTFTableName(String str) {
        this.f8706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    public static TTFTableName Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str != null) {
            return new TTFTableName(str);
        }
        throw new IllegalArgumentException("A TrueType font table name must not be null");
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TTFTableName)) {
            return false;
        }
        return this.f8706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(((TTFTableName) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public int hashCode() {
        return this.f8706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public String toString() {
        return this.f8706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
