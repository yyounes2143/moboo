package j$.util;

import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public interface F extends I {
    void forEachRemaining(LongConsumer longConsumer);

    boolean tryAdvance(LongConsumer longConsumer);

    @Override // j$.util.I, j$.util.Spliterator
    F trySplit();
}
