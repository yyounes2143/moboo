package j$.util;

import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2316y implements A {

    /* renamed from: a */
    public final /* synthetic */ Spliterator.OfDouble f11940a;

    public /* synthetic */ C2316y(Spliterator.OfDouble ofDouble) {
        this.f11940a = ofDouble;
    }

    public static /* synthetic */ A a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C2317z ? ((C2317z) ofDouble).f11941a : new C2316y(ofDouble);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f11940a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfDouble ofDouble = this.f11940a;
        if (obj instanceof C2316y) {
            obj = ((C2316y) obj).f11940a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f11940a.estimateSize();
    }

    @Override // j$.util.I
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f11940a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f11940a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.A
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f11940a.forEachRemaining(doubleConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f11940a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f11940a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f11940a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f11940a.hashCode();
    }

    @Override // j$.util.I
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f11940a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f11940a.tryAdvance((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.A
    public final /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return this.f11940a.tryAdvance(doubleConsumer);
    }

    @Override // j$.util.A, j$.util.I, j$.util.Spliterator
    public final /* synthetic */ A trySplit() {
        return a(this.f11940a.trySplit());
    }

    @Override // j$.util.I, j$.util.Spliterator
    public final /* synthetic */ I trySplit() {
        return G.a(this.f11940a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return J.a(this.f11940a.trySplit());
    }
}
