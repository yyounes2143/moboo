package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final /* synthetic */ class r implements PrimitiveIterator$OfInt, InterfaceC2172i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PrimitiveIterator.OfInt f11857a;

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfInt ofInt = this.f11857a;
        if (obj instanceof r) {
            obj = ((r) obj).f11857a;
        }
        return ofInt.equals(obj);
    }

    @Override // j$.util.InterfaceC2314w
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f11857a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // j$.util.PrimitiveIterator$OfInt, java.util.Iterator, j$.util.InterfaceC2172i
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f11857a.forEachRemaining((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.PrimitiveIterator$OfInt
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f11857a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f11857a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f11857a.hashCode();
    }

    @Override // j$.util.PrimitiveIterator$OfInt, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.f11857a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f11857a.next();
    }

    @Override // j$.util.PrimitiveIterator$OfInt
    public final /* synthetic */ int nextInt() {
        return this.f11857a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f11857a.remove();
    }
}
