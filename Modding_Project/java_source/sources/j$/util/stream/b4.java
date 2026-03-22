package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class b4 extends AbstractC2187b {
    public final AbstractC2182a j;
    public final IntFunction k;
    public final boolean l;
    public long m;
    public boolean n;
    public volatile boolean o;

    @Override // j$.util.stream.AbstractC2187b
    public final void f() {
        this.i = true;
        if (this.l && this.o) {
            d(AbstractC2273s1.E(this.j.H()));
        }
    }

    @Override // j$.util.stream.AbstractC2197d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object C;
        AbstractC2197d abstractC2197d = this.d;
        if (abstractC2197d != null) {
            this.n = ((b4) abstractC2197d).n | ((b4) this.e).n;
            if (this.l && this.i) {
                this.m = 0L;
                C = AbstractC2273s1.E(this.j.H());
            } else {
                if (this.l) {
                    b4 b4Var = (b4) this.d;
                    if (b4Var.n) {
                        this.m = b4Var.m;
                        C = (C0) b4Var.i();
                    }
                }
                b4 b4Var2 = (b4) this.d;
                long j = b4Var2.m;
                b4 b4Var3 = (b4) this.e;
                this.m = j + b4Var3.m;
                if (b4Var2.m == 0) {
                    C = (C0) b4Var3.i();
                } else if (b4Var3.m == 0) {
                    C = (C0) b4Var2.i();
                } else {
                    C = AbstractC2273s1.C(this.j.H(), (C0) ((b4) this.d).i(), (C0) ((b4) this.e).i());
                }
            }
            d(C);
        }
        this.o = true;
        super.onCompletion(countedCompleter);
    }

    public b4(AbstractC2182a abstractC2182a, AbstractC2182a abstractC2182a2, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC2182a2, spliterator);
        this.j = abstractC2182a;
        this.k = intFunction;
        this.l = X2.ORDERED.l(abstractC2182a2.f);
    }

    public b4(b4 b4Var, Spliterator spliterator) {
        super(b4Var, spliterator);
        this.j = b4Var.j;
        this.k = b4Var.k;
        this.l = b4Var.l;
    }

    @Override // j$.util.stream.AbstractC2197d
    public final AbstractC2197d c(Spliterator spliterator) {
        return new b4(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2187b
    public final Object h() {
        return AbstractC2273s1.E(this.j.H());
    }

    @Override // j$.util.stream.AbstractC2197d
    public final Object a() {
        InterfaceC2282u0 J = this.f11900a.J(-1L, this.k);
        InterfaceC2225i2 N = this.j.N(this.f11900a.f, J);
        AbstractC2182a abstractC2182a = this.f11900a;
        boolean A = abstractC2182a.A(this.b, abstractC2182a.S(N));
        this.n = A;
        if (A) {
            g();
        }
        C0 a2 = J.a();
        this.m = a2.count();
        return a2;
    }
}
