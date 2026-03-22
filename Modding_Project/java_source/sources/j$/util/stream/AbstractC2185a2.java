package j$.util.stream;

import j$.util.Objects;
import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.stream.Collector;
import java.util.Comparator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
/* renamed from: j$.util.stream.a2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2185a2 extends AbstractC2182a implements Stream {
    @Override // j$.util.stream.Stream
    public final Stream sorted() {
        return new E2(this);
    }

    @Override // j$.util.stream.Stream
    public final Stream distinct() {
        return new Z1(this, X2.m | X2.t, 0);
    }

    @Override // j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(comparator, 1));
    }

    @Override // j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) C(F.d);
    }

    @Override // j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) C(F.c);
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new E2(this, comparator);
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(binaryOperator);
        return C(new C2298x1(Y2.REFERENCE, binaryOperator, biFunction, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        Objects.requireNonNull(binaryOperator);
        return C(new C2298x1(Y2.REFERENCE, binaryOperator, binaryOperator, obj, 2));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C(new M(consumer, false));
    }

    public void forEachOrdered(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C(new M(consumer, true));
    }

    @Override // j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(comparator, 0));
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Y2 H() {
        return Y2.REFERENCE;
    }

    @Override // j$.util.stream.Stream
    public final Optional reduce(BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        return (Optional) C(new C2288v1(Y2.REFERENCE, binaryOperator, 2));
    }

    @Override // j$.util.stream.AbstractC2182a
    public final C0 E(AbstractC2182a abstractC2182a, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC2273s1.y(abstractC2182a, spliterator, z, intFunction);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator Q(AbstractC2182a abstractC2182a, Supplier supplier, boolean z) {
        return new Z2(abstractC2182a, supplier, z);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator I(Supplier supplier) {
        return new C2236k3(supplier);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final boolean G(Spliterator spliterator, InterfaceC2225i2 interfaceC2225i2) {
        boolean o;
        do {
            o = interfaceC2225i2.o();
            if (o) {
                break;
            }
        } while (spliterator.tryAdvance(interfaceC2225i2));
        return o;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2282u0 J(long j, IntFunction intFunction) {
        return AbstractC2273s1.x(j, intFunction);
    }

    @Override // j$.util.stream.BaseStream
    public final Iterator iterator() {
        Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.K(spliterator);
    }

    @Override // j$.util.stream.Stream
    public final Stream filter(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2262q(this, X2.t, predicate, 4);
    }

    @Override // j$.util.stream.Stream
    public final Stream map(Function function) {
        Objects.requireNonNull(function);
        return new C2262q(this, X2.p | X2.n, function, 5);
    }

    @Override // j$.util.stream.Stream
    public final IntStream mapToInt(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new S(this, X2.p | X2.n, toIntFunction, 2);
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return C(new C2298x1(Y2.REFERENCE, biConsumer2, biConsumer, supplier, 3));
    }

    @Override // j$.util.stream.Stream
    public final LongStream mapToLong(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2198d0(this, X2.p | X2.n, toLongFunction, 3);
    }

    @Override // j$.util.stream.Stream
    public final DoubleStream mapToDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2286v(this, X2.p | X2.n, toDoubleFunction, 2);
    }

    @Override // j$.util.stream.Stream
    public final long count() {
        return ((Long) C(new C2308z1(2))).longValue();
    }

    @Override // j$.util.stream.Stream
    public final Stream d(j$.util.function.g gVar) {
        Objects.requireNonNull(gVar);
        return new C2262q(this, X2.p | X2.n | X2.t, gVar, 6);
    }

    @Override // j$.util.stream.Stream
    public final IntStream y(j$.util.function.g gVar) {
        Objects.requireNonNull(gVar);
        return new S(this, X2.p | X2.n | X2.t, gVar, 3);
    }

    @Override // j$.util.stream.Stream
    public final DoubleStream s(j$.util.function.g gVar) {
        Objects.requireNonNull(gVar);
        return new C2286v(this, X2.p | X2.n | X2.t, gVar, 3);
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Collector collector) {
        Collector collector2;
        Object C;
        if (!this.f11896a.l || !collector.characteristics().contains(Collector.Characteristics.CONCURRENT) || (X2.ORDERED.l(this.f) && !collector.characteristics().contains(Collector.Characteristics.UNORDERED))) {
            Supplier supplier = ((Collector) Objects.requireNonNull(collector)).supplier();
            collector2 = collector;
            C = C(new E1(Y2.REFERENCE, collector.combiner(), collector.accumulator(), supplier, collector2));
        } else {
            C = collector.supplier().get();
            forEach(new j$.util.concurrent.t(7, collector.accumulator(), C));
            collector2 = collector;
        }
        return collector2.characteristics().contains(Collector.Characteristics.IDENTITY_FINISH) ? C : collector2.finisher().apply(C);
    }

    @Override // j$.util.stream.Stream
    public final LongStream w(j$.util.function.g gVar) {
        Objects.requireNonNull(gVar);
        return new C2198d0(this, X2.p | X2.n | X2.t, gVar, 2);
    }

    @Override // j$.util.stream.Stream
    public final Stream peek(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2262q(this, consumer);
    }

    @Override // j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC2279t2.h(this, 0L, j);
    }

    @Override // j$.util.stream.Stream
    public final Stream skip(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i == 0 ? this : AbstractC2279t2.h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.Stream
    public final Stream takeWhile(Predicate predicate) {
        int i = j4.f11916a;
        Objects.requireNonNull(predicate);
        return new L3(this, j4.f11916a, predicate);
    }

    @Override // j$.util.stream.Stream
    public final Stream dropWhile(Predicate predicate) {
        int i = j4.f11916a;
        Objects.requireNonNull(predicate);
        return new N3(this, j4.b, predicate);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC2273s1.F(D(intFunction), intFunction).p(intFunction);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray() {
        return toArray(new Z(13));
    }

    @Override // j$.util.stream.Stream
    public final boolean anyMatch(Predicate predicate) {
        return ((Boolean) C(AbstractC2273s1.P(EnumC2258p0.ANY, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean allMatch(Predicate predicate) {
        return ((Boolean) C(AbstractC2273s1.P(EnumC2258p0.ALL, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean noneMatch(Predicate predicate) {
        return ((Boolean) C(AbstractC2273s1.P(EnumC2258p0.NONE, predicate))).booleanValue();
    }
}
