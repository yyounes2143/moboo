package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
/* loaded from: classes2.dex */
public final class U1 extends AbstractC2197d {
    public final AbstractC2273s1 h;

    @Override // j$.util.stream.AbstractC2197d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC2197d abstractC2197d = this.d;
        if (abstractC2197d != null) {
            N1 n1 = (N1) ((U1) abstractC2197d).f;
            n1.h((N1) ((U1) this.e).f);
            this.f = n1;
        }
        super.onCompletion(countedCompleter);
    }

    public U1(AbstractC2273s1 abstractC2273s1, AbstractC2182a abstractC2182a, Spliterator spliterator) {
        super(abstractC2182a, spliterator);
        this.h = abstractC2273s1;
    }

    public U1(U1 u1, Spliterator spliterator) {
        super(u1, spliterator);
        this.h = u1.h;
    }

    @Override // j$.util.stream.AbstractC2197d
    public final AbstractC2197d c(Spliterator spliterator) {
        return new U1(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2197d
    public final Object a() {
        AbstractC2182a abstractC2182a = this.f11900a;
        N1 Q = this.h.Q();
        abstractC2182a.R(this.b, Q);
        return Q;
    }
}
