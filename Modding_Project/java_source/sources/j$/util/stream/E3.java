package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public abstract class E3 {

    /* renamed from: a  reason: collision with root package name */
    public final Spliterator f11867a;
    public final boolean b;
    public final int c;
    public final long d;
    public final AtomicLong e;

    public abstract Spliterator c(Spliterator spliterator);

    public E3(Spliterator spliterator, long j, long j2) {
        this.f11867a = spliterator;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        this.b = i < 0;
        this.d = i >= 0 ? j2 : 0L;
        this.c = 128;
        this.e = new AtomicLong(i >= 0 ? j + j2 : j);
    }

    public E3(Spliterator spliterator, E3 e3) {
        this.f11867a = spliterator;
        this.b = e3.b;
        this.e = e3.e;
        this.d = e3.d;
        this.c = e3.c;
    }

    public final long b(long j) {
        AtomicLong atomicLong;
        long j2;
        boolean z;
        long min;
        do {
            atomicLong = this.e;
            j2 = atomicLong.get();
            int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            z = this.b;
            if (i != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else if (z) {
                return j;
            } else {
                return 0L;
            }
        } while (!atomicLong.compareAndSet(j2, j2 - min));
        if (z) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.d;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    public final D3 d() {
        if (this.e.get() > 0) {
            return D3.MAYBE_MORE;
        }
        return this.b ? D3.UNLIMITED : D3.NO_MORE;
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public final Spliterator m429trySplit() {
        Spliterator trySplit;
        if (this.e.get() == 0 || (trySplit = this.f11867a.trySplit()) == null) {
            return null;
        }
        return c(trySplit);
    }

    public final long estimateSize() {
        return this.f11867a.estimateSize();
    }

    public final int characteristics() {
        return this.f11867a.characteristics() & (-16465);
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.I m427trySplit() {
        return (j$.util.I) m429trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.OfInt m428trySplit() {
        return (Spliterator.OfInt) m429trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.F m426trySplit() {
        return (j$.util.F) m429trySplit();
    }

    public /* bridge */ /* synthetic */ j$.util.A trySplit() {
        return (j$.util.A) m429trySplit();
    }
}
