package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public final class L extends N implements InterfaceC2220h2 {
    public final LongConsumer b;

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        k((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC2220h2
    public final /* synthetic */ void k(Long l) {
        AbstractC2273s1.i(this, l);
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

    public L(LongConsumer longConsumer, boolean z) {
        super(z);
        this.b = longConsumer;
    }

    @Override // j$.util.stream.N, j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        this.b.accept(j);
    }
}
