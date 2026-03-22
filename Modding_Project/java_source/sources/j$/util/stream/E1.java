package j$.util.stream;

import j$.util.stream.Collector;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public final class E1 extends AbstractC2273s1 {
    public final /* synthetic */ BinaryOperator h;
    public final /* synthetic */ BiConsumer i;
    public final /* synthetic */ Supplier j;
    public final /* synthetic */ Collector k;

    @Override // j$.util.stream.AbstractC2273s1
    public final N1 Q() {
        return new F1(this.j, this.i, this.h);
    }

    @Override // j$.util.stream.AbstractC2273s1, j$.util.stream.I3
    public final int d() {
        if (this.k.characteristics().contains(Collector.Characteristics.UNORDERED)) {
            return X2.r;
        }
        return 0;
    }

    public E1(Y2 y2, BinaryOperator binaryOperator, BiConsumer biConsumer, Supplier supplier, Collector collector) {
        this.h = binaryOperator;
        this.i = biConsumer;
        this.j = supplier;
        this.k = collector;
    }
}
