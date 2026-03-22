package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
/* renamed from: j$.util.u  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2312u implements PrimitiveIterator$OfLong, InterfaceC2172i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PrimitiveIterator.OfLong f11938a;

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfLong ofLong = this.f11938a;
        if (obj instanceof C2312u) {
            obj = ((C2312u) obj).f11938a;
        }
        return ofLong.equals(obj);
    }

    @Override // j$.util.InterfaceC2314w
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f11938a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // j$.util.PrimitiveIterator$OfLong, java.util.Iterator, j$.util.InterfaceC2172i
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f11938a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.PrimitiveIterator$OfLong
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f11938a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f11938a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f11938a.hashCode();
    }

    @Override // j$.util.PrimitiveIterator$OfLong, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.f11938a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f11938a.next();
    }

    @Override // j$.util.PrimitiveIterator$OfLong
    public final /* synthetic */ long nextLong() {
        return this.f11938a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f11938a.remove();
    }
}
