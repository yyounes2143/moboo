package j$.time;

import com.google.common.base.Ascii;
import j$.time.format.C2162a;
import j$.time.format.z;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class l implements j$.time.temporal.m, j$.time.temporal.n, Comparable, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = -939150713474957432L;

    /* renamed from: a  reason: collision with root package name */
    public final int f11772a;
    public final int b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        l lVar = (l) obj;
        int i = this.f11772a - lVar.f11772a;
        return i == 0 ? this.b - lVar.b : i;
    }

    static {
        j$.time.format.s sVar = new j$.time.format.s();
        sVar.d("--");
        sVar.k(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        sVar.c('-');
        sVar.k(j$.time.temporal.a.DAY_OF_MONTH, 2);
        sVar.p(Locale.getDefault(), z.SMART, null);
    }

    public l(int i, int i2) {
        this.f11772a = i;
        this.b = i2;
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.MONTH_OF_YEAR || pVar == j$.time.temporal.a.DAY_OF_MONTH : pVar != null && pVar.k(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return pVar.h();
        }
        if (pVar != j$.time.temporal.a.DAY_OF_MONTH) {
            return j$.time.temporal.q.d(this, pVar);
        }
        int i = this.f11772a;
        j I = j.I(i);
        I.getClass();
        int i2 = i.f11769a[I.ordinal()];
        return j$.time.temporal.t.f(1L, i2 != 1 ? (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) ? 30 : 31 : 28, j.I(i).H());
    }

    @Override // j$.time.temporal.m
    public final int i(j$.time.temporal.p pVar) {
        return l(pVar).a(r(pVar), pVar);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        int i;
        if (pVar instanceof j$.time.temporal.a) {
            int i2 = k.f11771a[((j$.time.temporal.a) pVar).ordinal()];
            if (i2 == 1) {
                i = this.b;
            } else if (i2 == 2) {
                i = this.f11772a;
            } else {
                throw new RuntimeException(c.a("Unsupported field: ", pVar));
            }
            return i;
        }
        return pVar.i(this);
    }

    @Override // j$.time.temporal.m
    public final Object n(C2162a c2162a) {
        if (c2162a == j$.time.temporal.q.b) {
            return j$.time.chrono.s.c;
        }
        return j$.time.temporal.q.c(this, c2162a);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        if (!j$.com.android.tools.r8.a.I(lVar).equals(j$.time.chrono.s.c)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        j$.time.temporal.l c2 = lVar.c(this.f11772a, j$.time.temporal.a.MONTH_OF_YEAR);
        j$.time.temporal.a aVar = j$.time.temporal.a.DAY_OF_MONTH;
        return c2.c(Math.min(c2.l(aVar).d, this.b), aVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (this.f11772a == lVar.f11772a && this.b == lVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f11772a << 6) + this.b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        int i = this.f11772a;
        sb.append(i < 10 ? "0" : "");
        sb.append(i);
        int i2 = this.b;
        sb.append(i2 < 10 ? "-0" : "-");
        sb.append(i2);
        return sb.toString();
    }

    private Object writeReplace() {
        return new p(Ascii.CR, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
