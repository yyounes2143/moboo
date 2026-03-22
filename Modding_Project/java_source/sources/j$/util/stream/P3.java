package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class P3 extends W {
    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator L(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        if (X2.ORDERED.l(abstractC2182a.f)) {
            return K(abstractC2182a, spliterator, new Z(19)).spliterator();
        }
        return new i4((Spliterator.OfInt) abstractC2182a.T(spliterator));
    }

    @Override // j$.util.stream.AbstractC2182a
    public final C0 K(AbstractC2182a abstractC2182a, Spliterator spliterator, IntFunction intFunction) {
        return (C0) new b4(this, abstractC2182a, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        return new O3(this, interfaceC2225i2);
    }
}
