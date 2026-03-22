package j$.util.stream;

import j$.util.C2170g;
import j$.util.C2174k;
import j$.util.C2178o;
import j$.util.C2179p;
import j$.util.C2316y;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.PrimitiveIterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2306z implements DoubleStream, AutoCloseable {

    /* renamed from: a */
    public final /* synthetic */ java.util.stream.DoubleStream f11935a;

    public /* synthetic */ C2306z(java.util.stream.DoubleStream doubleStream) {
        this.f11935a = doubleStream;
    }

    public static /* synthetic */ DoubleStream j(java.util.stream.DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof A ? ((A) doubleStream).f11859a : new C2306z(doubleStream);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream a() {
        return j(this.f11935a.takeWhile(null));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ C2174k average() {
        return j$.com.android.tools.r8.a.B(this.f11935a.average());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream b() {
        return j(this.f11935a.filter(null));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ Stream boxed() {
        return U2.j(this.f11935a.boxed());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream c() {
        return j(this.f11935a.dropWhile(null));
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f11935a.close();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.f11935a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ long count() {
        return this.f11935a.count();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream distinct() {
        return j(this.f11935a.distinct());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream e() {
        return j(this.f11935a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.DoubleStream doubleStream = this.f11935a;
        if (obj instanceof C2306z) {
            obj = ((C2306z) obj).f11935a;
        }
        return doubleStream.equals(obj);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ C2174k findAny() {
        return j$.com.android.tools.r8.a.B(this.f11935a.findAny());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ C2174k findFirst() {
        return j$.com.android.tools.r8.a.B(this.f11935a.findFirst());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.f11935a.forEach(doubleConsumer);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.f11935a.forEachOrdered(doubleConsumer);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ boolean h() {
        return this.f11935a.allMatch(null);
    }

    public final /* synthetic */ int hashCode() {
        return this.f11935a.hashCode();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ LongStream i() {
        return C2218h0.j(this.f11935a.mapToLong(null));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f11935a.isParallel();
    }

    @Override // j$.util.stream.DoubleStream, j$.util.stream.BaseStream
    public final /* synthetic */ Iterator<Double> iterator() {
        PrimitiveIterator.OfDouble it = this.f11935a.iterator();
        if (it == null) {
            return null;
        }
        return it instanceof C2179p ? ((C2179p) it).f11855a : new C2178o(it);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator<Double> iterator2() {
        return this.f11935a.iterator();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream limit(long j) {
        return j(this.f11935a.limit(j));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return U2.j(this.f11935a.mapToObj(doubleFunction));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ C2174k max() {
        return j$.com.android.tools.r8.a.B(this.f11935a.max());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ C2174k min() {
        return j$.com.android.tools.r8.a.B(this.f11935a.min());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ boolean n() {
        return this.f11935a.anyMatch(null);
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C2202e.j(this.f11935a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream parallel() {
        return C2202e.j(this.f11935a.parallel());
    }

    @Override // j$.util.stream.DoubleStream, j$.util.stream.BaseStream
    public final /* synthetic */ DoubleStream parallel() {
        return j(this.f11935a.parallel());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream peek(DoubleConsumer doubleConsumer) {
        return j(this.f11935a.peek(doubleConsumer));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ IntStream q() {
        return IntStream.VivifiedWrapper.convert(this.f11935a.mapToInt(null));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.f11935a.reduce(d, doubleBinaryOperator);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ C2174k reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return j$.com.android.tools.r8.a.B(this.f11935a.reduce(doubleBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream sequential() {
        return C2202e.j(this.f11935a.sequential());
    }

    @Override // j$.util.stream.DoubleStream, j$.util.stream.BaseStream
    public final /* synthetic */ DoubleStream sequential() {
        return j(this.f11935a.sequential());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream skip(long j) {
        return j(this.f11935a.skip(j));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream sorted() {
        return j(this.f11935a.sorted());
    }

    @Override // j$.util.stream.DoubleStream, j$.util.stream.BaseStream
    public final /* synthetic */ j$.util.A spliterator() {
        return C2316y.a(this.f11935a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.J.a(this.f11935a.spliterator());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ double sum() {
        return this.f11935a.sum();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ double[] toArray() {
        return this.f11935a.toArray();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C2202e.j(this.f11935a.unordered());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ boolean x() {
        return this.f11935a.noneMatch(null);
    }

    @Override // j$.util.stream.DoubleStream
    public final C2170g summaryStatistics() {
        this.f11935a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream d(j$.util.function.g gVar) {
        java.util.stream.DoubleStream doubleStream = this.f11935a;
        j$.util.function.g gVar2 = new j$.util.function.g(4);
        gVar2.b = gVar;
        return j(doubleStream.flatMap(gVar2));
    }
}
