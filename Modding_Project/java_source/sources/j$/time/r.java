package j$.time;

import com.google.common.base.Ascii;
import j$.time.format.A;
import j$.time.format.C2162a;
import j$.time.format.z;
import j$.time.temporal.ChronoUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class r implements j$.time.temporal.l, j$.time.temporal.n, Comparable, Serializable {
    public static final /* synthetic */ int b = 0;
    private static final long serialVersionUID = -23038383694477807L;

    /* renamed from: a  reason: collision with root package name */
    public final int f11778a;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f11778a - ((r) obj).f11778a;
    }

    static {
        j$.time.format.s sVar = new j$.time.format.s();
        sVar.l(j$.time.temporal.a.YEAR, 4, 10, A.EXCEEDS_PAD);
        sVar.p(Locale.getDefault(), z.SMART, null);
    }

    public static r F(int i) {
        j$.time.temporal.a.YEAR.u(i);
        return new r(i);
    }

    public r(int i) {
        this.f11778a = i;
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.YEAR || pVar == j$.time.temporal.a.YEAR_OF_ERA || pVar == j$.time.temporal.a.ERA : pVar != null && pVar.k(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.t.e(1L, this.f11778a <= 0 ? 1000000000L : 999999999L);
        }
        return j$.time.temporal.q.d(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final int i(j$.time.temporal.p pVar) {
        return l(pVar).a(r(pVar), pVar);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            int i = q.f11777a[((j$.time.temporal.a) pVar).ordinal()];
            int i2 = this.f11778a;
            if (i == 1) {
                if (i2 < 1) {
                    i2 = 1 - i2;
                }
                return i2;
            } else if (i != 2) {
                if (i == 3) {
                    return i2 < 1 ? 0 : 1;
                }
                throw new RuntimeException(c.a("Unsupported field: ", pVar));
            } else {
                return i2;
            }
        }
        return pVar.i(this);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        localDate.getClass();
        return (r) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: I */
    public final r c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
            aVar.u(j);
            int i = q.f11777a[aVar.ordinal()];
            int i2 = this.f11778a;
            if (i == 1) {
                if (i2 < 1) {
                    j = 1 - j;
                }
                return F((int) j);
            } else if (i != 2) {
                if (i == 3) {
                    return r(j$.time.temporal.a.ERA) == j ? this : F(1 - i2);
                }
                throw new RuntimeException(c.a("Unsupported field: ", pVar));
            } else {
                return F((int) j);
            }
        }
        return (r) pVar.l(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: G */
    public final r d(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof ChronoUnit) {
            int i = q.b[((ChronoUnit) rVar).ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i == 5) {
                                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                                return c(j$.com.android.tools.r8.a.K(r(aVar), j), aVar);
                            }
                            throw new RuntimeException("Unsupported unit: " + rVar);
                        }
                        return H(j$.com.android.tools.r8.a.J(j, 1000));
                    }
                    return H(j$.com.android.tools.r8.a.J(j, 100));
                }
                return H(j$.com.android.tools.r8.a.J(j, 10));
            }
            return H(j);
        }
        return (r) rVar.h(this, j);
    }

    public final r H(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return F(aVar.b.a(this.f11778a + j, aVar));
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l h(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    @Override // j$.time.temporal.m
    public final Object n(C2162a c2162a) {
        if (c2162a == j$.time.temporal.q.b) {
            return j$.time.chrono.s.c;
        }
        if (c2162a == j$.time.temporal.q.c) {
            return ChronoUnit.YEARS;
        }
        return j$.time.temporal.q.c(this, c2162a);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        if (!j$.com.android.tools.r8.a.I(lVar).equals(j$.time.chrono.s.c)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        return lVar.c(this.f11778a, j$.time.temporal.a.YEAR);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            if (this.f11778a == ((r) obj).f11778a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f11778a;
    }

    public final String toString() {
        return Integer.toString(this.f11778a);
    }

    private Object writeReplace() {
        return new p(Ascii.VT, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
