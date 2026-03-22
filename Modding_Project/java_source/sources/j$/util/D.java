package j$.util;

import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public final /* synthetic */ class D implements F {

    /* renamed from: a */
    public final /* synthetic */ Spliterator.OfLong f11805a;

    public /* synthetic */ D(Spliterator.OfLong ofLong) {
        this.f11805a = ofLong;
    }

    public static /* synthetic */ F a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof E ? ((E) ofLong).f11807a : new D(ofLong);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f11805a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfLong ofLong = this.f11805a;
        if (obj instanceof D) {
            obj = ((D) obj).f11805a;
        }
        return ofLong.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f11805a.estimateSize();
    }

    @Override // j$.util.I
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f11805a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f11805a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.F
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f11805a.forEachRemaining(longConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f11805a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f11805a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f11805a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f11805a.hashCode();
    }

    @Override // j$.util.I
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f11805a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f11805a.tryAdvance((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.F
    public final /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f11805a.tryAdvance(longConsumer);
    }

    @Override // j$.util.F, j$.util.I, j$.util.Spliterator
    public final /* synthetic */ F trySplit() {
        return a(this.f11805a.trySplit());
    }

    @Override // j$.util.I, j$.util.Spliterator
    public final /* synthetic */ I trySplit() {
        return G.a(this.f11805a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return J.a(this.f11805a.trySplit());
    }
}
