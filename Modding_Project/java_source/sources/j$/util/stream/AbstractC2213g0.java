package j$.util.stream;

import j$.time.format.C2162a;
import j$.util.C2173j;
import j$.util.C2174k;
import j$.util.C2176m;
import j$.util.C2311t;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.g0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2213g0 extends AbstractC2182a implements LongStream {
    @Override // j$.util.stream.LongStream
    public final C2176m findAny() {
        return (C2176m) C(E.d);
    }

    @Override // j$.util.stream.LongStream
    public final C2176m findFirst() {
        return (C2176m) C(E.c);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream sorted() {
        return new D2(this, X2.q | X2.o, 0);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        C(new L(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        C(new L(longConsumer, true));
    }

    public static j$.util.F U(Spliterator spliterator) {
        if (spliterator instanceof j$.util.F) {
            return (j$.util.F) spliterator;
        }
        if (K3.f11879a) {
            K3.a(AbstractC2182a.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Y2 H() {
        return Y2.LONG_VALUE;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final C0 E(AbstractC2182a abstractC2182a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC2273s1.B(abstractC2182a, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator Q(AbstractC2182a abstractC2182a, Supplier supplier, boolean z) {
        return new Z2(abstractC2182a, supplier, z);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final boolean G(Spliterator spliterator, InterfaceC2225i2 interfaceC2225i2) {
        LongConsumer c2311t;
        boolean o;
        j$.util.F U = U(spliterator);
        if (interfaceC2225i2 instanceof LongConsumer) {
            c2311t = (LongConsumer) interfaceC2225i2;
        } else if (K3.f11879a) {
            K3.a(AbstractC2182a.class, "using LongStream.adapt(Sink<Long> s)");
            throw null;
        } else {
            Objects.requireNonNull(interfaceC2225i2);
            c2311t = new C2311t(interfaceC2225i2, 1);
        }
        do {
            o = interfaceC2225i2.o();
            if (o) {
                break;
            }
        } while (U.tryAdvance(c2311t));
        return o;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2282u0 J(long j, IntFunction intFunction) {
        return AbstractC2273s1.L(j);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final Iterator<Long> iterator2() {
        j$.util.F spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.M(spliterator);
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final j$.util.F spliterator() {
        return U(super.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final DoubleStream asDoubleStream() {
        return new r(this, X2.n, 5);
    }

    @Override // j$.util.stream.LongStream
    public final Stream boxed() {
        return new C2262q(this, 0, new C2252o(28), 2);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream e() {
        Objects.requireNonNull(null);
        return new C2276t(this, X2.p | X2.n, 3);
    }

    @Override // j$.util.stream.LongStream
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new C2262q(this, X2.p | X2.n, longFunction, 2);
    }

    @Override // j$.util.stream.LongStream
    public final IntStream u() {
        Objects.requireNonNull(null);
        return new C2271s(this, X2.p | X2.n, 4);
    }

    @Override // j$.util.stream.LongStream
    public final DoubleStream k() {
        Objects.requireNonNull(null);
        return new r(this, X2.p | X2.n, 6);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream d(j$.util.function.g gVar) {
        Objects.requireNonNull(gVar);
        return new C2198d0(this, X2.p | X2.n | X2.t, gVar, 0);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream b() {
        Objects.requireNonNull(null);
        return new C2276t(this, X2.t, 5);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new C2198d0(this, longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC2279t2.g(this, 0L, j);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2279t2.g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.LongStream
    public final LongStream a() {
        int i = j4.f11916a;
        Objects.requireNonNull(null);
        return new D2(this, j4.f11916a, 1);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream c() {
        int i = j4.f11916a;
        Objects.requireNonNull(null);
        return new AbstractC2208f0(this, j4.b, 0);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream distinct() {
        return ((AbstractC2185a2) boxed()).distinct().mapToLong(new C2252o(25));
    }

    @Override // j$.util.stream.LongStream
    public final long sum() {
        return reduce(0L, new Z(3));
    }

    @Override // j$.util.stream.LongStream
    public final C2176m min() {
        return reduce(new C2252o(24));
    }

    @Override // j$.util.stream.LongStream
    public final C2176m max() {
        return reduce(new Z(2));
    }

    @Override // j$.util.stream.LongStream
    public final C2174k average() {
        long[] jArr = (long[]) collect(new C2252o(29), new Z(0), new Z(1));
        long j = jArr[0];
        return j > 0 ? new C2174k(jArr[1] / j) : C2174k.c;
    }

    @Override // j$.util.stream.LongStream
    public final long reduce(long j, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) C(new C2278t1(Y2.LONG_VALUE, longBinaryOperator, j))).longValue();
    }

    @Override // j$.util.stream.LongStream
    public final C2173j summaryStatistics() {
        return (C2173j) collect(new C2162a(14), new C2252o(23), new C2252o(26));
    }

    @Override // j$.util.stream.LongStream
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2247n c2247n = new C2247n(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(c2247n);
        return C(new C2298x1(Y2.LONG_VALUE, c2247n, objLongConsumer, supplier, 0));
    }

    @Override // j$.util.stream.LongStream
    public final boolean t() {
        return ((Boolean) C(AbstractC2273s1.O(EnumC2258p0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final boolean o() {
        return ((Boolean) C(AbstractC2273s1.O(EnumC2258p0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final C2176m reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (C2176m) C(new C2288v1(Y2.LONG_VALUE, longBinaryOperator, 0));
    }

    @Override // j$.util.stream.LongStream
    public final boolean m() {
        return ((Boolean) C(AbstractC2273s1.O(EnumC2258p0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final long[] toArray() {
        return (long[]) AbstractC2273s1.I((A0) D(new C2252o(27))).e();
    }

    @Override // j$.util.stream.LongStream
    public final long count() {
        return ((Long) C(new C2308z1(0))).longValue();
    }
}
