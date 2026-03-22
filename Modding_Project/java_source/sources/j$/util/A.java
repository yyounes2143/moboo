package j$.util;

import java.util.function.DoubleConsumer;
/* loaded from: classes2.dex */
public interface A extends I {
    void forEachRemaining(DoubleConsumer doubleConsumer);

    boolean tryAdvance(DoubleConsumer doubleConsumer);

    @Override // j$.util.I, j$.util.Spliterator
    A trySplit();
}
