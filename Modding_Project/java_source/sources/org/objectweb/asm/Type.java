package org.objectweb.asm;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Type {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f14092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f14093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f14095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Type f14091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Type(0, "VZCBSIFJD", 0, 1);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Type f14090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Type(1, "VZCBSIFJD", 1, 2);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Type f14089Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new Type(2, "VZCBSIFJD", 2, 3);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Type f14088Wwwwwwwwwwwwwwwwwwwwwwwwwww = new Type(3, "VZCBSIFJD", 3, 4);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Type f14087Wwwwwwwwwwwwwwwwwwwwwwwwww = new Type(4, "VZCBSIFJD", 4, 5);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Type f14086Wwwwwwwwwwwwwwwwwwwwwwwww = new Type(5, "VZCBSIFJD", 5, 6);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Type f14085Wwwwwwwwwwwwwwwwwwwwwwww = new Type(6, "VZCBSIFJD", 6, 7);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Type f14084Wwwwwwwwwwwwwwwwwwwwwww = new Type(7, "VZCBSIFJD", 7, 8);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Type f14083Wwwwwwwwwwwwwwwwwwwwww = new Type(8, "VZCBSIFJD", 8, 9);

    public Type(int i, String str, int i2, int i3) {
        this.f14095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f14094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f14093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f14092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
    }

    public static Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2) {
        char charAt = str.charAt(i);
        if (charAt != '(') {
            if (charAt != 'F') {
                if (charAt != 'L') {
                    if (charAt != 'S') {
                        if (charAt != 'V') {
                            if (charAt != 'I') {
                                if (charAt != 'J') {
                                    if (charAt != 'Z') {
                                        if (charAt != '[') {
                                            switch (charAt) {
                                                case 'B':
                                                    return f14088Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                                                case 'C':
                                                    return f14089Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                                case 'D':
                                                    return f14083Wwwwwwwwwwwwwwwwwwwwww;
                                                default:
                                                    throw new IllegalArgumentException();
                                            }
                                        }
                                        return new Type(9, str, i, i2);
                                    }
                                    return f14090Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                }
                                return f14084Wwwwwwwwwwwwwwwwwwwwwww;
                            }
                            return f14086Wwwwwwwwwwwwwwwwwwwwwwwww;
                        }
                        return f14091Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    }
                    return f14087Wwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                return new Type(10, str, i + 1, i2 - 1);
            }
            return f14085Wwwwwwwwwwwwwwwwwwwwwwww;
        }
        return new Type(11, str, i, i2);
    }

    public static Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, 0, str.length());
    }

    public static Type Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        int i;
        if (str.charAt(0) == '[') {
            i = 9;
        } else {
            i = 12;
        }
        return new Type(i, str, 0, str.length());
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i = this.f14095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == 10) {
            return this.f14094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.substring(this.f14093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - 1, this.f14092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + 1);
        }
        if (i == 12) {
            return 'L' + this.f14094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.substring(this.f14093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) + ';';
        }
        return this.f14094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.substring(this.f14093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f14092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Type)) {
            return false;
        }
        Type type = (Type) obj;
        int i = this.f14095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = 10;
        if (i == 12) {
            i = 10;
        }
        int i3 = type.f14095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i3 != 12) {
            i2 = i3;
        }
        if (i != i2) {
            return false;
        }
        int i4 = this.f14093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i5 = this.f14092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i6 = type.f14093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i5 - i4 != type.f14092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - i6) {
            return false;
        }
        while (i4 < i5) {
            if (this.f14094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.charAt(i4) != type.f14094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.charAt(i6)) {
                return false;
            }
            i4++;
            i6++;
        }
        return true;
    }

    public int hashCode() {
        int i;
        int i2 = this.f14095Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i2 == 12) {
            i = 10;
        } else {
            i = i2;
        }
        int i3 = i * 13;
        if (i2 >= 9) {
            int i4 = this.f14092Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            for (int i5 = this.f14093Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww; i5 < i4; i5++) {
                i3 = (i3 + this.f14094Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.charAt(i5)) * 17;
            }
        }
        return i3;
    }

    public String toString() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
