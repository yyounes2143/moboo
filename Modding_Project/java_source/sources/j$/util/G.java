package j$.util;

import java.util.Spliterator;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final /* synthetic */ class G implements I {

    /* renamed from: a */
    public final /* synthetic */ Spliterator.OfPrimitive f11808a;

    public /* synthetic */ G(Spliterator.OfPrimitive ofPrimitive) {
        this.f11808a = ofPrimitive;
    }

    public static /* synthetic */ I a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof H ? ((H) ofPrimitive).f11809a : ofPrimitive instanceof Spliterator.OfDouble ? C2316y.a((Spliterator.OfDouble) ofPrimitive) : ofPrimitive instanceof Spliterator.OfInt ? B.a((Spliterator.OfInt) ofPrimitive) : ofPrimitive instanceof Spliterator.OfLong ? D.a((Spliterator.OfLong) ofPrimitive) : new G(ofPrimitive);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f11808a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfPrimitive ofPrimitive = this.f11808a;
        if (obj instanceof G) {
            obj = ((G) obj).f11808a;
        }
        return ofPrimitive.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f11808a.estimateSize();
    }

    @Override // j$.util.I
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f11808a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f11808a.forEachRemaining(consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f11808a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f11808a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f11808a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f11808a.hashCode();
    }

    @Override // j$.util.I
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f11808a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f11808a.tryAdvance(consumer);
    }

    @Override // j$.util.I, j$.util.Spliterator
    public final /* synthetic */ I trySplit() {
        return a(this.f11808a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return J.a(this.f11808a.trySplit());
    }
}
