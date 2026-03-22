package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
/* loaded from: classes2.dex */
public final class e4 extends f4 {
    @Override // j$.util.stream.i4
    public final Spliterator c(Spliterator spliterator) {
        return new i4((Spliterator.OfInt) spliterator, this);
    }

    @Override // j$.util.stream.f4, j$.util.I
    public final /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        tryAdvance((IntConsumer) obj);
        return false;
    }

    @Override // j$.util.Spliterator.OfInt
    public final boolean tryAdvance(IntConsumer intConsumer) {
        if (this.c && b() && ((Spliterator.OfInt) this.f11913a).tryAdvance((IntConsumer) this)) {
            IntPredicate intPredicate = null;
            intPredicate.test(this.e);
            throw null;
        }
        this.c = false;
        return false;
    }

    @Override // j$.util.stream.i4, j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        if (this.b.get()) {
            return null;
        }
        return (Spliterator.OfInt) super.trySplit();
    }
}
