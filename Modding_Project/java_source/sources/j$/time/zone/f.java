package j$.time.zone;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public final class f implements Serializable {
    public static final long[] i = new long[0];
    public static final e[] j = new e[0];
    public static final LocalDateTime[] k = new LocalDateTime[0];
    public static final b[] l = new b[0];
    private static final long serialVersionUID = 3044319355680032515L;

    /* renamed from: a  reason: collision with root package name */
    public final long[] f11800a;
    public final ZoneOffset[] b;
    public final long[] c;
    public final LocalDateTime[] d;
    public final ZoneOffset[] e;
    public final e[] f;
    public final TimeZone g;
    public final transient ConcurrentHashMap h = new ConcurrentHashMap();

    /* JADX WARN: Removed duplicated region for block: B:20:0x0043 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(j$.time.LocalDateTime r5, j$.time.zone.b r6) {
        /*
            j$.time.LocalDateTime r0 = r6.b
            j$.time.ZoneOffset r1 = r6.d
            int r2 = r1.b
            j$.time.ZoneOffset r3 = r6.c
            int r4 = r3.b
            if (r2 <= r4) goto Le
            r2 = 1
            goto Lf
        Le:
            r2 = 0
        Lf:
            j$.time.LocalDateTime r4 = r6.b
            if (r2 == 0) goto L2b
            boolean r0 = r5.H(r0)
            if (r0 == 0) goto L1a
            goto L42
        L1a:
            int r0 = r1.b
            int r2 = r3.b
            int r0 = r0 - r2
            long r2 = (long) r0
            j$.time.LocalDateTime r0 = r4.L(r2)
            boolean r5 = r5.H(r0)
            if (r5 == 0) goto L31
            goto L43
        L2b:
            boolean r0 = r5.H(r0)
            if (r0 != 0) goto L32
        L31:
            return r1
        L32:
            int r0 = r1.b
            int r1 = r3.b
            int r0 = r0 - r1
            long r0 = (long) r0
            j$.time.LocalDateTime r0 = r4.L(r0)
            boolean r5 = r5.H(r0)
            if (r5 == 0) goto L43
        L42:
            return r3
        L43:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.zone.f.a(j$.time.LocalDateTime, j$.time.zone.b):java.lang.Object");
    }

    public f(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, e[] eVarArr) {
        int i2;
        int i3;
        this.f11800a = jArr;
        this.b = zoneOffsetArr;
        this.c = jArr2;
        this.e = zoneOffsetArr2;
        this.f = eVarArr;
        if (jArr2.length == 0) {
            this.d = k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i4 = 0;
            while (i4 < jArr2.length) {
                ZoneOffset zoneOffset = zoneOffsetArr2[i4];
                int i5 = i4 + 1;
                ZoneOffset zoneOffset2 = zoneOffsetArr2[i5];
                LocalDateTime J = LocalDateTime.J(jArr2[i4], 0, zoneOffset);
                if (zoneOffset2.b > zoneOffset.b) {
                    arrayList.add(J);
                    arrayList.add(J.L(zoneOffset2.b - i3));
                } else {
                    arrayList.add(J.L(i2 - i3));
                    arrayList.add(J);
                }
                i4 = i5;
            }
            this.d = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
        }
        this.g = null;
    }

    public f(ZoneOffset zoneOffset) {
        this.b = r0;
        ZoneOffset[] zoneOffsetArr = {zoneOffset};
        long[] jArr = i;
        this.f11800a = jArr;
        this.c = jArr;
        this.d = k;
        this.e = zoneOffsetArr;
        this.f = j;
        this.g = null;
    }

    public f(TimeZone timeZone) {
        this.b = r0;
        ZoneOffset[] zoneOffsetArr = {h(timeZone.getRawOffset())};
        long[] jArr = i;
        this.f11800a = jArr;
        this.c = jArr;
        this.d = k;
        this.e = zoneOffsetArr;
        this.f = j;
        this.g = timeZone;
    }

    public static ZoneOffset h(int i2) {
        return ZoneOffset.M(i2 / 1000);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a(this.g != null ? (byte) 100 : (byte) 1, this);
    }

    public static int c(long j2, ZoneOffset zoneOffset) {
        return LocalDate.O(j$.com.android.tools.r8.a.O(j2 + zoneOffset.b, 86400)).f11710a;
    }

    public final ZoneOffset d(Instant instant) {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            return h(timeZone.getOffset(instant.toEpochMilli()));
        }
        long[] jArr = this.c;
        if (jArr.length == 0) {
            return this.b[0];
        }
        long epochSecond = instant.getEpochSecond();
        int length = this.f.length;
        ZoneOffset[] zoneOffsetArr = this.e;
        if (length > 0 && epochSecond > jArr[jArr.length - 1]) {
            b[] b = b(c(epochSecond, zoneOffsetArr[zoneOffsetArr.length - 1]));
            b bVar = null;
            for (int i2 = 0; i2 < b.length; i2++) {
                bVar = b[i2];
                if (epochSecond < bVar.f11796a) {
                    return bVar.c;
                }
            }
            return bVar.d;
        }
        int binarySearch = Arrays.binarySearch(jArr, epochSecond);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        }
        return zoneOffsetArr[binarySearch + 1];
    }

    public final List f(LocalDateTime localDateTime) {
        Object e = e(localDateTime);
        if (e instanceof b) {
            b bVar = (b) e;
            ZoneOffset zoneOffset = bVar.d;
            int i2 = zoneOffset.b;
            ZoneOffset zoneOffset2 = bVar.c;
            if (i2 > zoneOffset2.b) {
                return Collections.EMPTY_LIST;
            }
            Object[] objArr = {zoneOffset2, zoneOffset};
            ArrayList arrayList = new ArrayList(2);
            for (int i3 = 0; i3 < 2; i3++) {
                arrayList.add(Objects.requireNonNull(objArr[i3]));
            }
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.singletonList((ZoneOffset) e);
    }

    public final Object e(LocalDateTime localDateTime) {
        int i2;
        Object obj = null;
        ZoneOffset[] zoneOffsetArr = this.b;
        int i3 = 0;
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            b[] b = b(localDateTime.f11711a.f11710a);
            if (b.length == 0) {
                return h(timeZone.getOffset(j$.com.android.tools.r8.a.v(localDateTime, zoneOffsetArr[0]) * 1000));
            }
            int length = b.length;
            while (i3 < length) {
                b bVar = b[i3];
                Object a2 = a(localDateTime, bVar);
                if ((a2 instanceof b) || a2.equals(bVar.c)) {
                    return a2;
                }
                i3++;
                obj = a2;
            }
            return obj;
        } else if (this.c.length == 0) {
            return zoneOffsetArr[0];
        } else {
            int length2 = this.f.length;
            LocalDateTime[] localDateTimeArr = this.d;
            if (length2 > 0) {
                LocalDateTime localDateTime2 = localDateTimeArr[localDateTimeArr.length - 1];
                localDateTime.getClass();
                LocalDate localDate = localDateTime.f11711a;
                if (localDateTime2 == null ? localDate.s() > localDateTime2.f11711a.s() || (i2 == 0 && localDateTime.b.Q() > localDateTime2.b.Q()) : localDateTime.F(localDateTime2) > 0) {
                    b[] b2 = b(localDate.f11710a);
                    int length3 = b2.length;
                    while (i3 < length3) {
                        b bVar2 = b2[i3];
                        Object a3 = a(localDateTime, bVar2);
                        if ((a3 instanceof b) || a3.equals(bVar2.c)) {
                            return a3;
                        }
                        i3++;
                        obj = a3;
                    }
                    return obj;
                }
            }
            int binarySearch = Arrays.binarySearch(localDateTimeArr, localDateTime);
            ZoneOffset[] zoneOffsetArr2 = this.e;
            if (binarySearch == -1) {
                return zoneOffsetArr2[0];
            }
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            } else if (binarySearch < localDateTimeArr.length - 1) {
                int i4 = binarySearch + 1;
                if (localDateTimeArr[binarySearch].equals(localDateTimeArr[i4])) {
                    binarySearch = i4;
                }
            }
            if ((binarySearch & 1) == 0) {
                LocalDateTime localDateTime3 = localDateTimeArr[binarySearch];
                LocalDateTime localDateTime4 = localDateTimeArr[binarySearch + 1];
                int i5 = binarySearch / 2;
                ZoneOffset zoneOffset = zoneOffsetArr2[i5];
                ZoneOffset zoneOffset2 = zoneOffsetArr2[i5 + 1];
                if (zoneOffset2.b > zoneOffset.b) {
                    return new b(localDateTime3, zoneOffset, zoneOffset2);
                }
                return new b(localDateTime4, zoneOffset, zoneOffset2);
            }
            return zoneOffsetArr2[(binarySearch / 2) + 1];
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0197  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.zone.b[] b(int r24) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.zone.f.b(int):j$.time.zone.b[]");
    }

    public final boolean g(Instant instant) {
        ZoneOffset zoneOffset;
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            zoneOffset = h(timeZone.getRawOffset());
        } else {
            int length = this.c.length;
            ZoneOffset[] zoneOffsetArr = this.b;
            if (length == 0) {
                zoneOffset = zoneOffsetArr[0];
            } else {
                int binarySearch = Arrays.binarySearch(this.f11800a, instant.getEpochSecond());
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 2;
                }
                zoneOffset = zoneOffsetArr[binarySearch + 1];
            }
        }
        return !zoneOffset.equals(d(instant));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (Objects.equals(this.g, fVar.g) && Arrays.equals(this.f11800a, fVar.f11800a) && Arrays.equals(this.b, fVar.b) && Arrays.equals(this.c, fVar.c) && Arrays.equals(this.e, fVar.e) && Arrays.equals(this.f, fVar.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Objects.hashCode(this.g) ^ Arrays.hashCode(this.f11800a)) ^ Arrays.hashCode(this.b)) ^ Arrays.hashCode(this.c)) ^ Arrays.hashCode(this.e)) ^ Arrays.hashCode(this.f);
    }

    public final String toString() {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            String id = timeZone.getID();
            return "ZoneRules[timeZone=" + id + "]";
        }
        ZoneOffset[] zoneOffsetArr = this.b;
        ZoneOffset zoneOffset = zoneOffsetArr[zoneOffsetArr.length - 1];
        return "ZoneRules[currentStandardOffset=" + zoneOffset + "]";
    }
}
