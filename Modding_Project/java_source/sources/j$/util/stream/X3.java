package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class X3 extends AbstractC2296x implements Y3 {
    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator L(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        if (X2.ORDERED.l(abstractC2182a.f)) {
            return K(abstractC2182a, spliterator, new Z(24)).spliterator();
        }
        return new c4((j$.util.A) abstractC2182a.T(spliterator), 0);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final C0 K(AbstractC2182a abstractC2182a, Spliterator spliterator, IntFunction intFunction) {
        return (C0) new a4(this, abstractC2182a, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        return new W3(this, interfaceC2225i2, false);
    }

    @Override // j$.util.stream.Y3
    public final Z3 j(InterfaceC2282u0 interfaceC2282u0, boolean z) {
        return new W3(this, interfaceC2282u0, z);
    }
}
