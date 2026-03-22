package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final class K extends N implements InterfaceC2215g2 {
    public final IntConsumer b;

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        n((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC2215g2
    public final /* synthetic */ void n(Integer num) {
        AbstractC2273s1.g(this, num);
    }

    @Override // j$.util.stream.I3
    public final Object b(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        abstractC2182a.R(spliterator, this);
        return null;
    }

    @Override // j$.util.stream.I3
    public final /* bridge */ /* synthetic */ Object c(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        e(abstractC2182a, spliterator);
        return null;
    }

    public K(IntConsumer intConsumer, boolean z) {
        super(z);
        this.b = intConsumer;
    }

    @Override // j$.util.stream.N, j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        this.b.accept(i);
    }
}
