package j$.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC2156e;
import j$.time.format.C2162a;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2.dex */
public final class ZonedDateTime implements j$.time.temporal.l, ChronoZonedDateTime<LocalDate>, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;

    /* renamed from: a  reason: collision with root package name */
    public final LocalDateTime f11715a;
    public final ZoneOffset b;
    public final ZoneId c;

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final /* synthetic */ long E() {
        return j$.com.android.tools.r8.a.w(this);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return j$.com.android.tools.r8.a.g(this, chronoZonedDateTime);
    }

    public static ZonedDateTime of(LocalDate localDate, LocalTime localTime, ZoneId zoneId) {
        return F(LocalDateTime.I(localDate, localTime), zoneId, null);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final j$.time.chrono.l a() {
        return ((LocalDate) b()).a();
    }

    public static ZonedDateTime F(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, zoneId, (ZoneOffset) zoneId);
        }
        j$.time.zone.f F = zoneId.F();
        List f = F.f(localDateTime);
        if (f.size() == 1) {
            zoneOffset = (ZoneOffset) f.get(0);
        } else if (f.size() != 0) {
            if (zoneOffset == null || !f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) Objects.requireNonNull((ZoneOffset) f.get(0), TypedValues.CycleType.S_WAVE_OFFSET);
            }
        } else {
            Object e = F.e(localDateTime);
            j$.time.zone.b bVar = e instanceof j$.time.zone.b ? (j$.time.zone.b) e : null;
            localDateTime = localDateTime.L(Duration.h(bVar.d.b - bVar.c.b, 0).getSeconds());
            zoneOffset = bVar.d;
        }
        return new ZonedDateTime(localDateTime, zoneId, zoneOffset);
    }

    public static ZonedDateTime u(long j, int i, ZoneId zoneId) {
        ZoneOffset d = zoneId.F().d(Instant.ofEpochSecond(j, i));
        return new ZonedDateTime(LocalDateTime.J(j, i, d), zoneId, d);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final Instant toInstant() {
        return Instant.ofEpochSecond(E(), toLocalTime().d);
    }

    public ZonedDateTime(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        this.f11715a = localDateTime;
        this.b = zoneOffset;
        this.c = zoneId;
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            return true;
        }
        return pVar != null && pVar.k(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* renamed from: toLocalDate */
    public LocalDate b() {
        return this.f11715a.f11711a;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            if (pVar == j$.time.temporal.a.INSTANT_SECONDS || pVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return ((j$.time.temporal.a) pVar).b;
            }
            return this.f11715a.l(pVar);
        }
        return pVar.n(this);
    }

    @Override // j$.time.temporal.m
    public final int i(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            int i = v.f11794a[((j$.time.temporal.a) pVar).ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return this.b.b;
                }
                return this.f11715a.i(pVar);
            }
            throw new RuntimeException("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return j$.com.android.tools.r8.a.k(this, pVar);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public LocalTime toLocalTime() {
        return this.f11715a.b;
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            int i = v.f11794a[((j$.time.temporal.a) pVar).ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return this.b.b;
                }
                return this.f11715a.r(pVar);
            }
            return j$.com.android.tools.r8.a.w(this);
        }
        return pVar.i(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset f() {
        return this.b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneId p() {
        return this.c;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime g(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.c.equals(zoneId) ? this : F(this.f11715a, zoneId, this.b);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final InterfaceC2156e x() {
        return this.f11715a;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        boolean b = c.b(localDate);
        ZoneOffset zoneOffset = this.b;
        ZoneId zoneId = this.c;
        LocalDateTime localDateTime = this.f11715a;
        if (b) {
            return F(LocalDateTime.I(localDate, localDateTime.b), zoneId, zoneOffset);
        }
        localDate.getClass();
        return (ZonedDateTime) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
            int i = v.f11794a[aVar.ordinal()];
            LocalDateTime localDateTime = this.f11715a;
            ZoneId zoneId = this.c;
            if (i != 1) {
                ZoneOffset zoneOffset = this.b;
                if (i != 2) {
                    return F(localDateTime.c(j, pVar), zoneId, zoneOffset);
                }
                ZoneOffset M = ZoneOffset.M(aVar.b.a(j, aVar));
                return (M.equals(zoneOffset) || !zoneId.F().f(localDateTime).contains(M)) ? this : new ZonedDateTime(localDateTime, zoneId, M);
            }
            return u(j, localDateTime.b.d, zoneId);
        }
        return (ZonedDateTime) pVar.l(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: G */
    public final ZonedDateTime d(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof ChronoUnit) {
            ChronoUnit chronoUnit = (ChronoUnit) rVar;
            int compareTo = chronoUnit.compareTo(ChronoUnit.DAYS);
            ZoneOffset zoneOffset = this.b;
            ZoneId zoneId = this.c;
            LocalDateTime localDateTime = this.f11715a;
            if (compareTo >= 0 && chronoUnit != ChronoUnit.FOREVER) {
                return F(localDateTime.d(j, rVar), zoneId, zoneOffset);
            }
            LocalDateTime d = localDateTime.d(j, rVar);
            Objects.requireNonNull(d, "localDateTime");
            Objects.requireNonNull(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
            Objects.requireNonNull(zoneId, "zone");
            if (zoneId.F().f(d).contains(zoneOffset)) {
                return new ZonedDateTime(d, zoneId, zoneOffset);
            }
            d.getClass();
            return u(j$.com.android.tools.r8.a.v(d, zoneOffset), d.b.d, zoneId);
        }
        return (ZonedDateTime) rVar.h(this, j);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l h(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    @Override // j$.time.temporal.m
    public final Object n(C2162a c2162a) {
        if (c2162a == j$.time.temporal.q.f) {
            return b();
        }
        return j$.com.android.tools.r8.a.t(this, c2162a);
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.a(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZonedDateTime) {
            ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
            if (this.f11715a.equals(zonedDateTime.f11715a) && this.b.equals(zonedDateTime.b) && this.c.equals(zonedDateTime.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f11715a.hashCode() ^ this.b.b) ^ Integer.rotateLeft(this.c.hashCode(), 3);
    }

    public final String toString() {
        String localDateTime = this.f11715a.toString();
        ZoneOffset zoneOffset = this.b;
        String str = localDateTime + zoneOffset.c;
        ZoneId zoneId = this.c;
        if (zoneOffset != zoneId) {
            return str + "[" + zoneId.toString() + "]";
        }
        return str;
    }

    private Object writeReplace() {
        return new p((byte) 6, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
