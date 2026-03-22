package j$.time.temporal;

import j$.time.Duration;
/* loaded from: classes2.dex */
public enum h implements r {
    WEEK_BASED_YEARS("WeekBasedYears"),
    QUARTER_YEARS("QuarterYears");
    

    /* renamed from: a  reason: collision with root package name */
    public final String f11785a;

    static {
        Duration duration = Duration.ZERO;
    }

    h(String str) {
        this.f11785a = str;
    }

    @Override // j$.time.temporal.r
    public final l h(l lVar, long j) {
        int i = b.f11783a[ordinal()];
        if (i == 1) {
            g gVar = i.c;
            return lVar.c(j$.com.android.tools.r8.a.K(lVar.i(gVar), j), gVar);
        } else if (i == 2) {
            return lVar.d(j / 4, ChronoUnit.YEARS).d((j % 4) * 3, ChronoUnit.MONTHS);
        } else {
            throw new IllegalStateException("Unreachable");
        }
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f11785a;
    }
}
