package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class H extends AbstractC2187b {
    public final B j;
    public final boolean k;

    public H(B b, boolean z, AbstractC2182a abstractC2182a, Spliterator spliterator) {
        super(abstractC2182a, spliterator);
        this.k = z;
        this.j = b;
    }

    public H(H h, Spliterator spliterator) {
        super(h, spliterator);
        this.k = h.k;
        this.j = h.j;
    }

    @Override // j$.util.stream.AbstractC2197d
    public final AbstractC2197d c(Spliterator spliterator) {
        return new H(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2187b
    public final Object h() {
        return this.j.b;
    }

    @Override // j$.util.stream.AbstractC2197d
    public final Object a() {
        AbstractC2182a abstractC2182a = this.f11900a;
        J3 j3 = (J3) this.j.d.get();
        abstractC2182a.R(this.b, j3);
        Object obj = j3.get();
        if (this.k) {
            if (obj != null) {
                AbstractC2197d abstractC2197d = this;
                while (abstractC2197d != null) {
                    AbstractC2197d abstractC2197d2 = (AbstractC2197d) abstractC2197d.getCompleter();
                    if (abstractC2197d2 != null && abstractC2197d2.d != abstractC2197d) {
                        g();
                        return obj;
                    }
                    abstractC2197d = abstractC2197d2;
                }
                AtomicReference atomicReference = this.h;
                while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
                }
                return obj;
            }
        } else if (obj != null) {
            AtomicReference atomicReference2 = this.h;
            while (!atomicReference2.compareAndSet(null, obj) && atomicReference2.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC2197d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        if (this.k) {
            H h = (H) this.d;
            H h2 = null;
            while (true) {
                if (h != h2) {
                    Object i = h.i();
                    if (i == null || !this.j.c.test(i)) {
                        h2 = h;
                        h = (H) this.e;
                    } else {
                        d(i);
                        AbstractC2197d abstractC2197d = this;
                        while (true) {
                            if (abstractC2197d == null) {
                                AtomicReference atomicReference = this.h;
                                while (!atomicReference.compareAndSet(null, i) && atomicReference.get() == null) {
                                }
                            } else {
                                AbstractC2197d abstractC2197d2 = (AbstractC2197d) abstractC2197d.getCompleter();
                                if (abstractC2197d2 != null && abstractC2197d2.d != abstractC2197d) {
                                    g();
                                    break;
                                }
                                abstractC2197d = abstractC2197d2;
                            }
                        }
                    }
                } else {
                    break;
                }
            }
        }
        super.onCompletion(countedCompleter);
    }
}
