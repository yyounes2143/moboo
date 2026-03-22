package j$.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.time.format.C2162a;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class OffsetDateTime implements j$.time.temporal.l, j$.time.temporal.n, Comparable<OffsetDateTime>, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 2287754244819255394L;

    /* renamed from: a  reason: collision with root package name */
    public final LocalDateTime f11713a;
    public final ZoneOffset b;

    @Override // java.lang.Comparable
    public final int compareTo(OffsetDateTime offsetDateTime) {
        int i;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        ZoneOffset zoneOffset = offsetDateTime2.b;
        ZoneOffset zoneOffset2 = this.b;
        if (zoneOffset2.equals(zoneOffset)) {
            i = toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime());
        } else {
            LocalDateTime localDateTime = this.f11713a;
            localDateTime.getClass();
            long v = j$.com.android.tools.r8.a.v(localDateTime, zoneOffset2);
            LocalDateTime localDateTime2 = offsetDateTime2.f11713a;
            localDateTime2.getClass();
            int compare = Long.compare(v, j$.com.android.tools.r8.a.v(localDateTime2, offsetDateTime2.b));
            i = compare == 0 ? localDateTime.b.d - localDateTime2.b.d : compare;
        }
        return i == 0 ? toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime()) : i;
    }

    static {
        LocalDateTime localDateTime = LocalDateTime.c;
        ZoneOffset zoneOffset = ZoneOffset.g;
        localDateTime.getClass();
        new OffsetDateTime(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.d;
        ZoneOffset zoneOffset2 = ZoneOffset.f;
        localDateTime2.getClass();
        new OffsetDateTime(localDateTime2, zoneOffset2);
    }

    public static OffsetDateTime F(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        ZoneOffset d = zoneId.F().d(instant);
        return new OffsetDateTime(LocalDateTime.J(instant.getEpochSecond(), instant.getNano(), d), d);
    }

    public OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        this.f11713a = (LocalDateTime) Objects.requireNonNull(localDateTime, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
    }

    public final OffsetDateTime H(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.f11713a == localDateTime && this.b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            return true;
        }
        return pVar != null && pVar.k(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            if (pVar != j$.time.temporal.a.INSTANT_SECONDS && pVar != j$.time.temporal.a.OFFSET_SECONDS) {
                return this.f11713a.l(pVar);
            }
            return ((j$.time.temporal.a) pVar).b;
        }
        return pVar.n(this);
    }

    @Override // j$.time.temporal.m
    public final int i(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            int i = m.f11773a[((j$.time.temporal.a) pVar).ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return this.b.b;
                }
                return this.f11713a.i(pVar);
            }
            throw new RuntimeException("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            int i = m.f11773a[((j$.time.temporal.a) pVar).ordinal()];
            ZoneOffset zoneOffset = this.b;
            LocalDateTime localDateTime = this.f11713a;
            if (i == 1) {
                localDateTime.getClass();
                return j$.com.android.tools.r8.a.v(localDateTime, zoneOffset);
            } else if (i == 2) {
                return zoneOffset.b;
            } else {
                return localDateTime.r(pVar);
            }
        }
        return pVar.i(this);
    }

    public LocalDateTime toLocalDateTime() {
        return this.f11713a;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        boolean b = c.b(localDate);
        LocalDateTime localDateTime = this.f11713a;
        ZoneOffset zoneOffset = this.b;
        if (b) {
            return H(localDateTime.k(localDate), zoneOffset);
        }
        localDate.getClass();
        return (OffsetDateTime) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
            int i = m.f11773a[aVar.ordinal()];
            ZoneOffset zoneOffset = this.b;
            LocalDateTime localDateTime = this.f11713a;
            if (i != 1) {
                if (i == 2) {
                    return H(localDateTime, ZoneOffset.M(aVar.b.a(j, aVar)));
                }
                return H(localDateTime.c(j, pVar), zoneOffset);
            }
            return F(Instant.ofEpochSecond(j, localDateTime.b.d), zoneOffset);
        }
        return (OffsetDateTime) pVar.l(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: G */
    public final OffsetDateTime d(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof ChronoUnit) {
            return H(this.f11713a.d(j, rVar), this.b);
        }
        return (OffsetDateTime) rVar.h(this, j);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l h(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    @Override // j$.time.temporal.m
    public final Object n(C2162a c2162a) {
        if (c2162a == j$.time.temporal.q.d || c2162a == j$.time.temporal.q.e) {
            return this.b;
        }
        if (c2162a == j$.time.temporal.q.f11790a) {
            return null;
        }
        C2162a c2162a2 = j$.time.temporal.q.f;
        LocalDateTime localDateTime = this.f11713a;
        if (c2162a == c2162a2) {
            return localDateTime.f11711a;
        }
        if (c2162a == j$.time.temporal.q.g) {
            return localDateTime.b;
        }
        if (c2162a == j$.time.temporal.q.b) {
            return j$.time.chrono.s.c;
        }
        if (c2162a == j$.time.temporal.q.c) {
            return ChronoUnit.NANOS;
        }
        return c2162a.a(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        LocalDateTime localDateTime = this.f11713a;
        return lVar.c(localDateTime.f11711a.s(), aVar).c(localDateTime.b.Q(), j$.time.temporal.a.NANO_OF_DAY).c(this.b.b, j$.time.temporal.a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            if (this.f11713a.equals(offsetDateTime.f11713a) && this.b.equals(offsetDateTime.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f11713a.hashCode() ^ this.b.b;
    }

    public final String toString() {
        String localDateTime = this.f11713a.toString();
        String str = this.b.c;
        return localDateTime + str;
    }

    private Object writeReplace() {
        return new p((byte) 10, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
