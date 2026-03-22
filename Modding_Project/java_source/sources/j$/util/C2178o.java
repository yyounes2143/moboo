package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
/* renamed from: j$.util.o  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2178o implements PrimitiveIterator$OfDouble, InterfaceC2172i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PrimitiveIterator.OfDouble f11854a;

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfDouble ofDouble = this.f11854a;
        if (obj instanceof C2178o) {
            obj = ((C2178o) obj).f11854a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.InterfaceC2314w
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f11854a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // j$.util.PrimitiveIterator$OfDouble, java.util.Iterator, j$.util.InterfaceC2172i
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f11854a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.PrimitiveIterator$OfDouble
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f11854a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f11854a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f11854a.hashCode();
    }

    @Override // j$.util.PrimitiveIterator$OfDouble, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.f11854a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f11854a.next();
    }

    @Override // j$.util.PrimitiveIterator$OfDouble
    public final /* synthetic */ double nextDouble() {
        return this.f11854a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f11854a.remove();
    }
}
