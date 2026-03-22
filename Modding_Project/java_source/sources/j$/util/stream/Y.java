package j$.util.stream;

import j$.time.format.C2162a;
import j$.util.C2171h;
import j$.util.C2174k;
import j$.util.C2175l;
import j$.util.C2180q;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public abstract class Y extends AbstractC2182a implements IntStream {
    @Override // j$.util.stream.IntStream
    public final C2175l findAny() {
        return (C2175l) C(D.d);
    }

    @Override // j$.util.stream.IntStream
    public final C2175l findFirst() {
        return (C2175l) C(D.c);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.IntStream, j$.util.stream.a] */
    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new AbstractC2182a(this, X2.q | X2.o);
    }

    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        C(new K(intConsumer, false));
    }

    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        C(new K(intConsumer, true));
    }

    public static Spliterator.OfInt U(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.OfInt) {
            return (Spliterator.OfInt) spliterator;
        }
        if (K3.f11879a) {
            K3.a(AbstractC2182a.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Y2 H() {
        return Y2.INT_VALUE;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final C0 E(AbstractC2182a abstractC2182a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC2273s1.A(abstractC2182a, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator Q(AbstractC2182a abstractC2182a, Supplier supplier, boolean z) {
        return new Z2(abstractC2182a, supplier, z);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final boolean G(Spliterator spliterator, InterfaceC2225i2 interfaceC2225i2) {
        IntConsumer c2180q;
        boolean o;
        Spliterator.OfInt U = U(spliterator);
        if (interfaceC2225i2 instanceof IntConsumer) {
            c2180q = (IntConsumer) interfaceC2225i2;
        } else if (K3.f11879a) {
            K3.a(AbstractC2182a.class, "using IntStream.adapt(Sink<Integer> s)");
            throw null;
        } else {
            Objects.requireNonNull(interfaceC2225i2);
            c2180q = new C2180q(interfaceC2225i2, 1);
        }
        do {
            o = interfaceC2225i2.o();
            if (o) {
                break;
            }
        } while (U.tryAdvance(c2180q));
        return o;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2282u0 J(long j, IntFunction intFunction) {
        return AbstractC2273s1.K(j);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final Iterator<Integer> iterator2() {
        Spliterator.OfInt spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.L(spliterator);
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final Spliterator.OfInt spliterator() {
        return U(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final LongStream asLongStream() {
        return new C2276t(this, 0, 1);
    }

    @Override // j$.util.stream.IntStream
    public final DoubleStream asDoubleStream() {
        return new r(this, 0, 3);
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return new C2262q(this, 0, new C2252o(14), 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream e() {
        Objects.requireNonNull(null);
        return new C2271s(this, X2.p | X2.n, 1);
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C2262q(this, X2.p | X2.n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    public final LongStream l() {
        Objects.requireNonNull(null);
        return new C2276t(this, X2.p | X2.n, 2);
    }

    @Override // j$.util.stream.IntStream
    public final DoubleStream f() {
        Objects.requireNonNull(null);
        return new r(this, X2.p | X2.n, 4);
    }

    @Override // j$.util.stream.IntStream
    public final int reduce(int i, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) C(new I1(Y2.INT_VALUE, intBinaryOperator, i))).intValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream v(I i) {
        Objects.requireNonNull(i);
        return new S(this, X2.p | X2.n | X2.t, i, 1);
    }

    @Override // j$.util.stream.IntStream
    public final C2175l reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (C2175l) C(new C2288v1(Y2.INT_VALUE, intBinaryOperator, 3));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream b() {
        Objects.requireNonNull(null);
        return new C2271s(this, X2.t, 3);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new S(this, intConsumer);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC2279t2.f(this, 0L, j);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2279t2.f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.IntStream, j$.util.stream.a] */
    @Override // j$.util.stream.IntStream
    public final IntStream a() {
        int i = j4.f11916a;
        Objects.requireNonNull(null);
        return new AbstractC2182a(this, j4.f11916a);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.IntStream, j$.util.stream.a] */
    @Override // j$.util.stream.IntStream
    public final IntStream c() {
        int i = j4.f11916a;
        Objects.requireNonNull(null);
        return new AbstractC2182a(this, j4.b);
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((Long) C(new C2308z1(3))).longValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC2185a2) boxed()).distinct().mapToInt(new C2252o(13));
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new C2252o(18));
    }

    @Override // j$.util.stream.IntStream
    public final C2175l min() {
        return reduce(new C2252o(15));
    }

    @Override // j$.util.stream.IntStream
    public final C2175l max() {
        return reduce(new C2252o(19));
    }

    @Override // j$.util.stream.IntStream
    public final C2174k average() {
        long[] jArr = (long[]) collect(new C2252o(20), new C2252o(21), new C2252o(22));
        long j = jArr[0];
        return j > 0 ? new C2174k(jArr[1] / j) : C2174k.c;
    }

    @Override // j$.util.stream.IntStream
    public final C2171h summaryStatistics() {
        return (C2171h) collect(new C2162a(13), new C2252o(16), new C2252o(17));
    }

    @Override // j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2247n c2247n = new C2247n(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(c2247n);
        return C(new C2298x1(Y2.INT_VALUE, c2247n, objIntConsumer, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final boolean p() {
        return ((Boolean) C(AbstractC2273s1.N(EnumC2258p0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean r() {
        return ((Boolean) C(AbstractC2273s1.N(EnumC2258p0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean g() {
        return ((Boolean) C(AbstractC2273s1.N(EnumC2258p0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC2273s1.H((InterfaceC2302y0) D(new C2252o(12))).e();
    }
}
