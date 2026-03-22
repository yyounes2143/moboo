package j$.time.chrono;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.time.Duration;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.format.C2162a;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2.dex */
public final class k implements ChronoZonedDateTime, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;

    /* renamed from: a  reason: collision with root package name */
    public final transient C2158g f11732a;
    public final transient ZoneOffset b;
    public final transient ZoneId c;

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final /* synthetic */ long E() {
        return j$.com.android.tools.r8.a.w(this);
    }

    @Override // j$.time.temporal.m
    public final /* synthetic */ int i(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.k(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final /* synthetic */ Object n(C2162a c2162a) {
        return j$.com.android.tools.r8.a.t(this, c2162a);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return j$.com.android.tools.r8.a.g(this, chronoZonedDateTime);
    }

    public static k F(ZoneId zoneId, ZoneOffset zoneOffset, C2158g c2158g) {
        Objects.requireNonNull(c2158g, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new k(zoneId, (ZoneOffset) zoneId, c2158g);
        }
        j$.time.zone.f F = zoneId.F();
        LocalDateTime G = LocalDateTime.G(c2158g);
        List f = F.f(G);
        if (f.size() == 1) {
            zoneOffset = (ZoneOffset) f.get(0);
        } else if (f.size() != 0) {
            if (zoneOffset == null || !f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) f.get(0);
            }
            c2158g = c2158g;
        } else {
            Object e = F.e(G);
            j$.time.zone.b bVar = e instanceof j$.time.zone.b ? (j$.time.zone.b) e : null;
            c2158g = c2158g.H(c2158g.f11728a, 0L, 0L, Duration.h(bVar.d.b - bVar.c.b, 0).getSeconds(), 0L);
            zoneOffset = bVar.d;
        }
        Objects.requireNonNull(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        return new k(zoneId, zoneOffset, c2158g);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            if (pVar != j$.time.temporal.a.INSTANT_SECONDS && pVar != j$.time.temporal.a.OFFSET_SECONDS) {
                return ((C2158g) x()).l(pVar);
            }
            return ((j$.time.temporal.a) pVar).b;
        }
        return pVar.n(this);
    }

    public static k u(l lVar, j$.time.temporal.l lVar2) {
        k kVar = (k) lVar2;
        if (lVar.equals(kVar.a())) {
            return kVar;
        }
        String id = lVar.getId();
        String id2 = kVar.a().getId();
        throw new ClassCastException("Chronology mismatch, required: " + id + ", actual: " + id2);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            int i = AbstractC2160i.f11730a[((j$.time.temporal.a) pVar).ordinal()];
            if (i != 1) {
                if (i != 2) {
                    return ((C2158g) x()).r(pVar);
                }
                return f().b;
            }
            return E();
        }
        return pVar.i(this);
    }

    public k(ZoneId zoneId, ZoneOffset zoneOffset, C2158g c2158g) {
        this.f11732a = (C2158g) Objects.requireNonNull(c2158g, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        this.c = (ZoneId) Objects.requireNonNull(zoneId, "zone");
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset f() {
        return this.b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final InterfaceC2153b b() {
        return ((C2158g) x()).b();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final LocalTime toLocalTime() {
        return ((C2158g) x()).toLocalTime();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final InterfaceC2156e x() {
        return this.f11732a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneId p() {
        return this.c;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final l a() {
        return b().a();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime g(ZoneId zoneId) {
        return F(zoneId, this.b, this.f11732a);
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            return true;
        }
        return pVar != null && pVar.k(this);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
            int i = AbstractC2161j.f11731a[aVar.ordinal()];
            if (i != 1) {
                ZoneId zoneId = this.c;
                C2158g c2158g = this.f11732a;
                if (i == 2) {
                    ZoneOffset M = ZoneOffset.M(aVar.b.a(j, aVar));
                    c2158g.getClass();
                    Instant ofEpochSecond = Instant.ofEpochSecond(j$.com.android.tools.r8.a.v(c2158g, M), c2158g.b.d);
                    l a2 = a();
                    ZoneOffset d = zoneId.F().d(ofEpochSecond);
                    Objects.requireNonNull(d, TypedValues.CycleType.S_WAVE_OFFSET);
                    return new k(zoneId, d, (C2158g) a2.m(LocalDateTime.J(ofEpochSecond.getEpochSecond(), ofEpochSecond.getNano(), d)));
                }
                return F(zoneId, this.b, c2158g.c(j, pVar));
            }
            return d(j - j$.com.android.tools.r8.a.w(this), ChronoUnit.SECONDS);
        }
        return u(a(), pVar.l(this, j));
    }

    @Override // j$.time.temporal.l
    /* renamed from: G */
    public final k d(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof ChronoUnit) {
            return u(a(), this.f11732a.d(j, rVar).u(this));
        }
        return u(a(), rVar.h(this, j));
    }

    private Object writeReplace() {
        return new E((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoZonedDateTime) && j$.com.android.tools.r8.a.g(this, (ChronoZonedDateTime) obj) == 0;
    }

    public final int hashCode() {
        return (this.f11732a.hashCode() ^ this.b.b) ^ Integer.rotateLeft(this.c.hashCode(), 3);
    }

    public final String toString() {
        String c2158g = this.f11732a.toString();
        ZoneOffset zoneOffset = this.b;
        String str = c2158g + zoneOffset.c;
        ZoneId zoneId = this.c;
        if (zoneOffset != zoneId) {
            return str + "[" + zoneId.toString() + "]";
        }
        return str;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        return u(a(), localDate.u(this));
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l h(long j, ChronoUnit chronoUnit) {
        return u(a(), j$.time.temporal.q.b(this, j, chronoUnit));
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final Instant toInstant() {
        return Instant.ofEpochSecond(E(), toLocalTime().d);
    }
}
