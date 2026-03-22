package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public abstract class i4 implements Spliterator {

    /* renamed from: a  reason: collision with root package name */
    public final Spliterator f11913a;
    public final AtomicBoolean b;
    public boolean c;
    public int d;

    public abstract Spliterator c(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.o(this, i);
    }

    @Override // j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        do {
        } while (tryAdvance(consumer));
    }

    public i4(Spliterator spliterator) {
        this.c = true;
        this.f11913a = spliterator;
        this.b = new AtomicBoolean();
    }

    public i4(Spliterator spliterator, i4 i4Var) {
        this.c = true;
        this.f11913a = spliterator;
        i4Var.getClass();
        this.b = i4Var.b;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f11913a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f11913a.characteristics() & (-16449);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f11913a.getComparator();
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        Spliterator trySplit = this.f11913a.trySplit();
        if (trySplit != null) {
            return c(trySplit);
        }
        return null;
    }

    public final boolean b() {
        return (this.d == 0 && this.b.get()) ? false : true;
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

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.I trySplit() {
        return (j$.util.I) trySplit();
    }
}
