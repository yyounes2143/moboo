package j$.util;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public interface PrimitiveIterator$OfInt extends InterfaceC2314w {
    @Override // java.util.Iterator, j$.util.InterfaceC2172i
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(IntConsumer intConsumer);

    @Override // java.util.Iterator
    Integer next();

    int nextInt();
}
