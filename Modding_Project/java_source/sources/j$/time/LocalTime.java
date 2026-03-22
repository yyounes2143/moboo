package j$.time;

import com.google.common.base.Ascii;
import com.vungle.ads.internal.signals.SignalManager;
import j$.time.format.C2162a;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.time.InstantKt;
/* loaded from: classes2.dex */
public final class LocalTime implements j$.time.temporal.l, j$.time.temporal.n, Comparable<LocalTime>, Serializable {
    public static final LocalTime e;
    public static final LocalTime f;
    public static final LocalTime g;
    public static final LocalTime[] h = new LocalTime[24];
    private static final long serialVersionUID = 6414437269572265201L;

    /* renamed from: a  reason: collision with root package name */
    public final byte f11712a;
    public final byte b;
    public final byte c;
    public final int d;

    static {
        int i = 0;
        while (true) {
            LocalTime[] localTimeArr = h;
            if (i < localTimeArr.length) {
                localTimeArr[i] = new LocalTime(i, 0, 0, 0);
                i++;
            } else {
                LocalTime localTime = localTimeArr[0];
                g = localTime;
                LocalTime localTime2 = localTimeArr[12];
                e = localTime;
                f = new LocalTime(23, 59, 59, 999999999);
                return;
            }
        }
    }

    public static LocalTime ofSecondOfDay(long j) {
        j$.time.temporal.a.SECOND_OF_DAY.u(j);
        int i = (int) (j / 3600);
        long j2 = j - (i * 3600);
        int i2 = (int) (j2 / 60);
        return G(i, i2, (int) (j2 - (i2 * 60)), 0);
    }

