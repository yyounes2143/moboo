package j$.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.time.format.C2162a;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class n implements j$.time.temporal.l, j$.time.temporal.n, Comparable, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 7264499704384272492L;

    /* renamed from: a  reason: collision with root package name */
    public final LocalTime f11774a;
    public final ZoneOffset b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        n nVar = (n) obj;
        ZoneOffset zoneOffset = nVar.b;
        ZoneOffset zoneOffset2 = this.b;
        boolean equals = zoneOffset2.equals(zoneOffset);
        LocalTime localTime = nVar.f11774a;
        LocalTime localTime2 = this.f11774a;
        if (equals) {
            return localTime2.compareTo(localTime);
        }
        int compare = Long.compare(localTime2.Q() - (zoneOffset2.b * 1000000000), localTime.Q() - (nVar.b.b * 1000000000));
        return compare == 0 ? localTime2.compareTo(localTime) : compare;
    }

    static {
        LocalTime localTime = LocalTime.e;
        ZoneOffset zoneOffset = ZoneOffset.g;
        localTime.getClass();
        new n(localTime, zoneOffset);
        LocalTime localTime2 = LocalTime.f;
        ZoneOffset zoneOffset2 = ZoneOffset.f;
        localTime2.getClass();
        new n(localTime2, zoneOffset2);
    }

    public n(LocalTime localTime, ZoneOffset zoneOffset) {
        this.f11774a = (LocalTime) Objects.requireNonNull(localTime, "time");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
    }

    public final n G(LocalTime localTime, ZoneOffset zoneOffset) {
        return (this.f11774a == localTime && this.b.equals(zoneOffset)) ? this : new n(localTime, zoneOffset);
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) pVar).F() || pVar == j$.time.temporal.a.OFFSET_SECONDS : pVar != null && pVar.k(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            if (pVar != j$.time.temporal.a.OFFSET_SECONDS) {
                LocalTime localTime = this.f11774a;
                localTime.getClass();
                return j$.time.temporal.q.d(localTime, pVar);
            }
            return ((j$.time.temporal.a) pVar).b;
        }
        return pVar.n(this);
    }

    @Override // j$.time.temporal.m
    public final int i(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            if (pVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return this.b.b;
            }
            return this.f11774a.r(pVar);
        }
        return pVar.i(this);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        localDate.getClass();
        return (n) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = j$.time.temporal.a.OFFSET_SECONDS;
            LocalTime localTime = this.f11774a;
            if (pVar == aVar) {
                j$.time.temporal.a aVar2 = (j$.time.temporal.a) pVar;
                return G(localTime, ZoneOffset.M(aVar2.b.a(j, aVar2)));
            }
            return G(localTime.c(j, pVar), this.b);
        }
        return (n) pVar.l(this, j);
    }

    @Override // j$.time.temporal.l
    /* renamed from: F */
    public final n d(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof ChronoUnit) {
            return G(this.f11774a.d(j, rVar), this.b);
        }
        return (n) rVar.h(this, j);
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
        if (((c2162a == j$.time.temporal.q.f11790a) || (c2162a == j$.time.temporal.q.b)) || c2162a == j$.time.temporal.q.f) {
            return null;
        }
        if (c2162a == j$.time.temporal.q.g) {
            return this.f11774a;
        }
        if (c2162a == j$.time.temporal.q.c) {
            return ChronoUnit.NANOS;
        }
        return c2162a.a(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(this.f11774a.Q(), j$.time.temporal.a.NANO_OF_DAY).c(this.b.b, j$.time.temporal.a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (this.f11774a.equals(nVar.f11774a) && this.b.equals(nVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f11774a.hashCode() ^ this.b.b;
    }

    public final String toString() {
        String localTime = this.f11774a.toString();
        String str = this.b.c;
        return localTime + str;
    }

    private Object writeReplace() {
        return new p((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
