package j$.time.temporal;

import j$.time.chrono.InterfaceC2153b;
/* loaded from: classes2.dex */
public final class u implements p {
    public static final t f = t.e(1, 7);
    public static final t g = t.f(0, 4, 6);
    public static final t h = t.f(0, 52, 54);
    public static final t i = t.f(1, 52, 53);

    /* renamed from: a  reason: collision with root package name */
    public final String f11792a;
    public final v b;
    public final Enum c;
    public final Enum d;
    public final t e;

    @Override // j$.time.temporal.p
    public final boolean r() {
        return true;
    }

    public final int b(m mVar) {
        int i2 = mVar.i(a.DAY_OF_WEEK) - this.b.f11793a.getValue();
        int i3 = i2 % 7;
        if (i3 == 0) {
            i3 = 0;
        } else if ((((i2 ^ 7) >> 31) | 1) <= 0) {
            i3 += 7;
        }
        return i3 + 1;
    }

    public final int f(int i2, int i3) {
        int i4 = i2 - i3;
        int i5 = i4 % 7;
        if (i5 == 0) {
            i5 = 0;
        } else if ((((i4 ^ 7) >> 31) | 1) <= 0) {
            i5 += 7;
        }
        return i5 + 1 > this.b.b ? 7 - i5 : -i5;
    }

    public u(String str, v vVar, r rVar, r rVar2, t tVar) {
        this.f11792a = str;
        this.b = vVar;
        this.c = (Enum) rVar;
        this.d = (Enum) rVar2;
        this.e = tVar;
    }

    @Override // j$.time.temporal.p
    public final long i(m mVar) {
        int c;
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        Enum r1 = this.d;
        if (r1 == chronoUnit) {
            c = b(mVar);
        } else if (r1 != ChronoUnit.MONTHS) {
            if (r1 != ChronoUnit.YEARS) {
                if (r1 == v.h) {
                    c = c(mVar);
                } else if (r1 != ChronoUnit.FOREVER) {
                    throw new IllegalStateException("unreachable, rangeUnit: " + r1 + ", this: " + this);
                } else {
                    int b = b(mVar);
                    int i2 = mVar.i(a.YEAR);
                    a aVar = a.DAY_OF_YEAR;
                    int i3 = mVar.i(aVar);
                    int f2 = f(i3, b);
                    int a2 = a(f2, i3);
                    if (a2 == 0) {
                        i2--;
                    } else if (a2 >= a(f2, ((int) mVar.l(aVar).d) + this.b.b)) {
                        i2++;
                    }
                    return i2;
                }
            } else {
                int b2 = b(mVar);
                int i4 = mVar.i(a.DAY_OF_YEAR);
                c = a(f(i4, b2), i4);
            }
        } else {
            int b3 = b(mVar);
            int i5 = mVar.i(a.DAY_OF_MONTH);
            c = a(f(i5, b3), i5);
        }
        return c;
    }

    public final int c(m mVar) {
        int a2;
        int b = b(mVar);
        a aVar = a.DAY_OF_YEAR;
        int i2 = mVar.i(aVar);
        int f2 = f(i2, b);
        int a3 = a(f2, i2);
        if (a3 == 0) {
            return c(j$.com.android.tools.r8.a.I(mVar).j(mVar).z(i2, ChronoUnit.DAYS));
        }
        return (a3 <= 50 || a3 < (a2 = a(f2, ((int) mVar.l(aVar).d) + this.b.b))) ? a3 : (a3 - a2) + 1;
    }

    public static int a(int i2, int i3) {
        return ((i3 - 1) + (i2 + 7)) / 7;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Enum, j$.time.temporal.r] */
    @Override // j$.time.temporal.p
    public final l l(l lVar, long j) {
        int a2 = this.e.a(j, this);
        int i2 = lVar.i(this);
        if (a2 == i2) {
            return lVar;
        }
        if (this.d == ChronoUnit.FOREVER) {
            v vVar = this.b;
            int i3 = lVar.i(vVar.c);
            int i4 = lVar.i(vVar.e);
            InterfaceC2153b w = j$.com.android.tools.r8.a.I(lVar).w((int) j);
            int f2 = f(1, b(w));
            int i5 = i3 - 1;
            return w.d(((Math.min(i4, a(f2, w.A() + vVar.b) - 1) - 1) * 7) + i5 + (-f2), (r) ChronoUnit.DAYS);
        }
        return lVar.d(a2 - i2, this.c);
    }

    @Override // j$.time.temporal.p
    public final t h() {
        return this.e;
    }

    @Override // j$.time.temporal.p
    public final boolean k(m mVar) {
        if (mVar.e(a.DAY_OF_WEEK)) {
            ChronoUnit chronoUnit = ChronoUnit.WEEKS;
            Enum r1 = this.d;
            if (r1 == chronoUnit) {
                return true;
            }
            if (r1 == ChronoUnit.MONTHS) {
                return mVar.e(a.DAY_OF_MONTH);
            }
            if (r1 == ChronoUnit.YEARS) {
                return mVar.e(a.DAY_OF_YEAR);
            }
            if (r1 == v.h) {
                return mVar.e(a.DAY_OF_YEAR);
            }
            if (r1 == ChronoUnit.FOREVER) {
                return mVar.e(a.YEAR);
            }
            return false;
        }
        return false;
    }

    @Override // j$.time.temporal.p
    public final t n(m mVar) {
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        Enum r1 = this.d;
        if (r1 == chronoUnit) {
            return this.e;
        }
        if (r1 == ChronoUnit.MONTHS) {
            return d(mVar, a.DAY_OF_MONTH);
        }
        if (r1 == ChronoUnit.YEARS) {
            return d(mVar, a.DAY_OF_YEAR);
        }
        if (r1 == v.h) {
            return e(mVar);
        }
        if (r1 == ChronoUnit.FOREVER) {
            return a.YEAR.b;
        }
        throw new IllegalStateException("unreachable, rangeUnit: " + r1 + ", this: " + this);
    }

    public final t d(m mVar, a aVar) {
        int f2 = f(mVar.i(aVar), b(mVar));
        t l = mVar.l(aVar);
        return t.e(a(f2, (int) l.f11791a), a(f2, (int) l.d));
    }

    public final t e(m mVar) {
        a aVar = a.DAY_OF_YEAR;
        if (!mVar.e(aVar)) {
            return h;
        }
        int b = b(mVar);
        int i2 = mVar.i(aVar);
        int f2 = f(i2, b);
        int a2 = a(f2, i2);
        if (a2 != 0) {
            int i3 = (int) mVar.l(aVar).d;
            int a3 = a(f2, this.b.b + i3);
            if (a2 >= a3) {
                return e(j$.com.android.tools.r8.a.I(mVar).j(mVar).d((i3 - i2) + 8, (r) ChronoUnit.DAYS));
            }
            return t.e(1L, a3 - 1);
        }
        return e(j$.com.android.tools.r8.a.I(mVar).j(mVar).z(i2 + 7, ChronoUnit.DAYS));
    }

    public final String toString() {
        String vVar = this.b.toString();
        return this.f11792a + "[" + vVar + "]";
    }
}
