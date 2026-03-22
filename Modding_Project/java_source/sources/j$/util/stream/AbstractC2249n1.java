package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.concurrent.CountedCompleter;
import java.util.function.Consumer;
/* renamed from: j$.util.stream.n1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2249n1 extends CountedCompleter implements InterfaceC2225i2 {

    /* renamed from: a  reason: collision with root package name */
    public final Spliterator f11921a;
    public final AbstractC2182a b;
    public final long c;
    public final long d;
    public final long e;
    public int f;
    public int g;

    public /* synthetic */ void accept(double d) {
        AbstractC2273s1.a();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2273s1.k();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2273s1.l();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public abstract AbstractC2249n1 b(Spliterator spliterator, long j, long j2);

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void l() {
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ boolean o() {
        return false;
    }

    public AbstractC2249n1(Spliterator spliterator, AbstractC2182a abstractC2182a, int i) {
        this.f11921a = spliterator;
        this.b = abstractC2182a;
        this.c = AbstractC2197d.e(spliterator.estimateSize());
        this.d = 0L;
        this.e = i;
    }

    public AbstractC2249n1(AbstractC2249n1 abstractC2249n1, Spliterator spliterator, long j, long j2, int i) {
        super(abstractC2249n1);
        this.f11921a = spliterator;
        this.b = abstractC2249n1.b;
        this.c = abstractC2249n1.c;
        this.d = j;
        this.e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f11921a;
        AbstractC2249n1 abstractC2249n1 = this;
        while (spliterator.estimateSize() > abstractC2249n1.c && (trySplit = spliterator.trySplit()) != null) {
            abstractC2249n1.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            AbstractC2249n1 abstractC2249n12 = abstractC2249n1;
            abstractC2249n12.b(trySplit, abstractC2249n1.d, estimateSize).fork();
            abstractC2249n1 = abstractC2249n12.b(spliterator, abstractC2249n12.d + estimateSize, abstractC2249n12.e - estimateSize);
        }
        AbstractC2249n1 abstractC2249n13 = abstractC2249n1;
        abstractC2249n13.b.R(spliterator, abstractC2249n13);
        abstractC2249n13.propagateCompletion();
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        long j2 = this.e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.d;
        this.f = i;
        this.g = i + ((int) j2);
    }
}
