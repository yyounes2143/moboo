package j$.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.vungle.ads.internal.signals.SignalManager;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC2153b;
import j$.time.chrono.InterfaceC2156e;
import j$.time.format.C2162a;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class LocalDateTime implements j$.time.temporal.l, j$.time.temporal.n, InterfaceC2156e, Serializable {
    public static final LocalDateTime c = I(LocalDate.d, LocalTime.e);
    public static final LocalDateTime d = I(LocalDate.e, LocalTime.f);
    private static final long serialVersionUID = 6207766400415563566L;

    /* renamed from: a  reason: collision with root package name */
    public final LocalDate f11711a;
    public final LocalTime b;

    @Override // j$.time.chrono.InterfaceC2156e
    public final j$.time.chrono.l a() {
        return ((LocalDate) b()).a();
    }

    @Override // j$.time.chrono.InterfaceC2156e
    public final ChronoZonedDateTime o(ZoneOffset zoneOffset) {
        return ZonedDateTime.F(this, zoneOffset, null);
    }

    public static LocalDateTime I(LocalDate localDate, LocalTime localTime) {
        Objects.requireNonNull(localDate, "date");
        Objects.requireNonNull(localTime, "time");
        return new LocalDateTime(localDate, localTime);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(((LocalDate) b()).s(), j$.time.temporal.a.EPOCH_DAY).c(toLocalTime().Q(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public static LocalDateTime J(long j, int i, ZoneOffset zoneOffset) {
        long j2;
        long j3;
        Objects.requireNonNull(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        long j4 = i;
        j$.time.temporal.a.NANO_OF_SECOND.u(j4);
        return new LocalDateTime(LocalDate.O(j$.com.android.tools.r8.a.O(j + zoneOffset.b, 86400)), LocalTime.J((((int) j$.com.android.tools.r8.a.N(j2, j3)) * 1000000000) + j4));
    }

    public static LocalDateTime G(j$.time.temporal.m mVar) {
        if (mVar instanceof LocalDateTime) {
            return (LocalDateTime) mVar;
        }
        if (!(mVar instanceof ZonedDateTime)) {
            if (mVar instanceof OffsetDateTime) {
                return ((OffsetDateTime) mVar).toLocalDateTime();
            }
            try {
                return new LocalDateTime(LocalDate.H(mVar), LocalTime.H(mVar));
            } catch (b e) {
                String name = mVar.getClass().getName();
                throw new RuntimeException("Unable to obtain LocalDateTime from TemporalAccessor: " + mVar + " of type " + name, e);
            }
        }
        return ((ZonedDateTime) mVar).f11715a;
    }

    public LocalDateTime(LocalDate localDate, LocalTime localTime) {
        this.f11711a = localDate;
        this.b = localTime;
    }

    public final LocalDateTime P(LocalDate localDate, LocalTime localTime) {
        return (this.f11711a == localDate && this.b == localTime) ? this : new LocalDateTime(localDate, localTime);
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
            if (((j$.time.temporal.a) pVar).F()) {
                LocalTime localTime = this.b;
                localTime.getClass();
                return j$.time.temporal.q.d(localTime, pVar);
            }
            return this.f11711a.l(pVar);
        }
        return pVar.n(this);
    }

    @Override // j$.time.temporal.m
    public final int i(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) pVar).F() ? this.b.i(pVar) : this.f11711a.i(pVar);
        }
        return j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) pVar).F() ? this.b.r(pVar) : this.f11711a.r(pVar);
        }
        return pVar.i(this);
    }

    public final int F(LocalDateTime localDateTime) {
        int F = this.f11711a.F(localDateTime.f11711a);
        return F == 0 ? this.b.compareTo(localDateTime.b) : F;
    }

    @Override // j$.time.chrono.InterfaceC2156e
    public final InterfaceC2153b b() {
        return this.f11711a;
    }

    @Override // j$.time.chrono.InterfaceC2156e
    public final LocalTime toLocalTime() {
        return this.b;
    }

    @Override // j$.time.temporal.l
    /* renamed from: O */
    public final LocalDateTime k(LocalDate localDate) {
        if (c.b(localDate)) {
            return P(localDate, this.b);
        }
        localDate.getClass();
        return (LocalDateTime) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: N */
    public final LocalDateTime c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            boolean F = ((j$.time.temporal.a) pVar).F();
            LocalTime localTime = this.b;
            LocalDate localDate = this.f11711a;
            if (F) {
                return P(localDate, localTime.c(j, pVar));
            }
            return P(localDate.c(j, pVar), localTime);
        }
        return (LocalDateTime) pVar.l(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: K */
    public final LocalDateTime d(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof ChronoUnit) {
            int i = g.f11767a[((ChronoUnit) rVar).ordinal()];
            LocalTime localTime = this.b;
            LocalDate localDate = this.f11711a;
            switch (i) {
                case 1:
                    return M(this.f11711a, 0L, 0L, 0L, j);
                case 2:
                    LocalDateTime P = P(localDate.plusDays(j / 86400000000L), localTime);
                    return P.M(P.f11711a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
                case 3:
                    LocalDateTime P2 = P(localDate.plusDays(j / SignalManager.TWENTY_FOUR_HOURS_MILLIS), localTime);
                    return P2.M(P2.f11711a, 0L, 0L, 0L, (j % SignalManager.TWENTY_FOUR_HOURS_MILLIS) * 1000000);
                case 4:
                    return L(j);
                case 5:
                    return M(this.f11711a, 0L, j, 0L, 0L);
                case 6:
                    return M(this.f11711a, j, 0L, 0L, 0L);
                case 7:
                    LocalDateTime P3 = P(localDate.plusDays(j / 256), localTime);
                    return P3.M(P3.f11711a, (j % 256) * 12, 0L, 0L, 0L);
                default:
                    return P(localDate.d(j, rVar), localTime);
            }
        }
        return (LocalDateTime) rVar.h(this, j);
    }

    public final LocalDateTime L(long j) {
        return M(this.f11711a, 0L, 0L, j, 0L);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l h(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    public final LocalDateTime M(LocalDate localDate, long j, long j2, long j3, long j4) {
        int i = ((j | j2 | j3 | j4) > 0L ? 1 : ((j | j2 | j3 | j4) == 0L ? 0 : -1));
        LocalTime localTime = this.b;
        if (i == 0) {
            return P(localDate, localTime);
        }
        long j5 = j / 24;
        long j6 = j5 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long j7 = 1;
        long j8 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long Q = localTime.Q();
        long j9 = (j8 * j7) + Q;
        long O = j$.com.android.tools.r8.a.O(j9, 86400000000000L) + (j6 * j7);
        long N = j$.com.android.tools.r8.a.N(j9, 86400000000000L);
        if (N != Q) {
            localTime = LocalTime.J(N);
        }
        return P(localDate.plusDays(O), localTime);
    }

    @Override // j$.time.temporal.m
    public final Object n(C2162a c2162a) {
        if (c2162a == j$.time.temporal.q.f) {
            return this.f11711a;
        }
        return j$.com.android.tools.r8.a.s(this, c2162a);
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.a(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: v */
    public final int compareTo(InterfaceC2156e interfaceC2156e) {
        if (interfaceC2156e instanceof LocalDateTime) {
            return F((LocalDateTime) interfaceC2156e);
        }
        return j$.com.android.tools.r8.a.f(this, interfaceC2156e);
    }

    public final boolean H(InterfaceC2156e interfaceC2156e) {
        if (interfaceC2156e instanceof LocalDateTime) {
            return F((LocalDateTime) interfaceC2156e) < 0;
        }
        int i = (this.f11711a.s() > interfaceC2156e.b().s() ? 1 : (this.f11711a.s() == interfaceC2156e.b().s() ? 0 : -1));
        if (i >= 0) {
            return i == 0 && this.b.Q() < interfaceC2156e.toLocalTime().Q();
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.f11711a.equals(localDateTime.f11711a) && this.b.equals(localDateTime.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f11711a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        String localDate = this.f11711a.toString();
        String localTime = this.b.toString();
        return localDate + "T" + localTime;
    }

    private Object writeReplace() {
        return new p((byte) 5, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
