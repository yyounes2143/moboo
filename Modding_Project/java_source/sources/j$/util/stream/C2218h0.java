package j$.util.stream;

import j$.util.C2173j;
import j$.util.C2174k;
import j$.util.C2176m;
import j$.util.C2312u;
import j$.util.C2313v;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.PrimitiveIterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.h0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2218h0 implements LongStream, AutoCloseable {

    /* renamed from: a */
    public final /* synthetic */ java.util.stream.LongStream f11910a;

    public /* synthetic */ C2218h0(java.util.stream.LongStream longStream) {
        this.f11910a = longStream;
    }

    public static /* synthetic */ LongStream j(java.util.stream.LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C2223i0 ? ((C2223i0) longStream).f11912a : new C2218h0(longStream);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream a() {
        return j(this.f11910a.takeWhile(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ DoubleStream asDoubleStream() {
        return C2306z.j(this.f11910a.asDoubleStream());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2174k average() {
        return j$.com.android.tools.r8.a.B(this.f11910a.average());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream b() {
        return j(this.f11910a.filter(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream boxed() {
        return U2.j(this.f11910a.boxed());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream c() {
        return j(this.f11910a.dropWhile(null));
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f11910a.close();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.f11910a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long count() {
        return this.f11910a.count();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream distinct() {
        return j(this.f11910a.distinct());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream e() {
        return j(this.f11910a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.LongStream longStream = this.f11910a;
        if (obj instanceof C2218h0) {
            obj = ((C2218h0) obj).f11910a;
        }
        return longStream.equals(obj);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2176m findAny() {
        return j$.com.android.tools.r8.a.D(this.f11910a.findAny());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2176m findFirst() {
        return j$.com.android.tools.r8.a.D(this.f11910a.findFirst());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.f11910a.forEach(longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.f11910a.forEachOrdered(longConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f11910a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f11910a.isParallel();
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    public final /* synthetic */ Iterator<Long> iterator() {
        PrimitiveIterator.OfLong it = this.f11910a.iterator();
        if (it == null) {
            return null;
        }
        return it instanceof C2313v ? ((C2313v) it).f11939a : new C2312u(it);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator<Long> iterator2() {
        return this.f11910a.iterator();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ DoubleStream k() {
        return C2306z.j(this.f11910a.mapToDouble(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream limit(long j) {
        return j(this.f11910a.limit(j));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean m() {
        return this.f11910a.noneMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return U2.j(this.f11910a.mapToObj(longFunction));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2176m max() {
        return j$.com.android.tools.r8.a.D(this.f11910a.max());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2176m min() {
        return j$.com.android.tools.r8.a.D(this.f11910a.min());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean o() {
        return this.f11910a.allMatch(null);
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C2202e.j(this.f11910a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream parallel() {
        return C2202e.j(this.f11910a.parallel());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    public final /* synthetic */ LongStream parallel() {
        return j(this.f11910a.parallel());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream peek(LongConsumer longConsumer) {
        return j(this.f11910a.peek(longConsumer));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.f11910a.reduce(j, longBinaryOperator);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2176m reduce(LongBinaryOperator longBinaryOperator) {
        return j$.com.android.tools.r8.a.D(this.f11910a.reduce(longBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream sequential() {
        return C2202e.j(this.f11910a.sequential());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    public final /* synthetic */ LongStream sequential() {
        return j(this.f11910a.sequential());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream skip(long j) {
        return j(this.f11910a.skip(j));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream sorted() {
        return j(this.f11910a.sorted());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    public final /* synthetic */ j$.util.F spliterator() {
        return j$.util.D.a(this.f11910a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.J.a(this.f11910a.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long sum() {
        return this.f11910a.sum();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean t() {
        return this.f11910a.anyMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long[] toArray() {
        return this.f11910a.toArray();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ IntStream u() {
        return IntStream.VivifiedWrapper.convert(this.f11910a.mapToInt(null));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C2202e.j(this.f11910a.unordered());
    }

    @Override // j$.util.stream.LongStream
    public final C2173j summaryStatistics() {
        this.f11910a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // j$.util.stream.LongStream
    public final LongStream d(j$.util.function.g gVar) {
        java.util.stream.LongStream longStream = this.f11910a;
        j$.util.function.g gVar2 = new j$.util.function.g(6);
        gVar2.b = gVar;
        return j(longStream.flatMap(gVar2));
    }
}
