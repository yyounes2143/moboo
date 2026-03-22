package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.e0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2203e0 extends AbstractC2213g0 {
    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator I(Supplier supplier) {
        return new C2236k3(supplier);
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final LongStream sequential() {
        this.f11896a.l = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final LongStream parallel() {
        this.f11896a.l = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC2213g0, j$.util.stream.LongStream
    public final void forEach(LongConsumer longConsumer) {
        if (!this.f11896a.l) {
            AbstractC2213g0.U(P()).forEachRemaining(longConsumer);
        } else {
            super.forEach(longConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC2213g0, j$.util.stream.LongStream
    public final void forEachOrdered(LongConsumer longConsumer) {
        if (!this.f11896a.l) {
            AbstractC2213g0.U(P()).forEachRemaining(longConsumer);
        } else {
            super.forEachOrdered(longConsumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !X2.ORDERED.l(this.f) ? this : new C2276t(this, X2.r, 4);
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
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
