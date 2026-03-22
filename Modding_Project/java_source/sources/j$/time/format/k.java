package j$.time.format;

import j$.util.Objects;
/* loaded from: classes2.dex */
public final class k implements f {
    public static final String[] d = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS", "+HHmmss", "+HH:mm:ss", "+H", "+Hmm", "+H:mm", "+HMM", "+H:MM", "+HMMss", "+H:MM:ss", "+HMMSS", "+H:MM:SS", "+Hmmss", "+H:mm:ss"};
    public static final k e = new k("+HH:MM:ss", "Z");

    /* renamed from: a  reason: collision with root package name */
    public final String f11755a;
    public final int b;
    public final int c;

    static {
        new k("+HH:MM:ss", "0");
    }

    public k(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        int i = 0;
        while (true) {
            String[] strArr = d;
            if (i < 22) {
                if (strArr[i].equals(str)) {
                    this.b = i;
                    this.c = i % 11;
                    this.f11755a = str2;
                    return;
                }
                i++;
            } else {
                throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
            }
        }
    }

    @Override // j$.time.format.f
    public final boolean h(u uVar, StringBuilder sb) {
        Long a2 = uVar.a(j$.time.temporal.a.OFFSET_SECONDS);
        boolean z = false;
        if (a2 == null) {
            return false;
        }
        long longValue = a2.longValue();
        int i = (int) longValue;
        if (longValue == i) {
            String str = this.f11755a;
            if (i == 0) {
                sb.append(str);
                return true;
            }
            int abs = Math.abs((i / 3600) % 100);
            int abs2 = Math.abs((i / 60) % 60);
            int abs3 = Math.abs(i % 60);
            int length = sb.length();
            sb.append(i < 0 ? "-" : "+");
            if (this.b < 11 || abs >= 10) {
                a(false, abs, sb);
            } else {
                sb.append((char) (abs + 48));
            }
            int i2 = this.c;
            if ((i2 >= 3 && i2 <= 8) || ((i2 >= 9 && abs3 > 0) || (i2 >= 1 && abs2 > 0))) {
                a(i2 > 0 && i2 % 2 == 0, abs2, sb);
                abs += abs2;
                if (i2 == 7 || i2 == 8 || (i2 >= 5 && abs3 > 0)) {
                    if (i2 > 0 && i2 % 2 == 0) {
                        z = true;
                    }
                    a(z, abs3, sb);
                    abs += abs3;
                }
            }
            if (abs == 0) {
                sb.setLength(length);
                sb.append(str);
            }
            return true;
        }
        throw new ArithmeticException();
    }

    public static void a(boolean z, int i, StringBuilder sb) {
        sb.append(z ? ":" : "");
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
    }

    public final String toString() {
        String replace = this.f11755a.replace("'", "''");
        String str = d[this.b];
        return "Offset(" + str + ",'" + replace + "')";
    }
}
