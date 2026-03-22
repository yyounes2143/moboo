package j$.util;

import j$.util.Spliterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final class L implements PrimitiveIterator$OfInt, IntConsumer, InterfaceC2172i {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11812a = false;
    public int b;
    public final /* synthetic */ Spliterator.OfInt c;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.InterfaceC2314w
    public final void forEachRemaining(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        while (hasNext()) {
            intConsumer.accept(nextInt());
        }
    }

    @Override // java.util.Iterator
    public final Integer next() {
        if (Z.f11825a) {
            Z.a(L.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // j$.util.PrimitiveIterator$OfInt, java.util.Iterator, j$.util.InterfaceC2172i
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            forEachRemaining((IntConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (Z.f11825a) {
            Z.a(L.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((IntConsumer) new C2180q(consumer, 0));
    }

    public L(Spliterator.OfInt ofInt) {
        this.c = ofInt;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f11812a = true;
        this.b = i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f11812a) {
            this.c.tryAdvance((IntConsumer) this);
        }
        return this.f11812a;
    }

    @Override // j$.util.PrimitiveIterator$OfInt
    public final int nextInt() {
        if (!this.f11812a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f11812a = false;
        return this.b;
    }
}
