package j$.util.concurrent;

import j$.util.F;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public final class x implements F {

    /* renamed from: a  reason: collision with root package name */
    public long f11839a;
    public final long b;
    public final long c;
    public final long d;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.j(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.com.android.tools.r8.a.m(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.o(this, i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.z(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public x(long j, long j2, long j3, long j4) {
        this.f11839a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
    }

    @Override // j$.util.Spliterator
    /* renamed from: a */
    public final x trySplit() {
        long j = this.f11839a;
        long j2 = (this.b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f11839a = j2;
        return new x(j, j2, this.c, this.d);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.b - this.f11839a;
    }

    @Override // j$.util.I
    public final boolean tryAdvance(LongConsumer longConsumer) {
        longConsumer.getClass();
        long j = this.f11839a;
        if (j < this.b) {
            longConsumer.accept(ThreadLocalRandom.current().c(this.c, this.d));
            this.f11839a = j + 1;
            return true;
        }
        return false;
    }

    @Override // j$.util.I
    public final void forEachRemaining(LongConsumer longConsumer) {
        longConsumer.getClass();
        long j = this.f11839a;
        long j2 = this.b;
        if (j < j2) {
            this.f11839a = j2;
            ThreadLocalRandom current = ThreadLocalRandom.current();
            do {
                longConsumer.accept(current.c(this.c, this.d));
                j++;
            } while (j < j2);
        }
    }
}
