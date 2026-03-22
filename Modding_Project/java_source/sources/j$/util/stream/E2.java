package j$.util.stream;

import j$.util.EnumC2167d;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class E2 extends Z1 {
    public final boolean n;
    public final Comparator o;

    public E2(AbstractC2185a2 abstractC2185a2) {
        super(abstractC2185a2, X2.q | X2.o, 0);
        this.n = true;
        this.o = EnumC2167d.INSTANCE;
    }

    public E2(AbstractC2185a2 abstractC2185a2, Comparator comparator) {
        super(abstractC2185a2, X2.q | X2.p, 0);
        this.n = false;
        this.o = (Comparator) Objects.requireNonNull(comparator);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        Objects.requireNonNull(interfaceC2225i2);
        if (X2.SORTED.l(i) && this.n) {
            return interfaceC2225i2;
        }
        boolean l = X2.SIZED.l(i);
        Comparator comparator = this.o;
        if (l) {
            return new AbstractC2299x2(interfaceC2225i2, comparator);
        }
        return new AbstractC2299x2(interfaceC2225i2, comparator);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final C0 K(AbstractC2182a abstractC2182a, Spliterator spliterator, IntFunction intFunction) {
        if (X2.SORTED.l(abstractC2182a.f) && this.n) {
            return abstractC2182a.B(spliterator, false, intFunction);
        }
        Object[] p = abstractC2182a.B(spliterator, true, intFunction).p(intFunction);
        Arrays.sort(p, this.o);
        return new F0(p);
    }
}
