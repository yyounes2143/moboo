package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
/* loaded from: classes2.dex */
public final class d4 extends f4 {
    @Override // j$.util.stream.i4
    public final Spliterator c(Spliterator spliterator) {
        return new i4((Spliterator.OfInt) spliterator, this);
    }

    @Override // j$.util.Spliterator.OfInt
    public final boolean tryAdvance(IntConsumer intConsumer) {
        boolean z = this.c;
        Spliterator spliterator = this.f11913a;
        if (z) {
            this.c = false;
            boolean tryAdvance = ((Spliterator.OfInt) spliterator).tryAdvance((IntConsumer) this);
            if (tryAdvance && b()) {
                IntPredicate intPredicate = null;
                intPredicate.test(this.e);
                throw null;
            }
            if (tryAdvance) {
                intConsumer.accept(this.e);
            }
            return tryAdvance;
        }
        return ((Spliterator.OfInt) spliterator).tryAdvance(intConsumer);
    }
}
