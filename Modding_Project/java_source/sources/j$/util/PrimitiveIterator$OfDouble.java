package j$.util;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
/* loaded from: classes2.dex */
public interface PrimitiveIterator$OfDouble extends InterfaceC2314w {
    @Override // java.util.Iterator, j$.util.InterfaceC2172i
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(DoubleConsumer doubleConsumer);

    @Override // java.util.Iterator
    Double next();

    double nextDouble();
}
