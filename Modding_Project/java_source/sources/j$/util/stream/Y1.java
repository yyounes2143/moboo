package j$.util.stream;

import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final class Y1 extends AbstractC2185a2 {
    @Override // j$.util.stream.AbstractC2185a2, j$.util.stream.Stream
    public final void forEach(Consumer consumer) {
        if (!this.f11896a.l) {
            P().forEachRemaining(consumer);
        } else {
            super.forEach(consumer);
        }
    }

    @Override // j$.util.stream.AbstractC2185a2, j$.util.stream.Stream
    public final void forEachOrdered(Consumer consumer) {
        if (!this.f11896a.l) {
            P().forEachRemaining(consumer);
        } else {
            super.forEachOrdered(consumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !X2.ORDERED.l(this.f) ? this : new Z1(this, X2.r, 1);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final boolean M() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        throw new UnsupportedOperationException();
    }
}
