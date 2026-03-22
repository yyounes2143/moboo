package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: j$.util.stream.b  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2187b extends AbstractC2197d {
    public final AtomicReference h;
    public volatile boolean i;

    public abstract Object h();

    public AbstractC2187b(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        super(abstractC2182a, spliterator);
        this.h = new AtomicReference(null);
    }

    public AbstractC2187b(AbstractC2187b abstractC2187b, Spliterator spliterator) {
        super(abstractC2187b, spliterator);
        this.h = abstractC2187b.h;
    }

    @Override // j$.util.stream.AbstractC2197d, java.util.concurrent.CountedCompleter
    public final void compute() {
        Object obj;
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long estimateSize = spliterator.estimateSize();
        long j = this.c;
        if (j == 0) {
            j = AbstractC2197d.e(estimateSize);
            this.c = j;
        }
        AtomicReference atomicReference = this.h;
        boolean z = false;
        AbstractC2187b abstractC2187b = this;
        while (true) {
            obj = atomicReference.get();
            if (obj != null) {
                break;
            }
            boolean z2 = abstractC2187b.i;
            if (!z2) {
                CountedCompleter<?> completer = abstractC2187b.getCompleter();
                while (true) {
                    AbstractC2187b abstractC2187b2 = (AbstractC2187b) ((AbstractC2197d) completer);
                    if (z2 || abstractC2187b2 == null) {
                        break;
                    }
                    z2 = abstractC2187b2.i;
                    completer = abstractC2187b2.getCompleter();
                }
            }
            if (z2) {
                obj = abstractC2187b.h();
                break;
            } else if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            } else {
                AbstractC2187b abstractC2187b3 = (AbstractC2187b) abstractC2187b.c(trySplit);
                abstractC2187b.d = abstractC2187b3;
                AbstractC2187b abstractC2187b4 = (AbstractC2187b) abstractC2187b.c(spliterator);
                abstractC2187b.e = abstractC2187b4;
                abstractC2187b.setPendingCount(1);
                if (z) {
                    spliterator = trySplit;
                    abstractC2187b = abstractC2187b3;
                    abstractC2187b3 = abstractC2187b4;
                } else {
                    abstractC2187b = abstractC2187b4;
                }
                z = !z;
                abstractC2187b3.fork();
                estimateSize = spliterator.estimateSize();
            }
        }
        obj = abstractC2187b.a();
        abstractC2187b.d(obj);
        abstractC2187b.tryComplete();
    }

    @Override // j$.util.stream.AbstractC2197d
    public final void d(Object obj) {
        if (!b()) {
            this.f = obj;
        } else if (obj != null) {
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
            }
        }
    }

    @Override // j$.util.stream.AbstractC2197d, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final Object getRawResult() {
        return i();
    }

    public final Object i() {
        if (b()) {
            Object obj = this.h.get();
            return obj == null ? h() : obj;
        }
        return this.f;
    }

    public void f() {
        this.i = true;
    }

    public final void g() {
        AbstractC2187b abstractC2187b = this;
        for (AbstractC2187b abstractC2187b2 = (AbstractC2187b) ((AbstractC2197d) getCompleter()); abstractC2187b2 != null; abstractC2187b2 = (AbstractC2187b) ((AbstractC2197d) abstractC2187b2.getCompleter())) {
            if (abstractC2187b2.d == abstractC2187b) {
                AbstractC2187b abstractC2187b3 = (AbstractC2187b) abstractC2187b2.e;
                if (!abstractC2187b3.i) {
                    abstractC2187b3.f();
                }
            }
            abstractC2187b = abstractC2187b2;
        }
    }
}
