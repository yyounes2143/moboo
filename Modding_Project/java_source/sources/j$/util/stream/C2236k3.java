package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.k3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C2236k3 implements Spliterator {

    /* renamed from: a  reason: collision with root package name */
    public final Supplier f11917a;
    public Spliterator b;

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.o(this, i);
    }

    public C2236k3(Supplier supplier) {
        this.f11917a = supplier;
    }

    public final Spliterator a() {
        if (this.b == null) {
            this.b = (Spliterator) this.f11917a.get();
        }
        return this.b;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        return a().trySplit();
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        return a().tryAdvance(consumer);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        a().forEachRemaining(consumer);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return a().estimateSize();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return a().characteristics();
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return a().getComparator();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return a().getExactSizeIfKnown();
    }

    public final String toString() {
        String name = getClass().getName();
        Spliterator a2 = a();
        return name + "[" + a2 + "]";
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.I trySplit() {
        return (j$.util.I) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.F trySplit() {
        return (j$.util.F) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.A trySplit() {
        return (j$.util.A) trySplit();
    }
}
