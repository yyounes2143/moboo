package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
/* renamed from: j$.util.stream.m2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2245m2 extends W {
    public final /* synthetic */ long m;
    public final /* synthetic */ long n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2245m2(Y y, int i, long j, long j2) {
        super(y, i);
        this.m = j;
        this.n = j2;
    }

    /* JADX WARN: Type inference failed for: r8v0, types: [j$.util.stream.E3, j$.util.Spliterator] */
    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator L(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        long F = abstractC2182a.F(spliterator);
        int i = (F > 0L ? 1 : (F == 0L ? 0 : -1));
        long j = this.n;
        if (i <= 0 || !spliterator.hasCharacteristics(16384)) {
            if (!X2.ORDERED.l(abstractC2182a.f)) {
                Spliterator.OfInt ofInt = (Spliterator.OfInt) abstractC2182a.T(spliterator);
                long j2 = this.m;
                if (j2 <= F) {
                    long j3 = F - j2;
                    if (j >= 0) {
                        j3 = Math.min(j, j3);
                    }
                    j = j3;
                    j2 = 0;
                }
                return new E3(ofInt, j2, j);
            }
            return ((C0) new C2274s2(this, abstractC2182a, spliterator, new Z(14), this.m, this.n).invoke()).spliterator();
        }
        long j4 = this.m;
        return new AbstractC2290v3((Spliterator.OfInt) abstractC2182a.T(spliterator), j4, AbstractC2279t2.c(j4, j));
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [j$.util.stream.E3, j$.util.Spliterator] */
    @Override // j$.util.stream.AbstractC2182a
    public final C0 K(AbstractC2182a abstractC2182a, Spliterator spliterator, IntFunction intFunction) {
        long j;
        long j2;
        long F = abstractC2182a.F(spliterator);
        if (F <= 0 || !spliterator.hasCharacteristics(16384)) {
            if (!X2.ORDERED.l(abstractC2182a.f)) {
                Spliterator.OfInt ofInt = (Spliterator.OfInt) abstractC2182a.T(spliterator);
                long j3 = this.m;
                int i = (j3 > F ? 1 : (j3 == F ? 0 : -1));
                long j4 = this.n;
                if (i <= 0) {
                    long j5 = F - j3;
                    j = j4 >= 0 ? Math.min(j4, j5) : j5;
                    j2 = 0;
                } else {
                    j = j4;
                    j2 = j3;
                }
                return AbstractC2273s1.A(this, new E3(ofInt, j2, j), true);
            }
            return (C0) new C2274s2(this, abstractC2182a, spliterator, intFunction, this.m, this.n).invoke();
        }
        AbstractC2182a abstractC2182a2 = abstractC2182a;
        while (abstractC2182a2.e > 0) {
            abstractC2182a2 = abstractC2182a2.b;
        }
        return AbstractC2273s1.A(abstractC2182a, AbstractC2279t2.b(abstractC2182a2.H(), spliterator, this.m, this.n), true);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        return new C2240l2(this, interfaceC2225i2);
    }
}
