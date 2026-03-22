package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final class M extends N {
    public final Consumer b;

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
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

    public M(Consumer consumer, boolean z) {
        super(z);
        this.b = consumer;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.b.accept(obj);
    }
}
