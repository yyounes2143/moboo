package org.joda.time.chrono;

import org.joda.time.DateTimeZone;
import org.joda.time.Instant;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class GJCacheKey {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Instant f13744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DateTimeZone f13745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public GJCacheKey(DateTimeZone dateTimeZone, Instant instant, int i) {
        this.f13745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dateTimeZone;
        this.f13744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = instant;
        this.f13743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GJCacheKey)) {
            return false;
        }
        GJCacheKey gJCacheKey = (GJCacheKey) obj;
        Instant instant = this.f13744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (instant == null) {
            if (gJCacheKey.f13744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return false;
            }
        } else if (!instant.equals(gJCacheKey.f13744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return false;
        }
        if (this.f13743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != gJCacheKey.f13743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return false;
        }
        DateTimeZone dateTimeZone = this.f13745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (dateTimeZone == null) {
            if (gJCacheKey.f13745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return false;
            }
        } else if (!dateTimeZone.equals(gJCacheKey.f13745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        Instant instant = this.f13744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = 0;
        if (instant == null) {
            hashCode = 0;
        } else {
            hashCode = instant.hashCode();
        }
        int i2 = (((hashCode + 31) * 31) + this.f13743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31;
        DateTimeZone dateTimeZone = this.f13745Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (dateTimeZone != null) {
            i = dateTimeZone.hashCode();
        }
        return i2 + i;
    }
}
