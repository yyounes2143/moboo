package j$.time.temporal;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class t implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;

    /* renamed from: a  reason: collision with root package name */
    public final long f11791a;
    public final long b;
    public final long c;
    public final long d;

    public static t e(long j, long j2) {
        if (j > j2) {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
        return new t(j, j, j2, j2);
    }

    public static t f(long j, long j2, long j3) {
        if (j <= 1) {
            if (j2 <= j3) {
                if (1 > j3) {
                    throw new IllegalArgumentException("Minimum value must be less than maximum value");
                }
                return new t(j, 1L, j2, j3);
            }
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
    }

    public t(long j, long j2, long j3, long j4) {
        this.f11791a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
    }

    public final int a(long j, p pVar) {
        if (this.f11791a < -2147483648L || this.d > 2147483647L || !d(j)) {
            throw new RuntimeException(c(j, pVar));
        }
        return (int) j;
    }

    public final boolean d(long j) {
        return j >= this.f11791a && j <= this.d;
    }

    public final void b(long j, p pVar) {
        if (!d(j)) {
            throw new RuntimeException(c(j, pVar));
        }
    }

    public final String c(long j, p pVar) {
        if (pVar != null) {
            return "Invalid value for " + pVar + " (valid values " + this + "): " + j;
        }
        return "Invalid value (valid values " + this + "): " + j;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        long j = this.f11791a;
        long j2 = this.b;
        if (j > j2) {
            throw new InvalidObjectException("Smallest minimum value must be less than largest minimum value");
        }
        long j3 = this.c;
        long j4 = this.d;
        if (j3 > j4) {
            throw new InvalidObjectException("Smallest maximum value must be less than largest maximum value");
        }
        if (j2 > j4) {
            throw new InvalidObjectException("Minimum value must be less than maximum value");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            if (this.f11791a == tVar.f11791a && this.b == tVar.b && this.c == tVar.c && this.d == tVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.b;
        long j2 = this.f11791a + (j << 16) + (j >> 48);
        long j3 = this.c;
        long j4 = j2 + (j3 << 32) + (j3 >> 32);
        long j5 = this.d;
        long j6 = j4 + (j5 << 48) + (j5 >> 16);
        return (int) ((j6 >>> 32) ^ j6);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        long j = this.f11791a;
        sb.append(j);
        long j2 = this.b;
        if (j != j2) {
            sb.append('/');
            sb.append(j2);
        }
        sb.append(" - ");
        long j3 = this.c;
        sb.append(j3);
        long j4 = this.d;
        if (j3 != j4) {
            sb.append('/');
            sb.append(j4);
        }
        return sb.toString();
    }
}
