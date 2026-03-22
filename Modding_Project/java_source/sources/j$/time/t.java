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
public final class t implements j$.time.temporal.l, j$.time.temporal.n, Comparable, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 4183400860270640070L;

    /* renamed from: a  reason: collision with root package name */
    public final int f11780a;
    public final int b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        t tVar = (t) obj;
        int i = this.f11780a - tVar.f11780a;
        return i == 0 ? this.b - tVar.b : i;
    }

    static {
        j$.time.format.s sVar = new j$.time.format.s();
        sVar.l(j$.time.temporal.a.YEAR, 4, 10, A.EXCEEDS_PAD);
        sVar.c('-');
        sVar.k(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        sVar.p(Locale.getDefault(), z.SMART, null);
    }

    public t(int i, int i2) {
        this.f11780a = i;
        this.b = i2;
    }

    public final t J(int i, int i2) {
        return (this.f11780a == i && this.b == i2) ? this : new t(i, i2);
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.YEAR || pVar == j$.time.temporal.a.MONTH_OF_YEAR || pVar == j$.time.temporal.a.PROLEPTIC_MONTH || pVar == j$.time.temporal.a.YEAR_OF_ERA || pVar == j$.time.temporal.a.ERA : pVar != null && pVar.k(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.t.e(1L, this.f11780a <= 0 ? 1000000000L : 999999999L);
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
            int i = s.f11779a[((j$.time.temporal.a) pVar).ordinal()];
            if (i != 1) {
                if (i != 2) {
                    int i2 = this.f11780a;
                    if (i == 3) {
                        if (i2 < 1) {
                            i2 = 1 - i2;
                        }
                        return i2;
                    } else if (i != 4) {
                        if (i == 5) {
                            return i2 < 1 ? 0 : 1;
                        }
                        throw new RuntimeException(c.a("Unsupported field: ", pVar));
                    } else {
                        return i2;
                    }
                }
                return F();
            }
            return this.b;
        }
        return pVar.i(this);
    }

    public final long F() {
        return ((this.f11780a * 12) + this.b) - 1;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        localDate.getClass();
        return (t) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: K */
    public final t c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
            aVar.u(j);
            int i = s.f11779a[aVar.ordinal()];
            int i2 = this.f11780a;
            if (i == 1) {
                int i3 = (int) j;
                j$.time.temporal.a.MONTH_OF_YEAR.u(i3);
                return J(i2, i3);
            } else if (i != 2) {
                int i4 = this.b;
                if (i == 3) {
                    if (i2 < 1) {
                        j = 1 - j;
                    }
                    int i5 = (int) j;
                    j$.time.temporal.a.YEAR.u(i5);
                    return J(i5, i4);
                } else if (i == 4) {
                    int i6 = (int) j;
                    j$.time.temporal.a.YEAR.u(i6);
                    return J(i6, i4);
                } else if (i == 5) {
                    if (r(j$.time.temporal.a.ERA) == j) {
                        return this;
                    }
                    int i7 = 1 - i2;
                    j$.time.temporal.a.YEAR.u(i7);
                    return J(i7, i4);
                } else {
                    throw new RuntimeException(c.a("Unsupported field: ", pVar));
                }
            } else {
                return H(j - F());
            }
        }
        return (t) pVar.l(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: G */
    public final t d(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof ChronoUnit) {
            switch (s.b[((ChronoUnit) rVar).ordinal()]) {
                case 1:
                    return H(j);
                case 2:
                    return I(j);
                case 3:
                    return I(j$.com.android.tools.r8.a.J(j, 10));
                case 4:
                    return I(j$.com.android.tools.r8.a.J(j, 100));
                case 5:
                    return I(j$.com.android.tools.r8.a.J(j, 1000));
                case 6:
                    j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                    return c(j$.com.android.tools.r8.a.K(r(aVar), j), aVar);
                default:
                    throw new RuntimeException("Unsupported unit: " + rVar);
            }
        }
        return (t) rVar.h(this, j);
    }

    public final t I(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return J(aVar.b.a(this.f11780a + j, aVar), this.b);
    }

    public final t H(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f11780a * 12) + (this.b - 1) + j;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        long j3 = 12;
        return J(aVar.b.a(j$.com.android.tools.r8.a.O(j2, j3), aVar), ((int) j$.com.android.tools.r8.a.N(j2, j3)) + 1);
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
            return ChronoUnit.MONTHS;
        }
        return j$.time.temporal.q.c(this, c2162a);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        if (!j$.com.android.tools.r8.a.I(lVar).equals(j$.time.chrono.s.c)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        return lVar.c(F(), j$.time.temporal.a.PROLEPTIC_MONTH);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            if (this.f11780a == tVar.f11780a && this.b == tVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.b << 27) ^ this.f11780a;
    }

    public final String toString() {
        int i = this.f11780a;
        int abs = Math.abs(i);
        StringBuilder sb = new StringBuilder(9);
        if (abs >= 1000) {
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        int i2 = this.b;
        sb.append(i2 < 10 ? "-0" : "-");
        sb.append(i2);
        return sb.toString();
    }

    private Object writeReplace() {
        return new p(Ascii.FF, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
