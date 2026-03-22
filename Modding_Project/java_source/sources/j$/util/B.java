package j$.util;

import j$.util.Spliterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final /* synthetic */ class B implements Spliterator.OfInt {

    /* renamed from: a */
    public final /* synthetic */ Spliterator.OfInt f11803a;

    public /* synthetic */ B(Spliterator.OfInt ofInt) {
        this.f11803a = ofInt;
    }

    public static /* synthetic */ Spliterator.OfInt a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C ? ((C) ofInt).f11804a : new B(ofInt);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f11803a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfInt ofInt = this.f11803a;
        if (obj instanceof B) {
            obj = ((B) obj).f11803a;
        }
        return ofInt.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f11803a.estimateSize();
    }

    @Override // j$.util.I
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f11803a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f11803a.forEachRemaining((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.Spliterator.OfInt
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f11803a.forEachRemaining(intConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f11803a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f11803a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f11803a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f11803a.hashCode();
    }

    @Override // j$.util.I
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f11803a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f11803a.tryAdvance((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.Spliterator.OfInt
    public final /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return this.f11803a.tryAdvance(intConsumer);
    }

    @Override // j$.util.I, j$.util.Spliterator
    public final /* synthetic */ I trySplit() {
        return G.a(this.f11803a.trySplit());
    }

    @Override // j$.util.Spliterator.OfInt, j$.util.I, j$.util.Spliterator
    public final /* synthetic */ Spliterator.OfInt trySplit() {
        return a(this.f11803a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return J.a(this.f11803a.trySplit());
    }
}
