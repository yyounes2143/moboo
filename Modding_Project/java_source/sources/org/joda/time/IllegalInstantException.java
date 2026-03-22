package org.joda.time;

import org.joda.time.format.DateTimeFormat;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class IllegalInstantException extends IllegalArgumentException {
    private static final long serialVersionUID = 2858712538216L;

    public IllegalInstantException(String str) {
        super(str);
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, String str) {
        String str2;
        String Wwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("yyyy-MM-dd'T'HH:mm:ss.SSS").Wwwwwwwwwwwwwwwwwwwwwwww(new Instant(j));
        if (str != null) {
            str2 = " (" + str + ")";
        } else {
            str2 = "";
        }
        return "Illegal instant due to time zone offset transition (daylight savings time 'gap'): " + Wwwwwwwwwwwwwwwwwwwwwwww2 + str2;
    }

    public static boolean isIllegalInstant(Throwable th) {
        if (th instanceof IllegalInstantException) {
            return true;
        }
        if (th.getCause() != null && th.getCause() != th) {
            return isIllegalInstant(th.getCause());
        }
        return false;
    }

    public IllegalInstantException(long j, String str) {
        super(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, str));
    }
}
