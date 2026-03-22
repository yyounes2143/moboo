package org.joda.time.tz;

import java.util.Collections;
import java.util.Set;
import org.joda.time.DateTimeZone;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class UTCProvider implements Provider {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f14032Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.singleton("UTC");

    @Override // org.joda.time.tz.Provider
    public Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f14032Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.tz.Provider
    public DateTimeZone Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if ("UTC".equalsIgnoreCase(str)) {
            return DateTimeZone.UTC;
        }
        return null;
    }
}
