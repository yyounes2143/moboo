package org.joda.time.format;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class FormatUtils {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final double f13895Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Math.log(10.0d);

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwww(CharSequence charSequence, int i) {
        int charAt = charSequence.charAt(i) - '0';
        return (((charAt << 3) + (charAt << 1)) + charSequence.charAt(i + 1)) - 48;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
        String concat;
        int i2 = i + 32;
        if (str.length() <= i + 35) {
            concat = str;
        } else {
            concat = str.substring(0, i2).concat("...");
        }
        if (i <= 0) {
            return "Invalid format: \"" + concat + '\"';
        } else if (i >= str.length()) {
            return "Invalid format: \"" + concat + "\" is too short";
        } else {
            return "Invalid format: \"" + concat + "\" is malformed at \"" + concat.substring(i) + '\"';
        }
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        int log;
        if (j < 0) {
            if (j != Long.MIN_VALUE) {
                log = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(-j);
            } else {
                return 20;
            }
        } else if (j < 10) {
            return 1;
        } else {
            if (j < 100) {
                return 2;
            }
            if (j < 1000) {
                return 3;
            }
            if (j < 10000) {
                return 4;
            }
            log = (int) (Math.log(j) / f13895Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return log + 1;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, long j) {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, j);
        } catch (IOException unused) {
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, int i) {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i);
        } catch (IOException unused) {
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Appendable appendable, long j) throws IOException {
        int i = (int) j;
        if (i == j) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, i);
        } else {
            appendable.append(Long.toString(j));
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Appendable appendable, int i) throws IOException {
        if (i < 0) {
            appendable.append('-');
            if (i != Integer.MIN_VALUE) {
                i = -i;
            } else {
                appendable.append("2147483648");
                return;
            }
        }
        if (i < 10) {
            appendable.append((char) (i + 48));
        } else if (i < 100) {
            int i2 = ((i + 1) * 13421772) >> 27;
            appendable.append((char) (i2 + 48));
            appendable.append((char) (((i - (i2 << 3)) - (i2 << 1)) + 48));
        } else {
            appendable.append(Integer.toString(i));
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, int i, int i2) {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i, i2);
        } catch (IOException unused) {
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Appendable appendable, int i, int i2) throws IOException {
        int log;
        if (i < 0) {
            appendable.append('-');
            if (i != Integer.MIN_VALUE) {
                i = -i;
            } else {
                while (i2 > 10) {
                    appendable.append('0');
                    i2--;
                }
                appendable.append("2147483648");
                return;
            }
        }
        if (i < 10) {
            while (i2 > 1) {
                appendable.append('0');
                i2--;
            }
            appendable.append((char) (i + 48));
        } else if (i < 100) {
            while (i2 > 2) {
                appendable.append('0');
                i2--;
            }
            int i3 = ((i + 1) * 13421772) >> 27;
            appendable.append((char) (i3 + 48));
            appendable.append((char) (((i - (i3 << 3)) - (i3 << 1)) + 48));
        } else {
            if (i < 1000) {
                log = 3;
            } else if (i < 10000) {
                log = 4;
            } else {
                log = ((int) (Math.log(i) / f13895Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) + 1;
            }
            while (i2 > log) {
                appendable.append('0');
                i2--;
            }
            appendable.append(Integer.toString(i));
        }
    }
}
