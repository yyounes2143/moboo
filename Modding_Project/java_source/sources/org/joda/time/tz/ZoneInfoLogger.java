package org.joda.time.tz;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ZoneInfoLogger {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ThreadLocal<Boolean> f14057Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ThreadLocal<Boolean>() { // from class: org.joda.time.tz.ZoneInfoLogger.1
        @Override // java.lang.ThreadLocal
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Boolean initialValue() {
            return Boolean.FALSE;
        }
    };

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f14057Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get().booleanValue();
    }
}
