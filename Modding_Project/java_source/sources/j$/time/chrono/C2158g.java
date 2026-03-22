package j$.time.chrono;

import com.vungle.ads.internal.signals.SignalManager;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneOffset;
import j$.time.format.C2162a;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* renamed from: j$.time.chrono.g  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2158g implements InterfaceC2156e, j$.time.temporal.l, j$.time.temporal.n, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;

    /* renamed from: a  reason: collision with root package name */
    public final transient InterfaceC2153b f11728a;
    public final transient LocalTime b;

    @Override // j$.time.temporal.m
    public final /* synthetic */ Object n(C2162a c2162a) {
        return j$.com.android.tools.r8.a.s(this, c2162a);
    }

    @Override // java.lang.Comparable
    /* renamed from: v */
    public final /* synthetic */ int compareTo(InterfaceC2156e interfaceC2156e) {
        return j$.com.android.tools.r8.a.f(this, interfaceC2156e);
    }

    public static C2158g F(l lVar, j$.time.temporal.l lVar2) {
        C2158g c2158g = (C2158g) lVar2;
        if (lVar.equals(c2158g.f11728a.a())) {
            return c2158g;
        }
        String id = lVar.getId();
        String id2 = c2158g.f11728a.a().getId();
        throw new ClassCastException("Chronology mismatch, required: " + id + ", actual: " + id2);
    }

    @Override // j$.time.chrono.InterfaceC2156e
    public final l a() {
        return this.f11728a.a();
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l h(long j, ChronoUnit chronoUnit) {
        return F(this.f11728a.a(), j$.time.temporal.q.b(this, j, chronoUnit));
    }

    public C2158g(InterfaceC2153b interfaceC2153b, LocalTime localTime) {
        Objects.requireNonNull(interfaceC2153b, "date");
        Objects.requireNonNull(localTime, "time");
        this.f11728a = interfaceC2153b;
        this.b = localTime;
    }

    public final C2158g J(j$.time.temporal.l lVar, LocalTime localTime) {
        InterfaceC2153b interfaceC2153b = this.f11728a;
        return (interfaceC2153b == lVar && this.b == localTime) ? this : new C2158g(AbstractC2155d.F(interfaceC2153b.a(), lVar), localTime);
    }

    @Override // j$.time.chrono.InterfaceC2156e
    public final InterfaceC2153b b() {
        return this.f11728a;
    }

    @Override // j$.time.chrono.InterfaceC2156e
    public final LocalTime toLocalTime() {
        return this.b;
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        if (!(pVar instanceof j$.time.temporal.a)) {
            return pVar != null && pVar.k(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
        return aVar.r() || aVar.F();
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            if (!((j$.time.temporal.a) pVar).F()) {
                return this.f11728a.l(pVar);
            }
            LocalTime localTime = this.b;
            localTime.getClass();
            return j$.time.temporal.q.d(localTime, pVar);
        }
        return pVar.n(this);
    }

    @Override // j$.time.temporal.m
    public final int i(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) pVar).F() ? this.b.i(pVar) : this.f11728a.i(pVar);
        }
        return l(pVar).a(r(pVar), pVar);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) pVar).F() ? this.b.r(pVar) : this.f11728a.r(pVar);
        }
        return pVar.i(this);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        if (j$.time.c.b(localDate)) {
            return J(localDate, this.b);
        }
        l a2 = this.f11728a.a();
        localDate.getClass();
        return F(a2, (C2158g) j$.com.android.tools.r8.a.a(localDate, this));
    }

    @Override // j$.time.temporal.l
    /* renamed from: I */
    public final C2158g c(long j, j$.time.temporal.p pVar) {
        boolean z = pVar instanceof j$.time.temporal.a;
        InterfaceC2153b interfaceC2153b = this.f11728a;
        if (z) {
            boolean F = ((j$.time.temporal.a) pVar).F();
            LocalTime localTime = this.b;
            if (F) {
                return J(interfaceC2153b, localTime.c(j, pVar));
            }
            return J(interfaceC2153b.c(j, pVar), localTime);
        }
        return F(interfaceC2153b.a(), pVar.l(this, j));
    }

    @Override // j$.time.temporal.l
    /* renamed from: G */
    public final C2158g d(long j, j$.time.temporal.r rVar) {
        boolean z = rVar instanceof ChronoUnit;
        InterfaceC2153b interfaceC2153b = this.f11728a;
        if (z) {
            int i = AbstractC2157f.f11727a[((ChronoUnit) rVar).ordinal()];
            LocalTime localTime = this.b;
            switch (i) {
                case 1:
                    return H(this.f11728a, 0L, 0L, 0L, j);
                case 2:
                    C2158g J = J(interfaceC2153b.d(j / 86400000000L, (j$.time.temporal.r) ChronoUnit.DAYS), localTime);
                    return J.H(J.f11728a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
                case 3:
                    C2158g J2 = J(interfaceC2153b.d(j / SignalManager.TWENTY_FOUR_HOURS_MILLIS, (j$.time.temporal.r) ChronoUnit.DAYS), localTime);
                    return J2.H(J2.f11728a, 0L, 0L, 0L, (j % SignalManager.TWENTY_FOUR_HOURS_MILLIS) * 1000000);
                case 4:
                    return H(this.f11728a, 0L, 0L, j, 0L);
                case 5:
                    return H(this.f11728a, 0L, j, 0L, 0L);
                case 6:
                    return H(this.f11728a, j, 0L, 0L, 0L);
                case 7:
                    C2158g J3 = J(interfaceC2153b.d(j / 256, (j$.time.temporal.r) ChronoUnit.DAYS), localTime);
                    return J3.H(J3.f11728a, (j % 256) * 12, 0L, 0L, 0L);
                default:
                    return J(interfaceC2153b.d(j, rVar), localTime);
            }
        }
        return F(interfaceC2153b.a(), rVar.h(this, j));
    }

    public final C2158g H(InterfaceC2153b interfaceC2153b, long j, long j2, long j3, long j4) {
        int i = ((j | j2 | j3 | j4) > 0L ? 1 : ((j | j2 | j3 | j4) == 0L ? 0 : -1));
        LocalTime localTime = this.b;
        if (i == 0) {
            return J(interfaceC2153b, localTime);
        }
        long j5 = j2 / 1440;
        long j6 = j / 24;
        long j7 = (j2 % 1440) * 60000000000L;
        long j8 = ((j % 24) * 3600000000000L) + j7 + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long Q = localTime.Q();
        long j9 = j8 + Q;
        long O = j$.com.android.tools.r8.a.O(j9, 86400000000000L) + j6 + j5 + (j3 / 86400) + (j4 / 86400000000000L);
        long N = j$.com.android.tools.r8.a.N(j9, 86400000000000L);
        if (N != Q) {
            localTime = LocalTime.J(N);
        }
        return J(interfaceC2153b.d(O, (j$.time.temporal.r) ChronoUnit.DAYS), localTime);
    }

    @Override // j$.time.chrono.InterfaceC2156e
    public final ChronoZonedDateTime o(ZoneOffset zoneOffset) {
        return k.F(zoneOffset, null, this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(b().s(), j$.time.temporal.a.EPOCH_DAY).c(toLocalTime().Q(), j$.time.temporal.a.NANO_OF_DAY);
    }

    private Object writeReplace() {
        return new E((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC2156e) && j$.com.android.tools.r8.a.f(this, (InterfaceC2156e) obj) == 0;
    }

    public final int hashCode() {
        return this.f11728a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        String interfaceC2153b = this.f11728a.toString();
        String localTime = this.b.toString();
        return interfaceC2153b + "T" + localTime;
    }
}
