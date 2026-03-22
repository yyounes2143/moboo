package j$.time;

import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback;
import j$.time.chrono.InterfaceC2153b;
import j$.time.chrono.InterfaceC2156e;
import j$.time.format.C2162a;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class LocalDate implements j$.time.temporal.l, j$.time.temporal.n, InterfaceC2153b, Serializable {
    public static final LocalDate d = N(-999999999, 1, 1);
    public static final LocalDate e = N(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;

    /* renamed from: a  reason: collision with root package name */
    public final int f11710a;
    public final short b;
    public final short c;

    static {
        N(1970, 1, 1);
    }

    public static LocalDate N(int i, int i2, int i3) {
        j$.time.temporal.a.YEAR.u(i);
        j$.time.temporal.a.MONTH_OF_YEAR.u(i2);
        j$.time.temporal.a.DAY_OF_MONTH.u(i3);
        return G(i, i2, i3);
    }

    public static LocalDate O(long j) {
        long j2;
        j$.time.temporal.a.EPOCH_DAY.u(j);
        long j3 = 719468 + j;
        if (j3 < 0) {
            long j4 = ((j + 719469) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / ITPNativePlayerMessageCallback.INFO_LONG1_CLIP_EOS;
        long j7 = j5 + j2 + (i2 / 10);
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return new LocalDate(aVar.b.a(j7, aVar), ((i2 + 2) % 12) + 1, (i - (((i2 * 306) + 5) / 10)) + 1);
    }

    public static LocalDate H(j$.time.temporal.m mVar) {
        Objects.requireNonNull(mVar, "temporal");
        LocalDate localDate = (LocalDate) mVar.n(j$.time.temporal.q.f);
        if (localDate != null) {
            return localDate;
        }
        String name = mVar.getClass().getName();
        throw new RuntimeException("Unable to obtain LocalDate from TemporalAccessor: " + mVar + " of type " + name);
    }

    public static LocalDate G(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else if (j$.time.chrono.s.c.C(i)) {
                i4 = 29;
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new RuntimeException("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                throw new RuntimeException("Invalid date '" + j.I(i2).name() + " " + i3 + "'");
            }
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate S(int i, int i2, int i3) {
        if (i2 == 2) {
            i3 = Math.min(i3, j$.time.chrono.s.c.C((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new LocalDate(i, i2, i3);
    }

    public LocalDate(int i, int i2, int i3) {
        this.f11710a = i;
        this.b = (short) i2;
        this.c = (short) i3;
    }

    @Override // j$.time.temporal.m
    public final boolean e(j$.time.temporal.p pVar) {
        return j$.com.android.tools.r8.a.p(this, pVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.t l(j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
            if (aVar.r()) {
                int i = f.f11745a[aVar.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            return j$.time.temporal.t.e(1L, (j.I(this.b) != j.FEBRUARY || y()) ? 5L : 4L);
                        } else if (i != 4) {
                            return ((j$.time.temporal.a) pVar).b;
                        } else {
                            return this.f11710a <= 0 ? j$.time.temporal.t.e(1L, 1000000000L) : j$.time.temporal.t.e(1L, 999999999L);
                        }
                    }
                    return j$.time.temporal.t.e(1L, A());
                }
                return j$.time.temporal.t.e(1L, L());
            }
            throw new RuntimeException(c.a("Unsupported field: ", pVar));
        }
        return pVar.n(this);
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
            if (pVar == j$.time.temporal.a.EPOCH_DAY) {
                return s();
            }
            if (pVar != j$.time.temporal.a.PROLEPTIC_MONTH) {
                return I(pVar);
            }
            return ((this.f11710a * 12) + this.b) - 1;
        }
        return pVar.i(this);
    }

    public final int I(j$.time.temporal.p pVar) {
        int i;
        int i2 = f.f11745a[((j$.time.temporal.a) pVar).ordinal()];
        short s = this.c;
        int i3 = this.f11710a;
        switch (i2) {
            case 1:
                return s;
            case 2:
                return K();
            case 3:
                i = (s - 1) / 7;
                break;
            case 4:
                return i3 >= 1 ? i3 : 1 - i3;
            case 5:
                return J().getValue();
            case 6:
                i = (s - 1) % 7;
                break;
            case 7:
                return ((K() - 1) % 7) + 1;
            case 8:
                throw new RuntimeException("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((K() - 1) / 7) + 1;
            case 10:
                return this.b;
            case 11:
                throw new RuntimeException("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return i3;
            case 13:
                return i3 >= 1 ? 1 : 0;
            default:
                throw new RuntimeException(c.a("Unsupported field: ", pVar));
        }
        return i + 1;
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public final j$.time.chrono.l a() {
        return j$.time.chrono.s.c;
    }

    public final int K() {
        return (j.I(this.b).F(y()) + this.c) - 1;
    }

    public final d J() {
        return d.F(((int) j$.com.android.tools.r8.a.N(s() + 3, 7)) + 1);
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public final boolean y() {
        return j$.time.chrono.s.c.C(this.f11710a);
    }

    public final int L() {
        short s = this.b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : y() ? 29 : 28;
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public final int A() {
        return y() ? 366 : 365;
    }

    @Override // j$.time.temporal.l
    /* renamed from: U */
    public final LocalDate k(j$.time.temporal.n nVar) {
        if (nVar instanceof LocalDate) {
            return (LocalDate) nVar;
        }
        return (LocalDate) nVar.u(this);
    }

    @Override // j$.time.temporal.l
    /* renamed from: T */
    public final LocalDate c(long j, j$.time.temporal.p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) pVar;
            aVar.u(j);
            int i = f.f11745a[aVar.ordinal()];
            short s = this.c;
            short s2 = this.b;
            int i2 = this.f11710a;
            switch (i) {
                case 1:
                    int i3 = (int) j;
                    if (s != i3) {
                        return N(i2, s2, i3);
                    }
                    break;
                case 2:
                    return V((int) j);
                case 3:
                    return plusDays(j$.com.android.tools.r8.a.J(j - r(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH), 7));
                case 4:
                    if (i2 < 1) {
                        j = 1 - j;
                    }
                    return W((int) j);
                case 5:
                    return plusDays(j - J().getValue());
                case 6:
                    return plusDays(j - r(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
                case 7:
                    return plusDays(j - r(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
                case 8:
                    return O(j);
                case 9:
                    return plusDays(j$.com.android.tools.r8.a.J(j - r(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR), 7));
                case 10:
                    int i4 = (int) j;
                    if (s2 != i4) {
                        j$.time.temporal.a.MONTH_OF_YEAR.u(i4);
                        return S(i2, i4, s);
                    }
                    break;
                case 11:
                    return Q(j - (((i2 * 12) + s2) - 1));
                case 12:
                    return W((int) j);
                case 13:
                    if (r(j$.time.temporal.a.ERA) != j) {
                        return W(1 - i2);
                    }
                    break;
                default:
                    throw new RuntimeException(c.a("Unsupported field: ", pVar));
            }
            return this;
        }
        return (LocalDate) pVar.l(this, j);
    }

    public final LocalDate W(int i) {
        if (this.f11710a == i) {
            return this;
        }
        j$.time.temporal.a.YEAR.u(i);
        return S(i, this.b, this.c);
    }

    public final LocalDate V(int i) {
        if (K() == i) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int i2 = this.f11710a;
        long j = i2;
        aVar.u(j);
        j$.time.temporal.a.DAY_OF_YEAR.u(i);
        boolean C = j$.time.chrono.s.c.C(j);
        if (i == 366 && !C) {
            throw new RuntimeException("Invalid date 'DayOfYear 366' as '" + i2 + "' is not a leap year");
        }
        j I = j.I(((i - 1) / 31) + 1);
        if (i > (I.G(C) + I.F(C)) - 1) {
            I = j.f11770a[((((int) 1) + 12) + I.ordinal()) % 12];
        }
        return new LocalDate(i2, I.getValue(), (i - I.F(C)) + 1);
    }

    @Override // j$.time.temporal.l
    /* renamed from: P */
    public final LocalDate d(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof ChronoUnit) {
            switch (f.b[((ChronoUnit) rVar).ordinal()]) {
                case 1:
                    return plusDays(j);
                case 2:
                    return plusDays(j$.com.android.tools.r8.a.J(j, 7));
                case 3:
                    return Q(j);
                case 4:
                    return R(j);
                case 5:
                    return R(j$.com.android.tools.r8.a.J(j, 10));
                case 6:
                    return R(j$.com.android.tools.r8.a.J(j, 100));
                case 7:
                    return R(j$.com.android.tools.r8.a.J(j, 1000));
                case 8:
                    j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                    return c(j$.com.android.tools.r8.a.K(r(aVar), j), aVar);
                default:
                    throw new RuntimeException("Unsupported unit: " + rVar);
            }
        }
        return (LocalDate) rVar.h(this, j);
    }

    public final LocalDate R(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return S(aVar.b.a(this.f11710a + j, aVar), this.b, this.c);
    }

    public final LocalDate Q(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f11710a * 12) + (this.b - 1) + j;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        long j3 = 12;
        return S(aVar.b.a(j$.com.android.tools.r8.a.O(j2, j3), aVar), ((int) j$.com.android.tools.r8.a.N(j2, j3)) + 1, this.c);
    }

    public LocalDate plusDays(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.c + j;
        if (j2 > 0) {
            int i = (j2 > 28L ? 1 : (j2 == 28L ? 0 : -1));
            short s = this.b;
            int i2 = this.f11710a;
            if (i <= 0) {
                return new LocalDate(i2, s, (int) j2);
            }
            if (j2 <= 59) {
                long L = L();
                if (j2 <= L) {
                    return new LocalDate(i2, s, (int) j2);
                }
                if (s < 12) {
                    return new LocalDate(i2, s + 1, (int) (j2 - L));
                }
                int i3 = i2 + 1;
                j$.time.temporal.a.YEAR.u(i3);
                return new LocalDate(i3, 1, (int) (j2 - L));
            }
        }
        return O(j$.com.android.tools.r8.a.K(s(), j));
    }

    @Override // j$.time.chrono.InterfaceC2153b
    /* renamed from: M */
    public final LocalDate z(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    @Override // j$.time.temporal.m
    public final Object n(C2162a c2162a) {
        return c2162a == j$.time.temporal.q.f ? this : j$.com.android.tools.r8.a.r(this, c2162a);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.l u(j$.time.temporal.l lVar) {
        return j$.com.android.tools.r8.a.a(this, lVar);
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public final InterfaceC2156e t(LocalTime localTime) {
        return LocalDateTime.I(this, localTime);
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public final long s() {
        long j;
        long j2 = this.f11710a;
        long j3 = this.b;
        long j4 = 365 * j2;
        if (j2 >= 0) {
            j = ((j2 + 399) / 400) + (((3 + j2) / 4) - ((99 + j2) / 100)) + j4;
        } else {
            j = j4 - ((j2 / (-400)) + ((j2 / (-4)) - (j2 / (-100))));
        }
        long j5 = (((367 * j3) - 362) / 12) + j + (this.c - 1);
        if (j3 > 2) {
            j5 = !y() ? j5 - 2 : j5 - 1;
        }
        return j5 - 719528;
    }

    @Override // java.lang.Comparable
    /* renamed from: B */
    public final int compareTo(InterfaceC2153b interfaceC2153b) {
        if (interfaceC2153b instanceof LocalDate) {
            return F((LocalDate) interfaceC2153b);
        }
        return j$.com.android.tools.r8.a.e(this, interfaceC2153b);
    }

    public final int F(LocalDate localDate) {
        int i = this.f11710a - localDate.f11710a;
        if (i == 0) {
            int i2 = this.b - localDate.b;
            return i2 == 0 ? this.c - localDate.c : i2;
        }
        return i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && F((LocalDate) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public final int hashCode() {
        int i = this.f11710a;
        return (((i << 11) + (this.b << 6)) + this.c) ^ (i & (-2048));
    }

    @Override // j$.time.chrono.InterfaceC2153b
    public final String toString() {
        int i = this.f11710a;
        int abs = Math.abs(i);
        StringBuilder sb = new StringBuilder(10);
        if (abs >= 1000) {
            if (i > 9999) {
                sb.append('+');
            }
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        short s = this.b;
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        short s2 = this.c;
        sb.append(s2 < 10 ? "-0" : "-");
        sb.append((int) s2);
        return sb.toString();
    }

    private Object writeReplace() {
        return new p((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
