package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;
/* renamed from: j$.util.stream.d  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2197d extends CountedCompleter {
    public static final int g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC2182a f11900a;
    public Spliterator b;
    public long c;
    public AbstractC2197d d;
    public AbstractC2197d e;
    public Object f;

    public abstract Object a();

    public abstract AbstractC2197d c(Spliterator spliterator);

    public AbstractC2197d(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        super(null);
        this.f11900a = abstractC2182a;
        this.b = spliterator;
        this.c = 0L;
    }

    public AbstractC2197d(AbstractC2197d abstractC2197d, Spliterator spliterator) {
        super(abstractC2197d);
        this.b = spliterator;
        this.f11900a = abstractC2197d.f11900a;
        this.c = abstractC2197d.c;
    }

    public static long e(long j) {
        long j2 = j / g;
        if (j2 > 0) {
            return j2;
        }
        return 1L;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }

    public void d(Object obj) {
        this.f = obj;
    }

    public final boolean b() {
        return ((AbstractC2197d) getCompleter()) == null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long estimateSize = spliterator.estimateSize();
        long j = this.c;
        if (j == 0) {
            j = e(estimateSize);
            this.c = j;
        }
        boolean z = false;
        AbstractC2197d abstractC2197d = this;
        while (estimateSize > j && (trySplit = spliterator.trySplit()) != null) {
            AbstractC2197d c = abstractC2197d.c(trySplit);
            abstractC2197d.d = c;
            AbstractC2197d c2 = abstractC2197d.c(spliterator);
            abstractC2197d.e = c2;
            abstractC2197d.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                abstractC2197d = c;
                c = c2;
            } else {
                abstractC2197d = c2;
            }
            z = !z;
            c.fork();
            estimateSize = spliterator.estimateSize();
        }
        abstractC2197d.d(abstractC2197d.a());
        abstractC2197d.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.b = null;
        this.e = null;
        this.d = null;
    }
}
