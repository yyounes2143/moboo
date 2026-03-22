package j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.math.BigInteger;
/* loaded from: classes2.dex */
public final class Duration implements Comparable<Duration>, Serializable {
    public static final Duration ZERO = new Duration(0, 0);
    private static final long serialVersionUID = 3078945930695997490L;

    /* renamed from: a  reason: collision with root package name */
    public final long f11708a;
    public final int b;

    static {
        BigInteger.valueOf(1000000000L);
    }

    public static Duration ofSeconds(long j, long j2) {
        return h(j$.com.android.tools.r8.a.K(j, j$.com.android.tools.r8.a.O(j2, 1000000000L)), (int) j$.com.android.tools.r8.a.N(j2, 1000000000L));
    }

    public static Duration ofMillis(long j) {
        long j2 = j / 1000;
        int i = (int) (j % 1000);
        if (i < 0) {
            i += 1000;
            j2--;
        }
        return h(j2, i * 1000000);
    }

    public static Duration i(long j) {
        long j2 = j / 1000000000;
        int i = (int) (j % 1000000000);
        if (i < 0) {
            i = (int) (i + 1000000000);
            j2--;
        }
        return h(j2, i);
    }

    public static Duration h(long j, int i) {
        if ((i | j) == 0) {
            return ZERO;
        }
        return new Duration(j, i);
    }

    public Duration(long j, int i) {
        this.f11708a = j;
        this.b = i;
    }

    public long getSeconds() {
        return this.f11708a;
    }

    public int getNano() {
        return this.b;
    }

    public long toMillis() {
        long j = this.b;
        long j2 = this.f11708a;
        if (j2 < 0) {
            j2++;
            j -= 1000000000;
        }
        return j$.com.android.tools.r8.a.K(j$.com.android.tools.r8.a.J(j2, 1000), j / 1000000);
    }

    @Override // java.lang.Comparable
    public int compareTo(Duration duration) {
        int compare = Long.compare(this.f11708a, duration.f11708a);
        return compare != 0 ? compare : this.b - duration.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Duration) {
            Duration duration = (Duration) obj;
            if (this.f11708a == duration.f11708a && this.b == duration.b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j = this.f11708a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        if (this == ZERO) {
            return "PT0S";
        }
        long j = this.f11708a;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        int i2 = this.b;
        long j2 = (i >= 0 || i2 <= 0) ? j : 1 + j;
        long j3 = j2 / 3600;
        int i3 = (int) ((j2 % 3600) / 60);
        int i4 = (int) (j2 % 60);
        StringBuilder sb = new StringBuilder(24);
        sb.append("PT");
        if (j3 != 0) {
            sb.append(j3);
            sb.append('H');
        }
        if (i3 != 0) {
            sb.append(i3);
            sb.append('M');
        }
        if (i4 == 0 && i2 == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (j >= 0 || i2 <= 0) {
            sb.append(i4);
        } else if (i4 == 0) {
            sb.append("-0");
        } else {
            sb.append(i4);
        }
        if (i2 > 0) {
            int length = sb.length();
            if (j < 0) {
                sb.append(2000000000 - i2);
            } else {
                sb.append(i2 + 1000000000);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, '.');
        }
        sb.append('S');
        return sb.toString();
    }

    private Object writeReplace() {
        return new p((byte) 1, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
