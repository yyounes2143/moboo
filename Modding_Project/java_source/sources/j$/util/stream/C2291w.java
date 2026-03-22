package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.w  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2291w extends AbstractC2301y {
    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator I(Supplier supplier) {
        return new C2236k3(supplier);
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final DoubleStream sequential() {
        this.f11896a.l = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final DoubleStream parallel() {
        this.f11896a.l = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC2301y, j$.util.stream.DoubleStream
    public final void forEach(DoubleConsumer doubleConsumer) {
        if (!this.f11896a.l) {
            AbstractC2301y.U(P()).forEachRemaining(doubleConsumer);
        } else {
            super.forEach(doubleConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC2301y, j$.util.stream.DoubleStream
    public final void forEachOrdered(DoubleConsumer doubleConsumer) {
        if (!this.f11896a.l) {
            AbstractC2301y.U(P()).forEachRemaining(doubleConsumer);
        } else {
            super.forEachOrdered(doubleConsumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !X2.ORDERED.l(this.f) ? this : new r(this, X2.r, 1);
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
