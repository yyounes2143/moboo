package j$.util.concurrent;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final class w implements Spliterator.OfInt {

    /* renamed from: a  reason: collision with root package name */
    public long f11838a;
    public final long b;
    public final int c;
    public final int d;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.i(this, consumer);
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
        return j$.com.android.tools.r8.a.y(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public w(long j, long j2, int i, int i2) {
        this.f11838a = j;
        this.b = j2;
        this.c = i;
        this.d = i2;
    }

    @Override // j$.util.Spliterator
    /* renamed from: a */
    public final w trySplit() {
        long j = this.f11838a;
        long j2 = (this.b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f11838a = j2;
        return new w(j, j2, this.c, this.d);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.b - this.f11838a;
    }

    @Override // j$.util.I
    public final boolean tryAdvance(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j = this.f11838a;
        if (j < this.b) {
            intConsumer.accept(ThreadLocalRandom.current().b(this.c, this.d));
            this.f11838a = j + 1;
            return true;
        }
        return false;
    }

    @Override // j$.util.I
    public final void forEachRemaining(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j = this.f11838a;
        long j2 = this.b;
        if (j < j2) {
            this.f11838a = j2;
            ThreadLocalRandom current = ThreadLocalRandom.current();
            do {
                intConsumer.accept(current.b(this.c, this.d));
                j++;
            } while (j < j2);
        }
    }
}
