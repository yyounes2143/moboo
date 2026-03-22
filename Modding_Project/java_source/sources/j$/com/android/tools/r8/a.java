package j$.com.android.tools.r8;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.time.ZoneOffset;
import j$.time.c;
import j$.time.chrono.AbstractC2152a;
import j$.time.chrono.AbstractC2160i;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC2153b;
import j$.time.chrono.InterfaceC2156e;
import j$.time.chrono.m;
import j$.time.chrono.s;
import j$.time.format.C2162a;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.p;
import j$.time.temporal.q;
import j$.util.A;
import j$.util.C2174k;
import j$.util.C2175l;
import j$.util.C2176m;
import j$.util.C2177n;
import j$.util.C2180q;
import j$.util.C2311t;
import j$.util.F;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Z;
import j$.util.concurrent.l;
import j$.util.function.b;
import j$.util.function.d;
import j$.util.function.e;
import java.util.AbstractMap;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ long J(long j, int i) {
        long j2 = i;
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        if (numberOfLeadingZeros >= 64) {
            int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if ((j2 != Long.MIN_VALUE) | (i2 >= 0)) {
                long j3 = j * j2;
                if (i2 == 0 || j3 / j == j2) {
                    return j3;
                }
            }
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ long K(long j, long j2) {
        long j3 = j + j2;
        if (((j2 ^ j) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ AbstractMap.SimpleImmutableEntry L(String str, String str2) {
        return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(str), Objects.requireNonNull(str2));
    }

    public static /* synthetic */ boolean M(Unsafe unsafe, Object obj, long j, l lVar) {
        while (true) {
            Unsafe unsafe2 = unsafe;
            Object obj2 = obj;
            long j2 = j;
            l lVar2 = lVar;
            if (unsafe2.compareAndSwapObject(obj2, j2, (Object) null, lVar2)) {
                return true;
            }
            if (unsafe2.getObject(obj2, j2) != null) {
                return false;
            }
            unsafe = unsafe2;
            obj = obj2;
            j = j2;
            lVar = lVar2;
        }
    }

    public static /* synthetic */ long N(long j, long j2) {
        long j3 = j % j2;
        if (j3 == 0) {
            return 0L;
        }
        return (((j ^ j2) >> 63) | 1) > 0 ? j3 : j3 + j2;
    }

    public static /* synthetic */ long O(long j, long j2) {
        long j3 = j / j2;
        return (j - (j2 * j3) != 0 && (((j ^ j2) >> 63) | 1) < 0) ? j3 - 1 : j3;
    }

    public static /* synthetic */ long P(long j, long j2) {
        long j3 = j - j2;
        if (((j2 ^ j) >= 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static Optional E(j$.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        if (optional.isPresent()) {
            return Optional.of(optional.get());
        }
        return Optional.empty();
    }

    public static j$.util.Optional A(Optional optional) {
        if (optional == null) {
            return null;
        }
        if (!optional.isPresent()) {
            return j$.util.Optional.b;
        }
        return new j$.util.Optional(optional.get());
    }

    public static OptionalDouble F(C2174k c2174k) {
        if (c2174k == null) {
            return null;
        }
        boolean z = c2174k.f11850a;
        if (z) {
            if (z) {
                return OptionalDouble.of(c2174k.b);
            }
            throw new NoSuchElementException("No value present");
        }
        return OptionalDouble.empty();
    }

    public static C2174k B(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        if (!optionalDouble.isPresent()) {
            return C2174k.c;
        }
        return new C2174k(optionalDouble.getAsDouble());
    }

    public static OptionalLong H(C2176m c2176m) {
        if (c2176m == null) {
            return null;
        }
        boolean z = c2176m.f11852a;
        if (z) {
            if (z) {
                return OptionalLong.of(c2176m.b);
            }
            throw new NoSuchElementException("No value present");
        }
        return OptionalLong.empty();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.b] */
    public static b b(final DoubleConsumer doubleConsumer, final DoubleConsumer doubleConsumer2) {
        Objects.requireNonNull(doubleConsumer2);
        return new DoubleConsumer() { // from class: j$.util.function.b
            public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer3) {
                return j$.com.android.tools.r8.a.b(this, doubleConsumer3);
            }

            @Override // java.util.function.DoubleConsumer
            public final void accept(double d) {
                DoubleConsumer.this.accept(d);
                doubleConsumer2.accept(d);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.d] */
    public static d c(final IntConsumer intConsumer, final IntConsumer intConsumer2) {
        Objects.requireNonNull(intConsumer2);
        return new IntConsumer() { // from class: j$.util.function.d
            public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer3) {
                return j$.com.android.tools.r8.a.c(this, intConsumer3);
            }

            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                IntConsumer.this.accept(i);
                intConsumer2.accept(i);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.e] */
    public static e d(final LongConsumer longConsumer, final LongConsumer longConsumer2) {
        Objects.requireNonNull(longConsumer2);
        return new LongConsumer() { // from class: j$.util.function.e
            public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer3) {
                return j$.com.android.tools.r8.a.d(this, longConsumer3);
            }

            @Override // java.util.function.LongConsumer
            public final void accept(long j) {
                LongConsumer.this.accept(j);
                longConsumer2.accept(j);
            }
        };
    }

    public static C2176m D(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        if (!optionalLong.isPresent()) {
            return C2176m.c;
        }
        return new C2176m(optionalLong.getAsLong());
    }

    public static OptionalInt G(C2175l c2175l) {
        if (c2175l == null) {
            return null;
        }
        boolean z = c2175l.f11851a;
        if (z) {
            if (z) {
                return OptionalInt.of(c2175l.b);
            }
            throw new NoSuchElementException("No value present");
        }
        return OptionalInt.empty();
    }

    public static C2175l C(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        if (!optionalInt.isPresent()) {
            return C2175l.c;
        }
        return new C2175l(optionalInt.getAsInt());
    }

    public static String Q(Object obj, Object obj2) {
        String str;
        String obj3;
        String str2 = AbstractJsonLexerKt.NULL;
        if (obj == null || (str = obj.toString()) == null) {
            str = AbstractJsonLexerKt.NULL;
        }
        int length = str.length();
        if (obj2 != null && (obj3 = obj2.toString()) != null) {
            str2 = obj3;
        }
        int length2 = str2.length();
        char[] cArr = new char[length + length2 + 1];
        str.getChars(0, length, cArr, 0);
        cArr[length] = '=';
        str2.getChars(0, length2, cArr, length + 1);
        return new String(cArr);
    }

    public static boolean q(m mVar, p pVar) {
        return pVar instanceof j$.time.temporal.a ? pVar == j$.time.temporal.a.ERA : pVar != null && pVar.k(mVar);
    }

    public static j$.time.chrono.l I(j$.time.temporal.m mVar) {
        Objects.requireNonNull(mVar, "temporal");
        Object obj = (j$.time.chrono.l) mVar.n(q.b);
        s sVar = s.c;
        if (obj == null) {
            obj = Objects.requireNonNull(sVar, "defaultObj");
        }
        return (j$.time.chrono.l) obj;
    }

    public static int k(ChronoZonedDateTime chronoZonedDateTime, p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            int i = AbstractC2160i.f11730a[((j$.time.temporal.a) pVar).ordinal()];
            if (i != 1) {
                if (i != 2) {
                    return chronoZonedDateTime.x().i(pVar);
                }
                return chronoZonedDateTime.f().b;
            }
            throw new RuntimeException("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return q.a(chronoZonedDateTime, pVar);
    }

    public static int l(m mVar, j$.time.temporal.a aVar) {
        if (aVar == j$.time.temporal.a.ERA) {
            return mVar.getValue();
        }
        return q.a(mVar, aVar);
    }

    public static long n(m mVar, p pVar) {
        if (pVar == j$.time.temporal.a.ERA) {
            return mVar.getValue();
        }
        if (pVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(c.a("Unsupported field: ", pVar));
        }
        return pVar.i(mVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j$.time.chrono.l R(java.lang.String r4) {
        /*
            j$.util.concurrent.ConcurrentHashMap r0 = j$.time.chrono.AbstractC2152a.f11725a
            java.lang.String r0 = "id"
            j$.util.Objects.requireNonNull(r4, r0)
        L7:
            j$.util.concurrent.ConcurrentHashMap r0 = j$.time.chrono.AbstractC2152a.f11725a
            java.lang.Object r1 = r0.get(r4)
            j$.time.chrono.l r1 = (j$.time.chrono.l) r1
            if (r1 != 0) goto L19
            j$.util.concurrent.ConcurrentHashMap r1 = j$.time.chrono.AbstractC2152a.b
            java.lang.Object r1 = r1.get(r4)
            j$.time.chrono.l r1 = (j$.time.chrono.l) r1
        L19:
            if (r1 == 0) goto L1c
            return r1
        L1c:
            java.lang.String r1 = "ISO"
            java.lang.Object r0 = r0.get(r1)
            if (r0 != 0) goto L86
            j$.time.chrono.o r0 = j$.time.chrono.o.l
            java.lang.String r2 = r0.getId()
            j$.time.chrono.AbstractC2152a.h(r0, r2)
            j$.time.chrono.v r0 = j$.time.chrono.v.c
            java.lang.String r2 = r0.getId()
            j$.time.chrono.AbstractC2152a.h(r0, r2)
            j$.time.chrono.A r0 = j$.time.chrono.A.c
            java.lang.String r2 = r0.getId()
            j$.time.chrono.AbstractC2152a.h(r0, r2)
            j$.time.chrono.G r0 = j$.time.chrono.G.c
            java.lang.String r2 = r0.getId()
            j$.time.chrono.AbstractC2152a.h(r0, r2)
            r0 = 0
            j$.time.chrono.a[] r0 = new j$.time.chrono.AbstractC2152a[r0]     // Catch: java.lang.Throwable -> L7b
            java.util.List r0 = java.util.Arrays.asList(r0)     // Catch: java.lang.Throwable -> L7b
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L7b
        L53:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L71
            java.lang.Object r2 = r0.next()
            j$.time.chrono.a r2 = (j$.time.chrono.AbstractC2152a) r2
            java.lang.String r3 = r2.getId()
            boolean r3 = r3.equals(r1)
            if (r3 != 0) goto L53
            java.lang.String r3 = r2.getId()
            j$.time.chrono.AbstractC2152a.h(r2, r3)
            goto L53
        L71:
            j$.time.chrono.s r0 = j$.time.chrono.s.c
            java.lang.String r1 = r0.getId()
            j$.time.chrono.AbstractC2152a.h(r0, r1)
            goto L7
        L7b:
            r4 = move-exception
            java.util.ServiceConfigurationError r0 = new java.util.ServiceConfigurationError
            java.lang.String r1 = r4.getMessage()
            r0.<init>(r1, r4)
            throw r0
        L86:
            java.lang.Class<j$.time.chrono.l> r0 = j$.time.chrono.l.class
            java.util.ServiceLoader r0 = java.util.ServiceLoader.load(r0)
            java.util.Iterator r0 = r0.iterator()
        L90:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lb1
            java.lang.Object r1 = r0.next()
            j$.time.chrono.l r1 = (j$.time.chrono.l) r1
            java.lang.String r2 = r1.getId()
            boolean r2 = r4.equals(r2)
            if (r2 != 0) goto Lb0
            java.lang.String r2 = r1.q()
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto L90
        Lb0:
            return r1
        Lb1:
            j$.time.b r0 = new j$.time.b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Unknown chronology: "
            r1.<init>(r2)
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.com.android.tools.r8.a.R(java.lang.String):j$.time.chrono.l");
    }

    public static Object u(m mVar, C2162a c2162a) {
        if (c2162a == q.c) {
            return ChronoUnit.ERAS;
        }
        return q.c(mVar, c2162a);
    }

    public static Object s(InterfaceC2156e interfaceC2156e, C2162a c2162a) {
        if (c2162a == q.f11790a || c2162a == q.e || c2162a == q.d) {
            return null;
        }
        if (c2162a == q.g) {
            return interfaceC2156e.toLocalTime();
        }
        if (c2162a == q.b) {
            return interfaceC2156e.a();
        }
        if (c2162a == q.c) {
            return ChronoUnit.NANOS;
        }
        return c2162a.a(interfaceC2156e);
    }

    public static boolean p(InterfaceC2153b interfaceC2153b, p pVar) {
        if (pVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) pVar).r();
        }
        return pVar != null && pVar.k(interfaceC2153b);
    }

    public static long m(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    public static boolean o(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    public static long v(InterfaceC2156e interfaceC2156e, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, TypedValues.CycleType.S_WAVE_OFFSET);
        return ((interfaceC2156e.b().s() * 86400) + interfaceC2156e.toLocalTime().toSecondOfDay()) - zoneOffset.b;
    }

    public static Object t(ChronoZonedDateTime chronoZonedDateTime, C2162a c2162a) {
        if (c2162a == q.e || c2162a == q.f11790a) {
            return chronoZonedDateTime.p();
        }
        if (c2162a == q.d) {
            return chronoZonedDateTime.f();
        }
        if (c2162a == q.g) {
            return chronoZonedDateTime.toLocalTime();
        }
        if (c2162a == q.b) {
            return chronoZonedDateTime.a();
        }
        if (c2162a == q.c) {
            return ChronoUnit.NANOS;
        }
        return c2162a.a(chronoZonedDateTime);
    }

    public static int f(InterfaceC2156e interfaceC2156e, InterfaceC2156e interfaceC2156e2) {
        int B = interfaceC2156e.b().B(interfaceC2156e2.b());
        return (B == 0 && (B = interfaceC2156e.toLocalTime().compareTo(interfaceC2156e2.toLocalTime())) == 0) ? ((AbstractC2152a) interfaceC2156e.a()).getId().compareTo(interfaceC2156e2.a().getId()) : B;
    }

    public static Object r(InterfaceC2153b interfaceC2153b, C2162a c2162a) {
        if (c2162a == q.f11790a || c2162a == q.e || c2162a == q.d || c2162a == q.g) {
            return null;
        }
        if (c2162a == q.b) {
            return interfaceC2153b.a();
        }
        if (c2162a == q.c) {
            return ChronoUnit.DAYS;
        }
        return c2162a.a(interfaceC2153b);
    }

    public static j$.time.temporal.l a(InterfaceC2153b interfaceC2153b, j$.time.temporal.l lVar) {
        return lVar.c(interfaceC2153b.s(), j$.time.temporal.a.EPOCH_DAY);
    }

    public static long w(ChronoZonedDateTime chronoZonedDateTime) {
        return ((chronoZonedDateTime.b().s() * 86400) + chronoZonedDateTime.toLocalTime().toSecondOfDay()) - chronoZonedDateTime.f().b;
    }

    public static int g(ChronoZonedDateTime chronoZonedDateTime, ChronoZonedDateTime chronoZonedDateTime2) {
        int compare = Long.compare(chronoZonedDateTime.E(), chronoZonedDateTime2.E());
        return (compare == 0 && (compare = chronoZonedDateTime.toLocalTime().d - chronoZonedDateTime2.toLocalTime().d) == 0 && (compare = chronoZonedDateTime.x().v(chronoZonedDateTime2.x())) == 0 && (compare = chronoZonedDateTime.p().getId().compareTo(chronoZonedDateTime2.p().getId())) == 0) ? ((AbstractC2152a) chronoZonedDateTime.a()).getId().compareTo(chronoZonedDateTime2.a().getId()) : compare;
    }

    public static boolean y(Spliterator.OfInt ofInt, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            return ofInt.tryAdvance((IntConsumer) consumer);
        }
        if (Z.f11825a) {
            Z.a(ofInt.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return ofInt.tryAdvance((IntConsumer) new C2180q(consumer, 0));
    }

    public static void i(Spliterator.OfInt ofInt, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            ofInt.forEachRemaining((IntConsumer) consumer);
        } else if (Z.f11825a) {
            Z.a(ofInt.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            ofInt.forEachRemaining((IntConsumer) new C2180q(consumer, 0));
        }
    }

    public static int e(InterfaceC2153b interfaceC2153b, InterfaceC2153b interfaceC2153b2) {
        int compare = Long.compare(interfaceC2153b.s(), interfaceC2153b2.s());
        if (compare == 0) {
            return ((AbstractC2152a) interfaceC2153b.a()).getId().compareTo(interfaceC2153b2.a().getId());
        }
        return compare;
    }

    public static boolean z(F f, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            return f.tryAdvance((LongConsumer) consumer);
        }
        if (Z.f11825a) {
            Z.a(f.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return f.tryAdvance((LongConsumer) new C2311t(consumer, 0));
    }

    public static void j(F f, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            f.forEachRemaining((LongConsumer) consumer);
        } else if (Z.f11825a) {
            Z.a(f.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            f.forEachRemaining((LongConsumer) new C2311t(consumer, 0));
        }
    }

    public static boolean x(A a2, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            return a2.tryAdvance((DoubleConsumer) consumer);
        }
        if (Z.f11825a) {
            Z.a(a2.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return a2.tryAdvance((DoubleConsumer) new C2177n(consumer, 0));
    }

    public static void h(A a2, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            a2.forEachRemaining((DoubleConsumer) consumer);
        } else if (Z.f11825a) {
            Z.a(a2.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            a2.forEachRemaining((DoubleConsumer) new C2177n(consumer, 0));
        }
    }

    public Spliterator trySplit() {
        return null;
    }

    public boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        return false;
    }

    public void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
    }

    public long estimateSize() {
        return 0L;
    }

    public int characteristics() {
        return 16448;
    }
}
