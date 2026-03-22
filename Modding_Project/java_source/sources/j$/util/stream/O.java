package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountedCompleter;
/* loaded from: classes2.dex */
public final class O extends CountedCompleter {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC2182a f11883a;
    public Spliterator b;
    public final long c;
    public final ConcurrentHashMap d;
    public final N e;
    public final O f;
    public C0 g;

    public O(AbstractC2182a abstractC2182a, Spliterator spliterator, N n) {
        super(null);
        this.f11883a = abstractC2182a;
        this.b = spliterator;
        this.c = AbstractC2197d.e(spliterator.estimateSize());
        this.d = new ConcurrentHashMap(Math.max(16, AbstractC2197d.g << 1));
        this.e = n;
        this.f = null;
    }

    public O(O o, Spliterator spliterator, O o2) {
        super(o);
        this.f11883a = o.f11883a;
        this.b = spliterator;
        this.c = o.c;
        this.d = o.d;
        this.e = o.e;
        this.f = o2;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long j = this.c;
        boolean z = false;
        O o = this;
        while (spliterator.estimateSize() > j && (trySplit = spliterator.trySplit()) != null) {
            O o2 = new O(o, trySplit, o.f);
            O o3 = new O(o, spliterator, o2);
            o.addToPendingCount(1);
            o3.addToPendingCount(1);
            o.d.put(o2, o3);
            if (o.f != null) {
                o2.addToPendingCount(1);
                if (o.d.replace(o.f, o, o2)) {
                    o.addToPendingCount(-1);
                } else {
                    o2.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = trySplit;
                o = o2;
                o2 = o3;
            } else {
                o = o3;
            }
            z = !z;
            o2.fork();
        }
        if (o.getPendingCount() > 0) {
            C2252o c2252o = new C2252o(11);
            AbstractC2182a abstractC2182a = o.f11883a;
            InterfaceC2282u0 J = abstractC2182a.J(abstractC2182a.F(spliterator), c2252o);
            o.f11883a.R(spliterator, J);
            o.g = J.a();
            o.b = null;
        }
        o.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        C0 c0 = this.g;
        if (c0 != null) {
            c0.forEach(this.e);
            this.g = null;
        } else {
            Spliterator spliterator = this.b;
            if (spliterator != null) {
                this.f11883a.R(spliterator, this.e);
                this.b = null;
            }
        }
        O o = (O) this.d.remove(this);
        if (o != null) {
            o.tryComplete();
        }
    }
}
