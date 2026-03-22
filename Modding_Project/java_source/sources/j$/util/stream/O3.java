package j$.util.stream;

import java.util.function.IntPredicate;
/* loaded from: classes2.dex */
public final class O3 extends AbstractC2195c2 {
    public final boolean b;

    public O3(P3 p3, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.b = true;
    }

    @Override // j$.util.stream.AbstractC2195c2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11899a.m(-1L);
    }

    @Override // j$.util.stream.InterfaceC2215g2, j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        if (this.b) {
            IntPredicate intPredicate = null;
            intPredicate.test(i);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC2195c2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        return !this.b || this.f11899a.o();
    }
}
