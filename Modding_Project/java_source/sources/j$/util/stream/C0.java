package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public interface C0 {
    C0 b(int i);

    long count();

    void forEach(Consumer consumer);

    C0 i(long j, long j2, IntFunction intFunction);

    void j(Object[] objArr, int i);

    Object[] p(IntFunction intFunction);

    int r();

    Spliterator spliterator();
}
