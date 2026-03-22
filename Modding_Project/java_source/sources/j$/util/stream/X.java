package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public abstract class X extends Y {
    @Override // j$.util.stream.AbstractC2182a
    public final boolean M() {
        return false;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator I(Supplier supplier) {
        return new C2236k3(supplier);
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final IntStream sequential() {
        this.f11896a.l = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final IntStream parallel() {
        this.f11896a.l = true;
        return this;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !X2.ORDERED.l(this.f) ? this : new C2271s(this, X2.r, 2);
    }

    @Override // j$.util.stream.AbstractC2182a, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }
}
