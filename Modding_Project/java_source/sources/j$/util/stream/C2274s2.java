package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
/* renamed from: j$.util.stream.s2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2274s2 extends AbstractC2187b {
    public final AbstractC2182a j;
    public final IntFunction k;
    public final long l;
    public final long m;
    public long n;
    public volatile boolean o;

    @Override // j$.util.stream.AbstractC2187b
    public final void f() {
        this.i = true;
        if (this.o) {
            d(AbstractC2273s1.E(this.j.H()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ea, code lost:
        if (r2 >= r0) goto L52;
     */
    @Override // j$.util.stream.AbstractC2197d, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r14) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.stream.C2274s2.onCompletion(java.util.concurrent.CountedCompleter):void");
    }

    public C2274s2(AbstractC2182a abstractC2182a, AbstractC2182a abstractC2182a2, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(abstractC2182a2, spliterator);
        this.j = abstractC2182a;
        this.k = intFunction;
        this.l = j;
        this.m = j2;
    }

    public C2274s2(C2274s2 c2274s2, Spliterator spliterator) {
        super(c2274s2, spliterator);
        this.j = c2274s2.j;
        this.k = c2274s2.k;
        this.l = c2274s2.l;
        this.m = c2274s2.m;
    }

    @Override // j$.util.stream.AbstractC2197d
    public final AbstractC2197d c(Spliterator spliterator) {
        return new C2274s2(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC2187b
    public final Object h() {
        return AbstractC2273s1.E(this.j.H());
    }

    @Override // j$.util.stream.AbstractC2197d
    public final Object a() {
        if (b()) {
            X2 x2 = X2.SIZED;
            AbstractC2182a abstractC2182a = this.j;
            int i = abstractC2182a.c;
            int i2 = x2.e;
            InterfaceC2282u0 J = this.j.J((i & i2) == i2 ? abstractC2182a.F(this.b) : -1L, this.k);
            InterfaceC2225i2 N = this.j.N(this.f11900a.f, J);
            AbstractC2182a abstractC2182a2 = this.f11900a;
            abstractC2182a2.A(this.b, abstractC2182a2.S(N));
            return J.a();
        }
        InterfaceC2282u0 J2 = this.j.J(-1L, this.k);
        if (this.l == 0) {
            InterfaceC2225i2 N2 = this.j.N(this.f11900a.f, J2);
            AbstractC2182a abstractC2182a3 = this.f11900a;
            abstractC2182a3.A(this.b, abstractC2182a3.S(N2));
        } else {
            this.f11900a.R(this.b, J2);
        }
        C0 a2 = J2.a();
        this.n = a2.count();
        this.o = true;
        this.b = null;
        return a2;
    }

    public final long j(long j) {
        if (this.o) {
            return this.n;
        }
        C2274s2 c2274s2 = (C2274s2) this.d;
        C2274s2 c2274s22 = (C2274s2) this.e;
        if (c2274s2 == null || c2274s22 == null) {
            return this.n;
        }
        long j2 = c2274s2.j(j);
        return j2 >= j ? j2 : c2274s22.j(j) + j2;
    }
}
