package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import java.util.function.LongPredicate;
/* loaded from: classes2.dex */
public final class g4 extends i4 implements LongConsumer, j$.util.F {
    public long e;
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g4(Spliterator spliterator, int i) {
        super(spliterator);
        this.f = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g4(Spliterator spliterator, i4 i4Var, int i) {
        super(spliterator, i4Var);
        this.f = i;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.i4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.j(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.z(this, consumer);
    }

    @Override // j$.util.I
    public final void forEachRemaining(LongConsumer longConsumer) {
        do {
        } while (tryAdvance(longConsumer));
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.d = (this.d + 1) & 63;
        this.e = j;
    }

    @Override // j$.util.stream.i4
    public final Spliterator c(Spliterator spliterator) {
        switch (this.f) {
            case 0:
                return new g4((j$.util.F) spliterator, this, 0);
            default:
                return new g4((j$.util.F) spliterator, this, 1);
        }
    }

    @Override // j$.util.stream.i4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.I trySplit() {
        switch (this.f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.i4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.F
    public final boolean tryAdvance(LongConsumer longConsumer) {
        switch (this.f) {
            case 0:
                boolean z = this.c;
                Spliterator spliterator = this.f11913a;
                if (z) {
                    this.c = false;
                    boolean tryAdvance = ((j$.util.F) spliterator).tryAdvance((LongConsumer) this);
                    if (tryAdvance && b()) {
                        LongPredicate longPredicate = null;
                        longPredicate.test(this.e);
                        throw null;
                    } else if (tryAdvance) {
                        longConsumer.accept(this.e);
                        return tryAdvance;
                    } else {
                        return tryAdvance;
                    }
                }
                return ((j$.util.F) spliterator).tryAdvance(longConsumer);
            default:
                if (this.c && b() && ((j$.util.F) this.f11913a).tryAdvance((LongConsumer) this)) {
                    LongPredicate longPredicate2 = null;
                    longPredicate2.test(this.e);
                    throw null;
                }
                this.c = false;
                return false;
        }
    }

    @Override // j$.util.stream.i4, j$.util.Spliterator
    public j$.util.F trySplit() {
        switch (this.f) {
            case 1:
                if (this.b.get()) {
                    return null;
                }
                return (j$.util.F) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.I
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f) {
            case 1:
                tryAdvance((LongConsumer) obj);
                return false;
            default:
                return tryAdvance((LongConsumer) obj);
        }
    }
}
