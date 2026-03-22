package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;
/* loaded from: classes2.dex */
public final class J extends N implements InterfaceC2210f2 {
    public final DoubleConsumer b;

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC2210f2
    public final /* synthetic */ void q(Double d) {
        AbstractC2273s1.e(this, d);
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

    public J(DoubleConsumer doubleConsumer, boolean z) {
        super(z);
        this.b = doubleConsumer;
    }

    @Override // j$.util.stream.N, j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.b.accept(d);
    }
}
