package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.ChronoUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
/* loaded from: classes2.dex */
public final class x extends AbstractC2155d {
    public static final LocalDate d = LocalDate.N(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;

    /* renamed from: a  reason: collision with root package name */
    public final transient LocalDate f11740a;
    public final transient y b;
    public final transient int c;

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final InterfaceC2156e t(LocalTime localTime) {
        return new C2158g(this, localTime);
    }

    public x(LocalDate localDate) {
        LocalDate localDate2 = d;
        if (!j$.time.c.b(localDate2) ? localDate.s() >= localDate2.s() : localDate.F(localDate2) >= 0) {
            throw new RuntimeException("JapaneseDate before Meiji 6 is not supported");
        }
        y j = y.j(localDate);
        this.b = j;
        this.c = (localDate.f11710a - j.b.f11710a) + 1;
        this.f11740a = localDate;
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public final l a() {
        return v.c;
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final int hashCode() {
        v.c.getClass();
        return this.f11740a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final m G() {
        return this.b;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int A() {
        /*
            r6 = this;
            j$.time.chrono.y r0 = r6.b
            j$.time.chrono.y r1 = r0.m()
            j$.time.LocalDate r2 = r6.f11740a
            r3 = 1
            if (r1 == 0) goto L19
            j$.time.LocalDate r1 = r1.b
            int r4 = r1.f11710a
            int r5 = r2.f11710a
            if (r4 != r5) goto L19
            int r1 = r1.K()
            int r1 = r1 - r3
            goto L1d
        L19:
            int r1 = r2.A()
        L1d:
            int r2 = r6.c
            if (r2 != r3) goto L29
            j$.time.LocalDate r0 = r0.b
            int r0 = r0.K()
            int r0 = r0 - r3
            int r1 = r1 - r0
        L29:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.chrono.x.A():int");
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b, j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || pVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || pVar == j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH || pVar == j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        if (pVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) pVar).r();
        }
        return pVar != null && pVar.k(this);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            if (e(pVar)) {
                j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
                int i = w.f11739a[aVar.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            y yVar = this.b;
                            LocalDate localDate = yVar.b;
                            y m = yVar.m();
                            int i2 = localDate.f11710a;
                            if (m != null) {
                                return j$.time.temporal.t.e(1L, (m.b.f11710a - i2) + 1);
                            }
                            return j$.time.temporal.t.e(1L, 999999999 - i2);
                        }
                        return v.c.i(aVar);
                    }
                    return j$.time.temporal.t.e(1L, A());
                }
                return j$.time.temporal.t.e(1L, this.f11740a.L());
            }
            throw new RuntimeException(j$.time.c.a("Unsupported field: ", pVar));
        }
        return pVar.n(this);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            int i = w.f11739a[((j$.time.temporal.a) pVar).ordinal()];
            int i2 = this.c;
            y yVar = this.b;
            LocalDate localDate = this.f11740a;
            switch (i) {
                case 2:
                    if (i2 == 1) {
                        return (localDate.K() - yVar.b.K()) + 1;
                    }
                    return localDate.K();
                case 3:
                    return i2;
                case 4:
                case 5:
                case 6:
                case 7:
                    throw new RuntimeException(j$.time.c.a("Unsupported field: ", pVar));
                case 8:
                    return yVar.f11741a;
                default:
                    return localDate.r(pVar);
            }
        }
        return pVar.i(this);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    /* renamed from: L */
    public final x c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
            if (r(aVar) == j) {
                return this;
            }
            int[] iArr = w.f11739a;
            int i = iArr[aVar.ordinal()];
            LocalDate localDate = this.f11740a;
            if (i == 3 || i == 8 || i == 9) {
                int a2 = v.c.i(aVar).a(j, aVar);
                int i2 = iArr[aVar.ordinal()];
                if (i2 == 3) {
                    return N(this.b, a2);
                }
                if (i2 == 8) {
                    return N(y.q(a2), this.c);
                }
                if (i2 == 9) {
                    return M(localDate.W(a2));
                }
            }
            return M(localDate.c(j, pVar));
        }
        return (x) super.c(j, pVar);
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final InterfaceC2153b K(j$.time.temporal.n nVar) {
        return (x) super.k(nVar);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        return (x) super.k(localDate);
    }

    public final x N(y yVar, int i) {
        v.c.getClass();
        if (yVar == null) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        int i2 = yVar.b.f11710a;
        int i3 = (i2 + i) - 1;
        if (i != 1 && (i3 < -999999999 || i3 > 999999999 || i3 < i2 || yVar != y.j(LocalDate.N(i3, 1, 1)))) {
            throw new RuntimeException("Invalid yearOfEra value");
        }
        return M(this.f11740a.W(i3));
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final InterfaceC2153b J(long j) {
        return M(this.f11740a.R(j));
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final InterfaceC2153b I(long j) {
        return M(this.f11740a.Q(j));
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final InterfaceC2153b H(long j) {
        return M(this.f11740a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b, j$.time.temporal.l
    public final InterfaceC2153b d(long j, j$.time.temporal.r rVar) {
        return (x) super.d(j, rVar);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    public final j$.time.temporal.l d(long j, j$.time.temporal.r rVar) {
        return (x) super.d(j, rVar);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    public final j$.time.temporal.l h(long j, ChronoUnit chronoUnit) {
        return (x) super.h(j, chronoUnit);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final InterfaceC2153b z(long j, j$.time.temporal.r rVar) {
        return (x) super.h(j, rVar);
    }

    public final x M(LocalDate localDate) {
        return localDate.equals(this.f11740a) ? this : new x(localDate);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final long s() {
        return this.f11740a.s();
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x) {
            return this.f11740a.equals(((x) obj).f11740a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new E((byte) 4, this);
    }
}
