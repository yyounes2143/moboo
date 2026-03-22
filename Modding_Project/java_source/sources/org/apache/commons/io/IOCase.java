package org.apache.commons.io;

import java.io.Serializable;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public enum IOCase implements Serializable {
    SENSITIVE("Sensitive", true),
    INSENSITIVE("Insensitive", false),
    SYSTEM("System", !FilenameUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    
    private static final long serialVersionUID = -6343169151696340687L;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final transient boolean f13323Wwwwwwwwwwwwwwwwwwwwwwwww;
    private final String name;

    IOCase(String str, boolean z) {
        this.name = str;
        this.f13323Wwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public static IOCase forName(String str) {
        IOCase[] values;
        for (IOCase iOCase : values()) {
            if (iOCase.getName().equals(str)) {
                return iOCase;
            }
        }
        throw new IllegalArgumentException("Invalid IOCase name: " + str);
    }

    private Object readResolve() {
        return forName(this.name);
    }

    public int checkCompareTo(String str, String str2) {
        if (str != null && str2 != null) {
            if (this.f13323Wwwwwwwwwwwwwwwwwwwwwwwww) {
                return str.compareTo(str2);
            }
            return str.compareToIgnoreCase(str2);
        }
        throw new NullPointerException("The strings must not be null");
    }

    public boolean checkEndsWith(String str, String str2) {
        int length = str2.length();
        return str.regionMatches(!this.f13323Wwwwwwwwwwwwwwwwwwwwwwwww, str.length() - length, str2, 0, length);
    }

    public boolean checkEquals(String str, String str2) {
        if (str != null && str2 != null) {
            if (this.f13323Wwwwwwwwwwwwwwwwwwwwwwwww) {
                return str.equals(str2);
            }
            return str.equalsIgnoreCase(str2);
        }
        throw new NullPointerException("The strings must not be null");
    }

    public int checkIndexOf(String str, int i, String str2) {
        int length = str.length() - str2.length();
        if (length >= i) {
            while (i <= length) {
                if (checkRegionMatches(str, i, str2)) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        return -1;
    }

    public boolean checkRegionMatches(String str, int i, String str2) {
        return str.regionMatches(!this.f13323Wwwwwwwwwwwwwwwwwwwwwwwww, i, str2, 0, str2.length());
    }

    public boolean checkStartsWith(String str, String str2) {
        return str.regionMatches(!this.f13323Wwwwwwwwwwwwwwwwwwwwwwwww, 0, str2, 0, str2.length());
    }

    public String getName() {
        return this.name;
    }

    public boolean isCaseSensitive() {
        return this.f13323Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
