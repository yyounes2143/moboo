package j$.time;

import j$.time.format.C2162a;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class Instant implements j$.time.temporal.l, j$.time.temporal.n, Comparable<Instant>, Serializable {
    private static final long serialVersionUID = -665713676816604388L;

    /* renamed from: a  reason: collision with root package name */
    public final long f11709a;
    public final int b;
    public static final Instant c = new Instant(0, 0);
    public static final Instant MIN = ofEpochSecond(-31557014167219200L, 0);
    public static final Instant MAX = ofEpochSecond(31556889864403199L, 999999999);

    public static Instant now() {
        a.b.getClass();
        return ofEpochMilli(System.currentTimeMillis());
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int compare = Long.compare(this.f11709a, instant2.f11709a);
        return compare != 0 ? compare : this.b - instant2.b;
    }

    public static Instant ofEpochSecond(long j, long j2) {
        return F(j$.com.android.tools.r8.a.K(j, j$.com.android.tools.r8.a.O(j2, 1000000000L)), (int) j$.com.android.tools.r8.a.N(j2, 1000000000L));
    }

    public static Instant ofEpochMilli(long j) {
        long j2 = 1000;
        return F(j$.com.android.tools.r8.a.O(j, j2), ((int) j$.com.android.tools.r8.a.N(j, j2)) * 1000000);
    }

    public static Instant G(j$.time.temporal.m mVar) {
        if (mVar instanceof Instant) {
            return (Instant) mVar;
        }
        Objects.requireNonNull(mVar, "temporal");
        try {
            return ofEpochSecond(mVar.r(j$.time.temporal.a.INSTANT_SECONDS), mVar.i(j$.time.temporal.a.NANO_OF_SECOND));
        } catch (b e) {
            String name = mVar.getClass().getName();
            throw new RuntimeException("Unable to obtain Instant from TemporalAccessor: " + mVar + " of type " + name, e);
        }
    }

    public ZonedDateTime atZone(ZoneId zoneId) {
        Objects.requireNonNull(this, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return ZonedDateTime.u(getEpochSecond(), getNano(), zoneId);
    }

    public static Instant F(long j, int i) {
        if ((i | j) == 0) {
            return c;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new RuntimeException("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    public Instant(long j, int i) {
        this.f11709a = j;
        this.b = i;
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.INSTANT_SECONDS || pVar == j$.time.temporal.a.NANO_OF_SECOND || pVar == j$.time.temporal.a.MICRO_OF_SECOND || pVar == j$.time.temporal.a.MILLI_OF_SECOND : pVar != null && pVar.k(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.d(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final int i(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            int i = e.f11744a[((j$.time.temporal.a) pVar).ordinal()];
            int i2 = this.b;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return i2 / 1000000;
                    }
                    if (i == 4) {
                        j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
                        aVar.b.a(this.f11709a, aVar);
                    }
                    throw new RuntimeException(c.a("Unsupported field: ", pVar));
                }
                return i2 / 1000;
            }
            return i2;
        }
        return j$.time.temporal.q.d(this, pVar).a(pVar.i(this), pVar);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        int i;
        if (pVar instanceof j$.time.temporal.a) {
            int i2 = e.f11744a[((j$.time.temporal.a) pVar).ordinal()];
            int i3 = this.b;
            if (i2 != 1) {
                if (i2 == 2) {
                    i = i3 / 1000;
                } else if (i2 != 3) {
                    if (i2 == 4) {
                        return this.f11709a;
                    }
                    throw new RuntimeException(c.a("Unsupported field: ", pVar));
                } else {
                    i = i3 / 1000000;
                }
                return i;
            }
            return i3;
        }
        return pVar.i(this);
    }

    public long getEpochSecond() {
        return this.f11709a;
    }

    public int getNano() {
        return this.b;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        localDate.getClass();
        return (Instant) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
            aVar.u(j);
            int i = e.f11744a[aVar.ordinal()];
            int i2 = this.b;
            long j2 = this.f11709a;
            if (i != 1) {
                if (i == 2) {
                    int i3 = ((int) j) * 1000;
                    if (i3 != i2) {
                        return F(j2, i3);
                    }
                } else if (i == 3) {
                    int i4 = ((int) j) * 1000000;
                    if (i4 != i2) {
                        return F(j2, i4);
                    }
                } else if (i != 4) {
                    throw new RuntimeException(c.a("Unsupported field: ", pVar));
                } else {
                    if (j != j2) {
                        return F(j, i2);
                    }
                }
            } else if (j != i2) {
                return F(j2, (int) j);
            }
            return this;
        }
        return (Instant) pVar.l(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: I */
    public final Instant d(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof ChronoUnit) {
            switch (e.b[((ChronoUnit) rVar).ordinal()]) {
                case 1:
                    return H(0L, j);
                case 2:
                    return H(j / 1000000, (j % 1000000) * 1000);
                case 3:
                    return H(j / 1000, (j % 1000) * 1000000);
                case 4:
                    return H(j, 0L);
                case 5:
                    return H(j$.com.android.tools.r8.a.J(j, 60), 0L);
                case 6:
                    return H(j$.com.android.tools.r8.a.J(j, 3600), 0L);
                case 7:
                    return H(j$.com.android.tools.r8.a.J(j, 43200), 0L);
                case 8:
                    return H(j$.com.android.tools.r8.a.J(j, 86400), 0L);
                default:
                    throw new RuntimeException("Unsupported unit: " + rVar);
            }
        }
        return (Instant) rVar.h(this, j);
    }

    public final Instant H(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofEpochSecond(j$.com.android.tools.r8.a.K(j$.com.android.tools.r8.a.K(this.f11709a, j), j2 / 1000000000), this.b + (j2 % 1000000000));
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l h(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    @Override // j$.time.temporal.m
    public final Object n(C2162a c2162a) {
        if (c2162a == j$.time.temporal.q.c) {
            return ChronoUnit.NANOS;
        }
        if (c2162a == j$.time.temporal.q.b || c2162a == j$.time.temporal.q.f11790a || c2162a == j$.time.temporal.q.e || c2162a == j$.time.temporal.q.d || c2162a == j$.time.temporal.q.f || c2162a == j$.time.temporal.q.g) {
            return null;
        }
        return c2162a.a(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(this.f11709a, j$.time.temporal.a.INSTANT_SECONDS).c(this.b, j$.time.temporal.a.NANO_OF_SECOND);
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.F(this, zoneOffset);
    }

    public long toEpochMilli() {
        long j = this.f11709a;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        int i2 = this.b;
        if (i < 0 && i2 > 0) {
            return j$.com.android.tools.r8.a.K(j$.com.android.tools.r8.a.J(j + 1, 1000), (i2 / 1000000) - 1000);
        }
        return j$.com.android.tools.r8.a.K(j$.com.android.tools.r8.a.J(j, 1000), i2 / 1000000);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.f11709a == instant.f11709a && this.b == instant.b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j = this.f11709a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return DateTimeFormatter.e.a(this);
    }

    private Object writeReplace() {
        return new p((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
