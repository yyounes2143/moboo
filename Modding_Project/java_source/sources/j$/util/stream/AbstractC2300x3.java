package j$.util.stream;

import j$.util.Spliterator;
/* renamed from: j$.util.stream.x3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2300x3 {

    /* renamed from: a  reason: collision with root package name */
    public final long f11933a;
    public final long b;
    public Spliterator c;
    public long d;
    public long e;

    public abstract Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4);

    public AbstractC2300x3(Spliterator spliterator, long j, long j2, long j3, long j4) {
        this.c = spliterator;
        this.f11933a = j;
        this.b = j2;
        this.d = j3;
        this.e = j4;
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public final Spliterator m433trySplit() {
        long j = this.e;
        if (this.f11933a >= j || this.d >= j) {
            return null;
        }
        while (true) {
            Spliterator trySplit = this.c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.d;
            long min = Math.min(estimateSize, this.b);
            long j2 = this.f11933a;
            if (j2 >= min) {
                this.d = min;
            } else {
                long j3 = this.b;
                if (min >= j3) {
                    this.c = trySplit;
                    this.e = min;
                } else {
                    long j4 = this.d;
                    if (j4 >= j2 && estimateSize <= j3) {
                        this.d = min;
                        return trySplit;
                    }
                    this.d = min;
                    return a(trySplit, j2, j3, j4, min);
                }
            }
        }
    }

    public final long estimateSize() {
        long j = this.e;
        long j2 = this.f11933a;
        if (j2 < j) {
            return j - Math.max(j2, this.d);
        }
        return 0L;
    }

    public final int characteristics() {
        return this.c.characteristics();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.I m431trySplit() {
        return (j$.util.I) m433trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.OfInt m432trySplit() {
        return (Spliterator.OfInt) m433trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.F m430trySplit() {
        return (j$.util.F) m433trySplit();
    }

    public /* bridge */ /* synthetic */ j$.util.A trySplit() {
        return (j$.util.A) m433trySplit();
    }
}
