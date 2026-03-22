package j$.util.stream;

import java.util.function.DoublePredicate;
/* loaded from: classes2.dex */
public final class V3 extends AbstractC2190b2 {
    public final boolean b;

    public V3(B2 b2, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.b = true;
    }

    @Override // j$.util.stream.AbstractC2190b2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11897a.m(-1L);
    }

    @Override // j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        if (this.b) {
            DoublePredicate doublePredicate = null;
            doublePredicate.test(d);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC2190b2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        return !this.b || this.f11897a.o();
    }
}
