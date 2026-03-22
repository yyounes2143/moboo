package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.ChronoUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class q extends AbstractC2155d {
    private static final long serialVersionUID = -5207853542612002020L;

    /* renamed from: a  reason: collision with root package name */
    public final transient o f11735a;
    public final transient int b;
    public final transient int c;
    public final transient int d;

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final InterfaceC2156e t(LocalTime localTime) {
        return new C2158g(this, localTime);
    }

    public q(o oVar, int i, int i2, int i3) {
        oVar.n(i, i2, i3);
        this.f11735a = oVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public q(o oVar, long j) {
        int i = (int) j;
        oVar.i();
        if (i < oVar.e || i >= oVar.f) {
            throw new RuntimeException("Hijrah date out of range");
        }
        int binarySearch = Arrays.binarySearch(oVar.d, i);
        binarySearch = binarySearch < 0 ? (-binarySearch) - 2 : binarySearch;
        int[] iArr = {oVar.l(binarySearch), ((oVar.g + binarySearch) % 12) + 1, (i - oVar.d[binarySearch]) + 1};
        this.f11735a = oVar;
        this.b = iArr[0];
        this.c = iArr[1];
        this.d = iArr[2];
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public final l a() {
        return this.f11735a;
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final m G() {
        return r.AH;
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final int hashCode() {
        this.f11735a.getClass();
        int i = this.b;
        return (((i << 11) + (this.c << 6)) + this.d) ^ ((i & (-2048)) ^ 2100100019);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            if (j$.com.android.tools.r8.a.p(this, pVar)) {
                j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
                int i = p.f11734a[aVar.ordinal()];
                o oVar = this.f11735a;
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            return j$.time.temporal.t.e(1L, 5L);
                        }
                        return oVar.F(aVar);
                    }
                    return j$.time.temporal.t.e(1L, A());
                }
                return j$.time.temporal.t.e(1L, oVar.r(this.b, this.c));
            }
            throw new RuntimeException(j$.time.c.a("Unsupported field: ", pVar));
        }
        return pVar.n(this);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            int i = p.f11734a[((j$.time.temporal.a) pVar).ordinal()];
            int i2 = this.c;
            int i3 = this.d;
            int i4 = this.b;
            switch (i) {
                case 1:
                    return i3;
                case 2:
                    return L();
                case 3:
                    return ((i3 - 1) / 7) + 1;
                case 4:
                    return ((int) j$.com.android.tools.r8.a.N(s() + 3, 7)) + 1;
                case 5:
                    return ((i3 - 1) % 7) + 1;
                case 6:
                    return ((L() - 1) % 7) + 1;
                case 7:
                    return s();
                case 8:
                    return ((L() - 1) / 7) + 1;
                case 9:
                    return i2;
                case 10:
                    return ((i4 * 12) + i2) - 1;
                case 11:
                    return i4;
                case 12:
                    return i4;
                case 13:
                    return i4 <= 1 ? 0 : 1;
                default:
                    throw new RuntimeException(j$.time.c.a("Unsupported field: ", pVar));
            }
        }
        return pVar.i(this);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    /* renamed from: P */
    public final q c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
            o oVar = this.f11735a;
            oVar.F(aVar).b(j, aVar);
            int i = (int) j;
            int i2 = p.f11734a[aVar.ordinal()];
            int i3 = this.d;
            int i4 = this.c;
            int i5 = this.b;
            switch (i2) {
                case 1:
                    return O(i5, i4, i);
                case 2:
                    return H(Math.min(i, A()) - L());
                case 3:
                    return H((j - r(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH)) * 7);
                case 4:
                    return H(j - (((int) j$.com.android.tools.r8.a.N(s() + 3, 7)) + 1));
                case 5:
                    return H(j - r(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
                case 6:
                    return H(j - r(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
                case 7:
                    return new q(oVar, j);
                case 8:
                    return H((j - r(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR)) * 7);
                case 9:
                    return O(i5, i, i3);
                case 10:
                    return I(j - (((i5 * 12) + i4) - 1));
                case 11:
                    if (i5 < 1) {
                        i = 1 - i;
                    }
                    return O(i, i4, i3);
                case 12:
                    return O(i, i4, i3);
                case 13:
                    return O(1 - i5, i4, i3);
                default:
                    throw new RuntimeException(j$.time.c.a("Unsupported field: ", pVar));
            }
        }
        return (q) super.c(j, pVar);
    }

    public final q O(int i, int i2, int i3) {
        o oVar = this.f11735a;
        int r = oVar.r(i, i2);
        if (i3 > r) {
            i3 = r;
        }
        return new q(oVar, i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final InterfaceC2153b K(j$.time.temporal.n nVar) {
        return (q) super.k(nVar);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        return (q) super.k(localDate);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final long s() {
        return this.f11735a.n(this.b, this.c, this.d);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final boolean y() {
        return this.f11735a.C(this.b);
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final InterfaceC2153b J(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.b + ((int) j);
        int i = (int) j2;
        if (j2 == i) {
            return O(i, this.c, this.d);
        }
        throw new ArithmeticException();
    }

    @Override // j$.time.chrono.AbstractC2155d
    /* renamed from: N */
    public final q I(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.b * 12) + (this.c - 1) + j;
        long O = j$.com.android.tools.r8.a.O(j2, 12L);
        o oVar = this.f11735a;
        if (O >= oVar.l(0) && O <= oVar.l(oVar.d.length - 1) - 1) {
            return O((int) O, ((int) j$.com.android.tools.r8.a.N(j2, 12L)) + 1, this.d);
        }
        throw new RuntimeException("Invalid Hijrah year: " + O);
    }

    @Override // j$.time.chrono.AbstractC2155d
    /* renamed from: M */
    public final q H(long j) {
        return new q(this.f11735a, s() + j);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b, j$.time.temporal.l
    public final InterfaceC2153b d(long j, j$.time.temporal.r rVar) {
        return (q) super.d(j, rVar);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    public final j$.time.temporal.l d(long j, j$.time.temporal.r rVar) {
        return (q) super.d(j, rVar);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.temporal.l
    public final j$.time.temporal.l h(long j, ChronoUnit chronoUnit) {
        return (q) super.h(j, chronoUnit);
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final InterfaceC2153b z(long j, j$.time.temporal.r rVar) {
        return (q) super.h(j, rVar);
    }

    public final int L() {
        return this.f11735a.G(this.b, this.c - 1) + this.d;
    }

    @Override // j$.time.chrono.AbstractC2155d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            if (this.b == qVar.b && this.c == qVar.c && this.d == qVar.d && this.f11735a.equals(qVar.f11735a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC2155d, j$.time.chrono.InterfaceC2153b
    public final int A() {
        return this.f11735a.G(this.b, 12);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new E((byte) 6, this);
    }
}
