package j$.util.stream;

import java.util.function.DoublePredicate;
/* loaded from: classes2.dex */
public final class W3 extends AbstractC2190b2 implements Z3 {
    public final /* synthetic */ X3 b;

    @Override // j$.util.stream.Z3
    public final long g() {
        return 0L;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W3(X3 x3, InterfaceC2225i2 interfaceC2225i2, boolean z) {
        super(interfaceC2225i2);
        this.b = x3;
    }

    @Override // j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.b.getClass();
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d);
        throw null;
    }
}
