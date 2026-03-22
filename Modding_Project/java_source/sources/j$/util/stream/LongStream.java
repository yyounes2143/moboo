package j$.util.stream;

import j$.util.C2173j;
import j$.util.C2174k;
import j$.util.C2176m;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public interface LongStream extends BaseStream<Long, LongStream> {
    LongStream a();

    DoubleStream asDoubleStream();

    C2174k average();

    LongStream b();

    Stream boxed();

    LongStream c();

    Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer);

    long count();

    LongStream d(j$.util.function.g gVar);

    LongStream distinct();

    LongStream e();

    C2176m findAny();

    C2176m findFirst();

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    @Override // j$.util.stream.BaseStream
    Iterator<Long> iterator();

    DoubleStream k();

    LongStream limit(long j);

    boolean m();

    Stream mapToObj(LongFunction longFunction);

    C2176m max();

    C2176m min();

    boolean o();

    @Override // j$.util.stream.BaseStream
    LongStream parallel();

    LongStream peek(LongConsumer longConsumer);

    long reduce(long j, LongBinaryOperator longBinaryOperator);

    C2176m reduce(LongBinaryOperator longBinaryOperator);

    @Override // j$.util.stream.BaseStream
    LongStream sequential();

    LongStream skip(long j);

    LongStream sorted();

    @Override // j$.util.stream.BaseStream
    j$.util.F spliterator();

    long sum();

    C2173j summaryStatistics();

    boolean t();

    long[] toArray();

    IntStream u();
}
