package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.q0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2263q0 extends AbstractC2187b {
    public final j$.util.concurrent.t j;

    public C2263q0(j$.util.concurrent.t tVar, AbstractC2182a abstractC2182a, Spliterator spliterator) {
        super(abstractC2182a, spliterator);
        this.j = tVar;
    }

    public C2263q0(C2263q0 c2263q0, Spliterator spliterator) {
        super(c2263q0, spliterator);
        this.j = c2263q0.j;
    }

    @Override // j$.util.stream.AbstractC2197d
    public final AbstractC2197d c(Spliterator spliterator) {
        return new C2263q0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2197d
    public final Object a() {
        AbstractC2182a abstractC2182a = this.f11900a;
        AbstractC2253o0 abstractC2253o0 = (AbstractC2253o0) ((Supplier) this.j.c).get();
        abstractC2182a.R(this.b, abstractC2253o0);
        boolean z = abstractC2253o0.b;
        if (z == ((EnumC2258p0) this.j.b).b) {
            Boolean valueOf = Boolean.valueOf(z);
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, valueOf) && atomicReference.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC2187b
    public final Object h() {
        return Boolean.valueOf(!((EnumC2258p0) this.j.b).b);
    }
}
