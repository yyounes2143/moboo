package j$.util;

import j$.util.Spliterator;
import java.util.Spliterator;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final /* synthetic */ class H implements Spliterator.OfPrimitive {

    /* renamed from: a */
    public final /* synthetic */ I f11809a;

    public /* synthetic */ H(I i) {
        this.f11809a = i;
    }

    public static /* synthetic */ Spliterator.OfPrimitive a(I i) {
        if (i == null) {
            return null;
        }
        return i instanceof G ? ((G) i).f11808a : i instanceof A ? C2317z.a((A) i) : i instanceof Spliterator.OfInt ? C.a((Spliterator.OfInt) i) : i instanceof F ? E.a((F) i) : new H(i);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f11809a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        I i = this.f11809a;
        if (obj instanceof H) {
            obj = ((H) obj).f11809a;
        }
        return i.equals(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f11809a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f11809a.forEachRemaining(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f11809a.forEachRemaining(consumer);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f11809a.getComparator();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f11809a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f11809a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f11809a.hashCode();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f11809a.tryAdvance(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f11809a.tryAdvance(consumer);
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return a(this.f11809a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ java.util.Spliterator trySplit() {
        return Spliterator.Wrapper.convert(this.f11809a.trySplit());
    }
}
