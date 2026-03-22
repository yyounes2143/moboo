package j$.util.stream;

import j$.util.C2170g;
import j$.util.C2174k;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public interface DoubleStream extends BaseStream<Double, DoubleStream> {
    DoubleStream a();

    C2174k average();

    DoubleStream b();

    Stream boxed();

    DoubleStream c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    DoubleStream d(j$.util.function.g gVar);

    DoubleStream distinct();

    DoubleStream e();

    C2174k findAny();

    C2174k findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    boolean h();

    LongStream i();

    @Override // j$.util.stream.BaseStream
    Iterator<Double> iterator();

    DoubleStream limit(long j);

    Stream mapToObj(DoubleFunction doubleFunction);

    C2174k max();

    C2174k min();

    boolean n();

    @Override // j$.util.stream.BaseStream
    DoubleStream parallel();

    DoubleStream peek(DoubleConsumer doubleConsumer);

    IntStream q();

    double reduce(double d, DoubleBinaryOperator doubleBinaryOperator);

    C2174k reduce(DoubleBinaryOperator doubleBinaryOperator);

    @Override // j$.util.stream.BaseStream
    DoubleStream sequential();

    DoubleStream skip(long j);

    DoubleStream sorted();

    @Override // j$.util.stream.BaseStream
    j$.util.A spliterator();

    double sum();

    C2170g summaryStatistics();

    double[] toArray();

    boolean x();
}
