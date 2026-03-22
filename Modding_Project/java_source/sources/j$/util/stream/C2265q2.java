package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
/* renamed from: j$.util.stream.q2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2265q2 extends AbstractC2296x {
    public final /* synthetic */ long n;
    public final /* synthetic */ long o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2265q2(AbstractC2301y abstractC2301y, int i, long j, long j2) {
        super(abstractC2301y, i, 0);
        this.n = j;
        this.o = j2;
    }

    /* JADX WARN: Type inference failed for: r8v0, types: [j$.util.stream.E3, j$.util.Spliterator] */
    @Override // j$.util.stream.AbstractC2182a
    public final Spliterator L(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        long F = abstractC2182a.F(spliterator);
        int i = (F > 0L ? 1 : (F == 0L ? 0 : -1));
        long j = this.o;
        if (i <= 0 || !spliterator.hasCharacteristics(16384)) {
            if (!X2.ORDERED.l(abstractC2182a.f)) {
                j$.util.A a2 = (j$.util.A) abstractC2182a.T(spliterator);
                long j2 = this.n;
                if (j2 <= F) {
                    long j3 = F - j2;
                    if (j >= 0) {
                        j3 = Math.min(j, j3);
                    }
                    j = j3;
                    j2 = 0;
                }
                return new E3(a2, j2, j);
            }
            return ((C0) new C2274s2(this, abstractC2182a, spliterator, new Z(16), this.n, this.o).invoke()).spliterator();
        }
        long j4 = this.n;
        return new AbstractC2290v3((j$.util.A) abstractC2182a.T(spliterator), j4, AbstractC2279t2.c(j4, j));
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [j$.util.stream.E3, j$.util.Spliterator] */
    @Override // j$.util.stream.AbstractC2182a
    public final C0 K(AbstractC2182a abstractC2182a, Spliterator spliterator, IntFunction intFunction) {
        long j;
        long j2;
        long F = abstractC2182a.F(spliterator);
        if (F > 0 && spliterator.hasCharacteristics(16384)) {
            AbstractC2182a abstractC2182a2 = abstractC2182a;
            while (abstractC2182a2.e > 0) {
                abstractC2182a2 = abstractC2182a2.b;
            }
            return AbstractC2273s1.z(abstractC2182a, AbstractC2279t2.b(abstractC2182a2.H(), spliterator, this.n, this.o), true);
        } else if (!X2.ORDERED.l(abstractC2182a.f)) {
            j$.util.A a2 = (j$.util.A) abstractC2182a.T(spliterator);
            long j3 = this.n;
            int i = (j3 > F ? 1 : (j3 == F ? 0 : -1));
            long j4 = this.o;
            if (i <= 0) {
                long j5 = F - j3;
                j = j4 >= 0 ? Math.min(j4, j5) : j5;
                j2 = 0;
            } else {
                j = j4;
                j2 = j3;
            }
            return AbstractC2273s1.z(this, new E3(a2, j2, j), true);
        } else {
            return (C0) new C2274s2(this, abstractC2182a, spliterator, intFunction, this.n, this.o).invoke();
        }
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        return new C2260p2(this, interfaceC2225i2);
    }
}
