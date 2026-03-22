package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class a4 extends AbstractC2197d {
    public final AbstractC2182a h;
    public final IntFunction i;
    public final boolean j;
    public long k;
    public long l;

    @Override // j$.util.stream.AbstractC2197d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC2197d abstractC2197d = this.d;
        if (abstractC2197d != null) {
            if (this.j) {
                a4 a4Var = (a4) abstractC2197d;
                long j = a4Var.l;
                this.l = j;
                if (j == a4Var.k) {
                    this.l = j + ((a4) this.e).l;
                }
            }
            a4 a4Var2 = (a4) abstractC2197d;
            long j2 = a4Var2.k;
            a4 a4Var3 = (a4) this.e;
            this.k = j2 + a4Var3.k;
            C0 C = a4Var2.k == 0 ? (C0) a4Var3.f : a4Var3.k == 0 ? (C0) a4Var2.f : AbstractC2273s1.C(this.h.H(), (C0) ((a4) this.d).f, (C0) ((a4) this.e).f);
            if (b() && this.j) {
                C = C.i(this.l, C.count(), this.i);
            }
            this.f = C;
        }
        super.onCompletion(countedCompleter);
    }

    public a4(AbstractC2182a abstractC2182a, AbstractC2182a abstractC2182a2, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC2182a2, spliterator);
        this.h = abstractC2182a;
        this.i = intFunction;
        this.j = X2.ORDERED.l(abstractC2182a2.f);
    }

    public a4(a4 a4Var, Spliterator spliterator) {
        super(a4Var, spliterator);
        this.h = a4Var.h;
        this.i = a4Var.i;
        this.j = a4Var.j;
    }

    @Override // j$.util.stream.AbstractC2197d
    public final AbstractC2197d c(Spliterator spliterator) {
        return new a4(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2197d
    public final Object a() {
        long j;
        boolean b = b();
        if (!b && this.j) {
            X2 x2 = X2.SIZED;
            AbstractC2182a abstractC2182a = this.h;
            int i = abstractC2182a.c;
            int i2 = x2.e;
            if ((i & i2) == i2) {
                j = abstractC2182a.F(this.b);
                InterfaceC2282u0 J = this.f11900a.J(j, this.i);
                Z3 j2 = ((Y3) this.h).j(J, (this.j || b) ? false : true);
                this.f11900a.R(this.b, j2);
                C0 a2 = J.a();
                this.k = a2.count();
                this.l = j2.g();
                return a2;
            }
        }
        j = -1;
        InterfaceC2282u0 J2 = this.f11900a.J(j, this.i);
        Z3 j22 = ((Y3) this.h).j(J2, (this.j || b) ? false : true);
        this.f11900a.R(this.b, j22);
        C0 a22 = J2.a();
        this.k = a22.count();
        this.l = j22.g();
        return a22;
    }
}
