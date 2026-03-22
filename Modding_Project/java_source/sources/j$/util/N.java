package j$.util;

import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
/* loaded from: classes2.dex */
public final class N implements PrimitiveIterator$OfDouble, DoubleConsumer, InterfaceC2172i {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11814a = false;
    public double b;
    public final /* synthetic */ A c;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.InterfaceC2314w
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        while (hasNext()) {
            doubleConsumer.accept(nextDouble());
        }
    }

    @Override // java.util.Iterator
    public final Double next() {
        if (Z.f11825a) {
            Z.a(N.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // j$.util.PrimitiveIterator$OfDouble, java.util.Iterator, j$.util.InterfaceC2172i
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            forEachRemaining((DoubleConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (Z.f11825a) {
            Z.a(N.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((DoubleConsumer) new C2177n(consumer, 0));
    }

    public N(A a2) {
        this.c = a2;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f11814a = true;
        this.b = d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f11814a) {
            this.c.tryAdvance((DoubleConsumer) this);
        }
        return this.f11814a;
    }

    @Override // j$.util.PrimitiveIterator$OfDouble
    public final double nextDouble() {
        if (!this.f11814a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f11814a = false;
        return this.b;
    }
}
