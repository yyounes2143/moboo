package j$.time.temporal;

import j$.time.Duration;
/* loaded from: classes2.dex */
public enum ChronoUnit implements r {
    NANOS("Nanos", Duration.i(1)),
    MICROS("Micros", Duration.i(1000)),
    MILLIS("Millis", Duration.i(1000000)),
    SECONDS("Seconds", Duration.h(1, 0)),
    MINUTES("Minutes", Duration.h(60, 0)),
    HOURS("Hours", Duration.h(3600, 0)),
    HALF_DAYS("HalfDays", Duration.h(43200, 0)),
    DAYS("Days", Duration.h(86400, 0)),
    WEEKS("Weeks", Duration.h(604800, 0)),
    MONTHS("Months", Duration.h(2629746, 0)),
    YEARS("Years", Duration.h(31556952, 0)),
    DECADES("Decades", Duration.h(315569520, 0)),
    CENTURIES("Centuries", Duration.h(3155695200L, 0)),
    MILLENNIA("Millennia", Duration.h(31556952000L, 0)),
    ERAS("Eras", Duration.h(31556952000000000L, 0)),
    FOREVER("Forever", Duration.ofSeconds(Long.MAX_VALUE, 999999999));
    

    /* renamed from: a  reason: collision with root package name */
    public final String f11781a;
    public final Duration b;

    ChronoUnit(String str, Duration duration) {
        this.f11781a = str;
        this.b = duration;
    }

    public Duration getDuration() {
        return this.b;
    }

    @Override // j$.time.temporal.r
    public final l h(l lVar, long j) {
        return lVar.d(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f11781a;
    }
}
