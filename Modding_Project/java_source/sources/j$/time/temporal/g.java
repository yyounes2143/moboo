package j$.time.temporal;

import j$.time.LocalDate;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class g implements p {
    public static final g DAY_OF_QUARTER;
    public static final g QUARTER_OF_YEAR;
    public static final g WEEK_BASED_YEAR;
    public static final g WEEK_OF_WEEK_BASED_YEAR;

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f11784a;
    public static final /* synthetic */ g[] b;

    @Override // j$.time.temporal.p
    public final boolean r() {
        return true;
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) b.clone();
    }

    static {
        g gVar = new g() { // from class: j$.time.temporal.c
            @Override // j$.time.temporal.p
            public final t h() {
                return t.f(1L, 90L, 92L);
            }

            @Override // j$.time.temporal.p
            public final boolean k(m mVar) {
                if (mVar.e(a.DAY_OF_YEAR) && mVar.e(a.MONTH_OF_YEAR) && mVar.e(a.YEAR)) {
                    g gVar2 = i.f11786a;
                    return j$.com.android.tools.r8.a.I(mVar).equals(j$.time.chrono.s.c);
                }
                return false;
            }

            @Override // j$.time.temporal.p
            public final t n(m mVar) {
                if (!k(mVar)) {
                    throw new RuntimeException("Unsupported field: DayOfQuarter");
                }
                long r = mVar.r(g.QUARTER_OF_YEAR);
                if (r == 1) {
                    return j$.time.chrono.s.c.C(mVar.r(a.YEAR)) ? t.e(1L, 91L) : t.e(1L, 90L);
                } else if (r == 2) {
                    return t.e(1L, 91L);
                } else {
                    if (r == 3 || r == 4) {
                        return t.e(1L, 92L);
                    }
                    return h();
                }
            }

            @Override // j$.time.temporal.p
            public final long i(m mVar) {
                if (!k(mVar)) {
                    throw new RuntimeException("Unsupported field: DayOfQuarter");
                }
                return mVar.i(a.DAY_OF_YEAR) - g.f11784a[((mVar.i(a.MONTH_OF_YEAR) - 1) / 3) + (j$.time.chrono.s.c.C(mVar.r(a.YEAR)) ? 4 : 0)];
            }

            @Override // j$.time.temporal.p
            public final l l(l lVar, long j) {
                long i = i(lVar);
                h().b(j, this);
                a aVar = a.DAY_OF_YEAR;
                return lVar.c((j - i) + lVar.r(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = gVar;
        g gVar2 = new g() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.p
            public final t h() {
                return t.e(1L, 4L);
            }

            @Override // j$.time.temporal.p
            public final boolean k(m mVar) {
                if (mVar.e(a.MONTH_OF_YEAR)) {
                    g gVar3 = i.f11786a;
                    return j$.com.android.tools.r8.a.I(mVar).equals(j$.time.chrono.s.c);
                }
                return false;
            }

            @Override // j$.time.temporal.p
            public final long i(m mVar) {
                if (!k(mVar)) {
                    throw new RuntimeException("Unsupported field: QuarterOfYear");
                }
                return (mVar.r(a.MONTH_OF_YEAR) + 2) / 3;
            }

            @Override // j$.time.temporal.p
            public final t n(m mVar) {
                if (!k(mVar)) {
                    throw new RuntimeException("Unsupported field: QuarterOfYear");
                }
                return h();
            }

            @Override // j$.time.temporal.p
            public final l l(l lVar, long j) {
                long i = i(lVar);
                h().b(j, this);
                a aVar = a.MONTH_OF_YEAR;
                return lVar.c(((j - i) * 3) + lVar.r(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = gVar2;
        g gVar3 = new g() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.p
            public final t h() {
                return t.f(1L, 52L, 53L);
            }

            @Override // j$.time.temporal.p
            public final boolean k(m mVar) {
                if (mVar.e(a.EPOCH_DAY)) {
                    g gVar4 = i.f11786a;
                    return j$.com.android.tools.r8.a.I(mVar).equals(j$.time.chrono.s.c);
                }
                return false;
            }

            @Override // j$.time.temporal.p
            public final t n(m mVar) {
                if (!k(mVar)) {
                    throw new RuntimeException("Unsupported field: WeekOfWeekBasedYear");
                }
                return t.e(1L, g.G(g.F(LocalDate.H(mVar))));
            }

            @Override // j$.time.temporal.p
            public final long i(m mVar) {
                if (!k(mVar)) {
                    throw new RuntimeException("Unsupported field: WeekOfWeekBasedYear");
                }
                return g.u(LocalDate.H(mVar));
            }

            @Override // j$.time.temporal.p
            public final l l(l lVar, long j) {
                h().b(j, this);
                return lVar.d(j$.com.android.tools.r8.a.P(j, i(lVar)), ChronoUnit.WEEKS);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = gVar3;
        g gVar4 = new g() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.p
            public final t h() {
                return a.YEAR.b;
            }

            @Override // j$.time.temporal.p
            public final boolean k(m mVar) {
                if (mVar.e(a.EPOCH_DAY)) {
                    g gVar5 = i.f11786a;
                    return j$.com.android.tools.r8.a.I(mVar).equals(j$.time.chrono.s.c);
                }
                return false;
            }

            @Override // j$.time.temporal.p
            public final long i(m mVar) {
                if (!k(mVar)) {
                    throw new RuntimeException("Unsupported field: WeekBasedYear");
                }
                return g.F(LocalDate.H(mVar));
            }

            @Override // j$.time.temporal.p
            public final t n(m mVar) {
                if (!k(mVar)) {
                    throw new RuntimeException("Unsupported field: WeekBasedYear");
                }
                return h();
            }

            @Override // j$.time.temporal.p
            public final l l(l lVar, long j) {
                a aVar;
                LocalDate N;
                if (!k(lVar)) {
                    throw new RuntimeException("Unsupported field: WeekBasedYear");
                }
                int a2 = a.YEAR.b.a(j, g.WEEK_BASED_YEAR);
                LocalDate H = LocalDate.H(lVar);
                int i = H.i(a.DAY_OF_WEEK);
                int u = g.u(H);
                if (u == 53 && g.G(a2) == 52) {
                    u = 52;
                }
                return lVar.k(LocalDate.N(a2, 1, 4).plusDays(((u - 1) * 7) + (i - N.i(aVar))));
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = gVar4;
        b = new g[]{gVar, gVar2, gVar3, gVar4};
        f11784a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    public static int G(int i) {
        LocalDate N = LocalDate.N(i, 1, 1);
        if (N.J() != j$.time.d.THURSDAY) {
            return (N.J() == j$.time.d.WEDNESDAY && N.y()) ? 53 : 52;
        }
        return 53;
    }

    public static int u(LocalDate localDate) {
        int ordinal = localDate.J().ordinal();
        int K = localDate.K() - 1;
        int i = (3 - ordinal) + K;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (K < i3) {
            return (int) t.e(1L, G(F(localDate.V(180).R(-1L)))).d;
        }
        int i4 = ((K - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && localDate.y())) {
            return i4;
        }
        return 1;
    }

    public static int F(LocalDate localDate) {
        int i = localDate.f11710a;
        int K = localDate.K();
        if (K <= 3) {
            return K - localDate.J().ordinal() < -2 ? i - 1 : i;
        } else if (K >= 363) {
            return ((K - 363) - (localDate.y() ? 1 : 0)) - localDate.J().ordinal() >= 0 ? i + 1 : i;
        } else {
            return i;
        }
    }
}
