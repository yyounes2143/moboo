package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
/* loaded from: classes2.dex */
public final class P extends CountedCompleter {

    /* renamed from: a  reason: collision with root package name */
    public Spliterator f11886a;
    public final InterfaceC2225i2 b;
    public final AbstractC2182a c;
    public long d;

    public P(AbstractC2182a abstractC2182a, Spliterator spliterator, InterfaceC2225i2 interfaceC2225i2) {
        super(null);
        this.b = interfaceC2225i2;
        this.c = abstractC2182a;
        this.f11886a = spliterator;
        this.d = 0L;
    }

    public P(P p, Spliterator spliterator) {
        super(p);
        this.f11886a = spliterator;
        this.b = p.b;
        this.d = p.d;
        this.c = p.c;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.f11886a;
        long estimateSize = spliterator.estimateSize();
        long j = this.d;
        if (j == 0) {
            j = AbstractC2197d.e(estimateSize);
            this.d = j;
        }
        boolean l = X2.SHORT_CIRCUIT.l(this.c.f);
        InterfaceC2225i2 interfaceC2225i2 = this.b;
        boolean z = false;
        P p = this;
        while (true) {
            if (l && interfaceC2225i2.o()) {
                break;
            } else if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            } else {
                P p2 = new P(p, trySplit);
                p.addToPendingCount(1);
                if (z) {
                    spliterator = trySplit;
                } else {
                    P p3 = p;
                    p = p2;
                    p2 = p3;
                }
                z = !z;
                p.fork();
                p = p2;
                estimateSize = spliterator.estimateSize();
            }
        }
        p.c.z(spliterator, interfaceC2225i2);
        p.f11886a = null;
        p.propagateCompletion();
    }
}
