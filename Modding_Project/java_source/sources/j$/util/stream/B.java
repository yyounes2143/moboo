package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Predicate;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public final class B implements I3 {

    /* renamed from: a  reason: collision with root package name */
    public final int f11860a;
    public final Object b;
    public final Predicate c;
    public final Supplier d;

    public B(boolean z, Y2 y2, Object obj, Predicate predicate, Supplier supplier) {
        this.f11860a = (z ? 0 : X2.r) | X2.u;
        this.b = obj;
        this.c = predicate;
        this.d = supplier;
    }

    @Override // j$.util.stream.I3
    public final int d() {
        return this.f11860a;
    }

    @Override // j$.util.stream.I3
    public final Object b(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        J3 j3 = (J3) this.d.get();
        abstractC2182a.R(spliterator, j3);
        Object obj = j3.get();
        return obj != null ? obj : this.b;
    }

    @Override // j$.util.stream.I3
    public final Object c(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        return new H(this, X2.ORDERED.l(abstractC2182a.f), abstractC2182a, spliterator).invoke();
    }
}
