package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
/* loaded from: classes2.dex */
public final class I extends AbstractC2155d {
    private static final long serialVersionUID = -8722293800195731463L;

    /* renamed from: a  reason: collision with root package name */
    public final transient LocalDate f11723a;

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final InterfaceC2156e t(LocalTime localTime) {
        return new C2158g(this, localTime);
    }

    public I(LocalDate localDate) {
        Objects.requireNonNull(localDate, "isoDate");
        this.f11723a = localDate;
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public final l a() {
        return G.c;
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final int hashCode() {
        G.c.getClass();
        return this.f11723a.hashCode() ^ 146118545;
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final m G() {
        return L() >= 1 ? J.BE : J.BEFORE_BE;
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            if (j$.com.android.tools.r8.a.p(this, pVar)) {
                j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
                int i = H.f11722a[aVar.ordinal()];
                if (i == 1 || i == 2 || i == 3) {
                    return this.f11723a.l(pVar);
                }
                if (i != 4) {
                    return G.c.i(aVar);
                }
                j$.time.temporal.t tVar = j$.time.temporal.a.YEAR.b;
                return j$.time.temporal.t.e(1L, L() <= 0 ? (-(tVar.f11791a + 543)) + 1 : 543 + tVar.d);
            }
            throw new RuntimeException(j$.time.c.a("Unsupported field: ", pVar));
        }
        return pVar.n(this);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            int i = H.f11722a[((j$.time.temporal.a) pVar).ordinal()];
            if (i == 4) {
                int L = L();
                if (L < 1) {
                    L = 1 - L;
                }
                return L;
            }
            LocalDate localDate = this.f11723a;
            if (i != 5) {
                if (i != 6) {
                    if (i != 7) {
                        return localDate.r(pVar);
                    }
                    return L() < 1 ? 0 : 1;
                }
                return L();
            }
            return ((L() * 12) + localDate.b) - 1;
        }
        return pVar.i(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
        if (r2 != 7) goto L13;
     */
    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.chrono.I c(long r9, j$.time.temporal.p r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof j$.time.temporal.a
            if (r0 == 0) goto L97
            r0 = r11
            j$.time.temporal.a r0 = (j$.time.temporal.a) r0
            long r1 = r8.r(r0)
            int r1 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r1 != 0) goto L10
            return r8
        L10:
            int[] r1 = j$.time.chrono.H.f11722a
            int r2 = r0.ordinal()
            r2 = r1[r2]
            j$.time.LocalDate r3 = r8.f11723a
            r4 = 7
            r5 = 6
            r6 = 4
            if (r2 == r6) goto L49
            r7 = 5
            if (r2 == r7) goto L27
            if (r2 == r5) goto L49
            if (r2 == r4) goto L49
            goto L5f
        L27:
            j$.time.chrono.G r11 = j$.time.chrono.G.c
            j$.time.temporal.t r11 = r11.i(r0)
            r11.b(r9, r0)
            int r11 = r8.L()
            long r0 = (long) r11
            r4 = 12
            long r0 = r0 * r4
            short r11 = r3.b
            long r4 = (long) r11
            long r0 = r0 + r4
            r4 = 1
            long r0 = r0 - r4
            long r9 = r9 - r0
            j$.time.LocalDate r9 = r3.Q(r9)
            j$.time.chrono.I r9 = r8.N(r9)
            return r9
        L49:
            j$.time.chrono.G r2 = j$.time.chrono.G.c
            j$.time.temporal.t r2 = r2.i(r0)
            int r2 = r2.a(r9, r0)
            int r0 = r0.ordinal()
            r0 = r1[r0]
            if (r0 == r6) goto L82
            if (r0 == r5) goto L77
            if (r0 == r4) goto L68
        L5f:
            j$.time.LocalDate r9 = r3.c(r9, r11)
            j$.time.chrono.I r9 = r8.N(r9)
            return r9
        L68:
            int r9 = r8.L()
            int r9 = (-542) - r9
            j$.time.LocalDate r9 = r3.W(r9)
            j$.time.chrono.I r9 = r8.N(r9)
            return r9
        L77:
            int r2 = r2 + (-543)
            j$.time.LocalDate r9 = r3.W(r2)
            j$.time.chrono.I r9 = r8.N(r9)
            return r9
        L82:
            int r9 = r8.L()
            r10 = 1
            if (r9 < r10) goto L8a
            goto L8c
        L8a:
            int r2 = 1 - r2
        L8c:
            int r2 = r2 + (-543)
            j$.time.LocalDate r9 = r3.W(r2)
            j$.time.chrono.I r9 = r8.N(r9)
            return r9
        L97:
            j$.time.chrono.b r9 = super.c(r9, r11)
            j$.time.chrono.I r9 = (j$.time.chrono.I) r9
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.chrono.I.c(long, j$.time.temporal.p):j$.time.chrono.I");
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final InterfaceC2153b K(j$.time.temporal.n nVar) {
        return (I) super.k(nVar);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        return (I) super.k(localDate);
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final InterfaceC2153b J(long j) {
        return N(this.f11723a.R(j));
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final InterfaceC2153b I(long j) {
        return N(this.f11723a.Q(j));
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final InterfaceC2153b H(long j) {
        return N(this.f11723a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b, j$.time.temporal.l
    public final InterfaceC2153b d(long j, j$.time.temporal.r rVar) {
        return (I) super.d(j, rVar);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    public final j$.time.temporal.l d(long j, j$.time.temporal.r rVar) {
        return (I) super.d(j, rVar);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    public final j$.time.temporal.l h(long j, ChronoUnit chronoUnit) {
        return (I) super.h(j, chronoUnit);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final InterfaceC2153b z(long j, j$.time.temporal.r rVar) {
        return (I) super.h(j, rVar);
    }

    public final I N(LocalDate localDate) {
        return localDate.equals(this.f11723a) ? this : new I(localDate);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final long s() {
        return this.f11723a.s();
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof I) {
            return this.f11723a.equals(((I) obj).f11723a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new E((byte) 8, this);
    }

    public final int L() {
        return this.f11723a.f11710a + 543;
    }
}
