package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;
/* loaded from: classes2.dex */
public final class L3 extends Z1 {
    public final /* synthetic */ Predicate n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L3(AbstractC2185a2 abstractC2185a2, int i, Predicate predicate) {
        super(abstractC2185a2, i, 0);
        this.n = predicate;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator L(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        if (X2.ORDERED.l(abstractC2182a.f)) {
            return K(abstractC2182a, spliterator, new Z(5)).spliterator();
        }
        return new h4(abstractC2182a.T(spliterator), this.n, 1);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final C0 K(AbstractC2182a abstractC2182a, Spliterator spliterator, IntFunction intFunction) {
        return (C0) new b4(this, abstractC2182a, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        return new C2232k(this, interfaceC2225i2);
    }
}