    public static LocalTime J(long j) {
        j$.time.temporal.a.NANO_OF_DAY.u(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return G(i, i2, i3, (int) (j3 - (i3 * 1000000000)));
    }

    public static LocalTime H(j$.time.temporal.m mVar) {
        Objects.requireNonNull(mVar, "temporal");
        LocalTime localTime = (LocalTime) mVar.n(j$.time.temporal.q.g);
        if (localTime != null) {
            return localTime;
        }
        String name = mVar.getClass().getName();
        throw new RuntimeException("Unable to obtain LocalTime from TemporalAccessor: " + mVar + " of type " + name);
    }

    public static LocalTime G(int i, int i2, int i3, int i4) {
        if ((i2 | i3 | i4) == 0) {
            return h[i];
        }
        return new LocalTime(i, i2, i3, i4);
    }

    public LocalTime(int i, int i2, int i3, int i4) {
        this.f11712a = (byte) i;
        this.b = (byte) i2;
        this.c = (byte) i3;
        this.d = i4;
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) pVar).F();
        }
        return pVar != null && pVar.k(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.d(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final int i(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            return I(pVar);
        }
        return j$.time.temporal.q.a(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final long r(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            if (pVar == j$.time.temporal.a.NANO_OF_DAY) {
                return Q();
            }
            if (pVar == j$.time.temporal.a.MICRO_OF_DAY) {
                return Q() / 1000;
            }
            return I(pVar);
        }
        return pVar.i(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int I(j$.time.temporal.p pVar) {
        int i = h.f11768a[((j$.time.temporal.a) pVar).ordinal()];
        byte b = this.b;
        int i2 = this.d;
        byte b2 = this.f11712a;
        switch (i) {
            case 1:
                return i2;
            case 2:
                throw new RuntimeException("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return i2 / 1000;
            case 4:
                throw new RuntimeException("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return i2 / 1000000;
            case 6:
                return (int) (Q() / 1000000);
            case 7:
                return this.c;
            case 8:
                return toSecondOfDay();
            case 9:
                return b;
            case 10:
                return (b2 * 60) + b;
            case 11:
                return b2 % Ascii.FF;
            case 12:
                int i3 = b2 % Ascii.FF;
                if (i3 % 12 == 0) {
                    return 12;
                }
                return i3;
            case 13:
                break;
            case 14:
                if (b2 == 0) {
                    return 24;
                }
                break;
            case 15:
                return b2 / Ascii.FF;
            default:
                throw new RuntimeException(c.a("Unsupported field: ", pVar));
        }
        return b2;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l k(LocalDate localDate) {
        localDate.getClass();
        return (LocalTime) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: R */
    public final LocalTime c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
            aVar.u(j);
            int i = h.f11768a[aVar.ordinal()];
            byte b = this.b;
            byte b2 = this.c;
            int i2 = this.d;
            byte b3 = this.f11712a;
            switch (i) {
                case 1:
                    return S((int) j);
                case 2:
                    return J(j);
                case 3:
                    return S(((int) j) * 1000);
                case 4:
                    return J(j * 1000);
                case 5:
                    return S(((int) j) * 1000000);
                case 6:
                    return J(j * 1000000);
                case 7:
                    int i3 = (int) j;
                    if (b2 != i3) {
                        j$.time.temporal.a.SECOND_OF_MINUTE.u(i3);
                        return G(b3, b, i3, i2);
                    }
                    break;
                case 8:
                    return O(j - toSecondOfDay());
                case 9:
                    int i4 = (int) j;
                    if (b != i4) {
                        j$.time.temporal.a.MINUTE_OF_HOUR.u(i4);
                        return G(b3, i4, b2, i2);
                    }
                    break;
                case 10:
                    return M(j - ((b3 * 60) + b));
                case 11:
                    return L(j - (b3 % Ascii.FF));
                case 12:
                    if (j == 12) {
                        j = 0;
                    }
                    return L(j - (b3 % Ascii.FF));
                case 13:
                    int i5 = (int) j;
                    if (b3 != i5) {
                        j$.time.temporal.a.HOUR_OF_DAY.u(i5);
                        return G(i5, b, b2, i2);
                    }
                    break;
                case 14:
                    if (j == 24) {
                        j = 0;
                    }
                    int i6 = (int) j;
                    if (b3 != i6) {
                        j$.time.temporal.a.HOUR_OF_DAY.u(i6);
                        return G(i6, b, b2, i2);
                    }
                    break;
                case 15:
                    return L((j - (b3 / Ascii.FF)) * 12);
                default:
                    throw new RuntimeException(c.a("Unsupported field: ", pVar));
            }
            return this;
        }
        return (LocalTime) pVar.l(this, j);
    }

    public final LocalTime S(int i) {
        if (this.d == i) {
            return this;
        }
        j$.time.temporal.a.NANO_OF_SECOND.u(i);
        return G(this.f11712a, this.b, this.c, i);
    }

    @Override // j$.time.temporal.l
    /* renamed from: K */
    public final LocalTime d(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof ChronoUnit) {
            switch (h.b[((ChronoUnit) rVar).ordinal()]) {
                case 1:
                    return N(j);
                case 2:
                    return N((j % 86400000000L) * 1000);
                case 3:
                    return N((j % SignalManager.TWENTY_FOUR_HOURS_MILLIS) * 1000000);
                case 4:
                    return O(j);
                case 5:
                    return M(j);
                case 6:
                    return L(j);
                case 7:
                    return L((j % 2) * 12);
                default:
                    throw new RuntimeException("Unsupported unit: " + rVar);
            }
        }
        return (LocalTime) rVar.h(this, j);
    }

    public final LocalTime L(long j) {
        if (j == 0) {
            return this;
        }
        return G(((((int) (j % 24)) + this.f11712a) + 24) % 24, this.b, this.c, this.d);
    }

    public final LocalTime M(long j) {
        if (j != 0) {
            int i = (this.f11712a * 60) + this.b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return G(i2 / 60, i2 % 60, this.c, this.d);
            }
        }
        return this;
    }

    public final LocalTime O(long j) {
        if (j != 0) {
            int i = (this.b * 60) + (this.f11712a * Ascii.DLE) + this.c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return G(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.d);
            }
        }
        return this;
    }

    public final LocalTime N(long j) {
        if (j != 0) {
            long Q = Q();
            long j2 = (((j % 86400000000000L) + Q) + 86400000000000L) % 86400000000000L;
            if (Q != j2) {
                return G((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
            }
        }
        return this;
    }

    @Override // j$.time.temporal.l
    public final j$.time.temporal.l h(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    @Override // j$.time.temporal.m
    public final Object n(C2162a c2162a) {
        if (c2162a == j$.time.temporal.q.b || c2162a == j$.time.temporal.q.f11790a || c2162a == j$.time.temporal.q.e || c2162a == j$.time.temporal.q.d) {
            return null;
        }
        if (c2162a == j$.time.temporal.q.g) {
            return this;
        }
        if (c2162a == j$.time.temporal.q.f) {
            return null;
        }
        if (c2162a == j$.time.temporal.q.c) {
            return ChronoUnit.NANOS;
        }
        return c2162a.a(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return lVar.c(Q(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.a(this);
    }

    public int toSecondOfDay() {
        return (this.b * 60) + (this.f11712a * Ascii.DLE) + this.c;
    }

    public final long Q() {
        return (this.c * 1000000000) + (this.b * 60000000000L) + (this.f11712a * 3600000000000L) + this.d;
    }

    @Override // java.lang.Comparable
    /* renamed from: F */
    public final int compareTo(LocalTime localTime) {
        int compare = Integer.compare(this.f11712a, localTime.f11712a);
        return (compare == 0 && (compare = Integer.compare(this.b, localTime.b)) == 0 && (compare = Integer.compare(this.c, localTime.c)) == 0) ? Integer.compare(this.d, localTime.d) : compare;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalTime) {
            LocalTime localTime = (LocalTime) obj;
            if (this.f11712a == localTime.f11712a && this.b == localTime.b && this.c == localTime.c && this.d == localTime.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long Q = Q();
        return (int) (Q ^ (Q >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b = this.f11712a;
        sb.append(b < 10 ? "0" : "");
        sb.append((int) b);
        byte b2 = this.b;
        sb.append(b2 < 10 ? ":0" : ":");
        sb.append((int) b2);
        byte b3 = this.c;
        int i = this.d;
        if (b3 > 0 || i > 0) {
            sb.append(b3 < 10 ? ":0" : ":");
            sb.append((int) b3);
            if (i > 0) {
                sb.append('.');
                if (i % 1000000 == 0) {
                    sb.append(Integer.toString((i / 1000000) + 1000).substring(1));
                } else if (i % 1000 == 0) {
                    sb.append(Integer.toString((i / 1000) + 1000000).substring(1));
                } else {
                    sb.append(Integer.toString(i + InstantKt.NANOS_PER_SECOND).substring(1));
                }
            }
        }
        return sb.toString();
    }

    private Object writeReplace() {
        return new p((byte) 4, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final void T(DataOutput dataOutput) {
        byte b = this.c;
        byte b2 = this.f11712a;
        byte b3 = this.b;
        int i = this.d;
        if (i != 0) {
            dataOutput.writeByte(b2);
            dataOutput.writeByte(b3);
            dataOutput.writeByte(b);
            dataOutput.writeInt(i);
        } else if (b != 0) {
            dataOutput.writeByte(b2);
            dataOutput.writeByte(b3);
            dataOutput.writeByte(~b);
        } else if (b3 == 0) {
            dataOutput.writeByte(~b2);
        } else {
            dataOutput.writeByte(b2);
            dataOutput.writeByte(~b3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v4, types: [int] */
    public static LocalTime P(ObjectInput objectInput) {
        int readInt;
        int i;
        int readByte = objectInput.readByte();
        byte b = 0;
        if (readByte < 0) {
            readByte = ~readByte;
            i = 0;
            readInt = 0;
        } else {
            byte readByte2 = objectInput.readByte();
            if (readByte2 < 0) {
                ?? r7 = ~readByte2;
                readInt = 0;
                b = r7;
                i = 0;
            } else {
                byte readByte3 = objectInput.readByte();
                if (readByte3 < 0) {
                    i = ~readByte3;
                    readInt = 0;
                    b = readByte2;
                } else {
                    readInt = objectInput.readInt();
                    b = readByte2;
                    i = readByte3;
                }
            }
        }
        j$.time.temporal.a.HOUR_OF_DAY.u(readByte);
        j$.time.temporal.a.MINUTE_OF_HOUR.u(b);
        j$.time.temporal.a.SECOND_OF_MINUTE.u(i);
        j$.time.temporal.a.NANO_OF_SECOND.u(readInt);
        return G(readByte, b, i, readInt);
    }
}
