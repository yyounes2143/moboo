package j$.util.concurrent;

import j$.util.A;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
/* loaded from: classes2.dex */
public final class v implements A {

    /* renamed from: a  reason: collision with root package name */
    public long f11837a;
    public final long b;
    public final double c;
    public final double d;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.h(this, consumer);
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
        return j$.com.android.tools.r8.a.x(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public v(long j, long j2, double d, double d2) {
        this.f11837a = j;
        this.b = j2;
        this.c = d;
        this.d = d2;
    }

    @Override // j$.util.Spliterator
    /* renamed from: a */
    public final v trySplit() {
        long j = this.f11837a;
        long j2 = (this.b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f11837a = j2;
        return new v(j, j2, this.c, this.d);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.b - this.f11837a;
    }

    @Override // j$.util.I
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        long j = this.f11837a;
        if (j < this.b) {
            doubleConsumer.accept(ThreadLocalRandom.current().a(this.c, this.d));
            this.f11837a = j + 1;
            return true;
        }
        return false;
    }

    @Override // j$.util.I
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        long j = this.f11837a;
        long j2 = this.b;
        if (j < j2) {
            this.f11837a = j2;
            ThreadLocalRandom current = ThreadLocalRandom.current();
            do {
                doubleConsumer.accept(current.a(this.c, this.d));
                j++;
            } while (j < j2);
        }
    }
}
