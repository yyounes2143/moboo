package j$.time.chrono;

import j$.time.LocalTime;
import j$.time.format.C2162a;
import j$.time.temporal.ChronoUnit;
import java.io.Serializable;
/* renamed from: j$.time.chrono.d  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2155d implements InterfaceC2153b, j$.time.temporal.l, j$.time.temporal.n, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    @Override // java.lang.Comparable
    /* renamed from: B */
    public final /* synthetic */ int compareTo(InterfaceC2153b interfaceC2153b) {
        return j$.com.android.tools.r8.a.e(this, interfaceC2153b);
    }

    public abstract InterfaceC2153b H(long j);

    public abstract InterfaceC2153b I(long j);

    public abstract InterfaceC2153b J(long j);

    @Override // j$.time.chrono.InterfaceC2153b, j$.time.temporal.m
    public /* synthetic */ boolean e(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.p(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final /* synthetic */ int i(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.m
    public /* synthetic */ j$.time.temporal.t l(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.d(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final /* synthetic */ Object n(C2162a c2162a) {
        return j$.com.android.tools.r8.a.r(this, c2162a);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return j$.com.android.tools.r8.a.a(this, lVar);
    }

    public static InterfaceC2153b F(l lVar, j$.time.temporal.l lVar2) {
        InterfaceC2153b interfaceC2153b = (InterfaceC2153b) lVar2;
        if (lVar.equals(interfaceC2153b.a())) {
            return interfaceC2153b;
        }
        String id = lVar.getId();
        String id2 = interfaceC2153b.a().getId();
        throw new ClassCastException("Chronology mismatch, expected: " + id + ", actual: " + id2);
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public InterfaceC2156e t(LocalTime localTime) {
        return new C2158g(this, localTime);
    }

    @Override // j$.time.temporal.l
    public InterfaceC2153b d(long j, j$.time.temporal.r rVar) {
        boolean z = rVar instanceof ChronoUnit;
        if (!z) {
            if (z) {
                throw new RuntimeException("Unsupported unit: " + rVar);
            }
            return F(a(), rVar.h(this, j));
        }
        switch (AbstractC2154c.f11726a[((ChronoUnit) rVar).ordinal()]) {
            case 1:
                return H(j);
            case 2:
                return H(j$.com.android.tools.r8.a.J(j, 7));
            case 3:
                return I(j);
            case 4:
                return J(j);
            case 5:
                return J(j$.com.android.tools.r8.a.J(j, 10));
            case 6:
                return J(j$.com.android.tools.r8.a.J(j, 100));
            case 7:
                return J(j$.com.android.tools.r8.a.J(j, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(j$.com.android.tools.r8.a.K(r(aVar), j), (j$.time.temporal.p) aVar);
            default:
                throw new RuntimeException("Unsupported unit: " + rVar);
        }
    }

    public m G() {
        return a().D(j$.time.temporal.q.a(this, j$.time.temporal.a.ERA));
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public boolean y() {
        return a().C(r(j$.time.temporal.a.YEAR));
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public int A() {
        return y() ? 366 : 365;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC2153b) && j$.com.android.tools.r8.a.e(this, (InterfaceC2153b) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public int hashCode() {
        long s = s();
        return ((int) (s ^ (s >>> 32))) ^ a().hashCode();
    }

    @Override // j$.time.temporal.l
    /* renamed from: K */
    public InterfaceC2153b k(j$.time.temporal.n nVar) {
        return F(a(), nVar.u(this));
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public final String toString() {
        long r = r(j$.time.temporal.a.YEAR_OF_ERA);
        long r2 = r(j$.time.temporal.a.MONTH_OF_YEAR);
        long r3 = r(j$.time.temporal.a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(a().toString());
        sb.append(" ");
        sb.append(G());
        sb.append(" ");
        sb.append(r);
        sb.append(r2 < 10 ? "-0" : "-");
        sb.append(r2);
        sb.append(r3 < 10 ? "-0" : "-");
        sb.append(r3);
        return sb.toString();
    }

    @Override // j$.time.temporal.l
    public InterfaceC2153b c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(j$.time.c.a("Unsupported field: ", pVar));
        }
        return F(a(), pVar.l(this, j));
    }

    @Override // j$.time.temporal.l
    /* renamed from: z */
    public InterfaceC2153b h(long j, j$.time.temporal.r rVar) {
        return F(a(), j$.time.temporal.q.b(this, j, rVar));
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public long s() {
        return r(j$.time.temporal.a.EPOCH_DAY);
    }
}
