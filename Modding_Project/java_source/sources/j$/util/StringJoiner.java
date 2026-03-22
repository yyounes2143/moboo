package j$.util;

import java.util.Arrays;
/* loaded from: classes2.dex */
public final class StringJoiner {

    /* renamed from: a  reason: collision with root package name */
    public final String f11820a;
    public final String b;
    public final String c;
    public String[] d;
    public int e;
    public int f;

    public StringJoiner(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        Objects.requireNonNull(charSequence2, "The prefix must not be null");
        Objects.requireNonNull(charSequence, "The delimiter must not be null");
        Objects.requireNonNull(charSequence3, "The suffix must not be null");
        this.f11820a = charSequence2.toString();
        this.b = charSequence.toString();
        this.c = charSequence3.toString();
    }

    public static int a(String str, char[] cArr, int i) {
        int length = str.length();
        str.getChars(0, length, cArr, i);
        return length;
    }

    public final String toString() {
        String[] strArr;
        String[] strArr2 = this.d;
        int i = this.e;
        String str = this.f11820a;
        int length = str.length();
        String str2 = this.c;
        int length2 = str2.length() + length;
        String str3 = this.b;
        if (length2 != 0) {
            char[] cArr = new char[this.f + length2];
            int a2 = a(str, cArr, 0);
            if (i > 0) {
                a2 = a(strArr2[0], cArr, a2) + a2;
                for (int i2 = 1; i2 < i; i2++) {
                    int a3 = a(str3, cArr, a2) + a2;
                    a2 = a(strArr2[i2], cArr, a3) + a3;
                }
            }
            a(str2, cArr, a2);
            return new String(cArr);
        }
        if (this.e > 1) {
            char[] cArr2 = new char[this.f];
            int a4 = a(this.d[0], cArr2, 0);
            int i3 = 1;
            do {
                int a5 = a(str3, cArr2, a4) + a4;
                a4 = a(this.d[i3], cArr2, a5) + a5;
                strArr = this.d;
                strArr[i3] = null;
                i3++;
            } while (i3 < this.e);
            this.e = 1;
            strArr[0] = new String(cArr2);
        }
        return i == 0 ? "" : strArr2[0];
    }

    public StringJoiner add(CharSequence charSequence) {
        String valueOf = String.valueOf(charSequence);
        String[] strArr = this.d;
        if (strArr == null) {
            this.d = new String[8];
        } else {
            int i = this.e;
            if (i == strArr.length) {
                this.d = (String[]) Arrays.copyOf(strArr, i * 2);
            }
            this.f = this.b.length() + this.f;
        }
        this.f = valueOf.length() + this.f;
        String[] strArr2 = this.d;
        int i2 = this.e;
        this.e = i2 + 1;
        strArr2[i2] = valueOf;
        return this;
    }
}
