package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoublePredicate;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;
import java.util.function.DoubleUnaryOperator;
/* renamed from: j$.util.stream.p  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2257p extends AbstractC2190b2 {
    public final /* synthetic */ int b;
    public final /* synthetic */ AbstractC2182a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2257p(AbstractC2182a abstractC2182a, InterfaceC2225i2 interfaceC2225i2, int i) {
        super(interfaceC2225i2);
        this.b = i;
        this.c = abstractC2182a;
    }

    @Override // j$.util.stream.AbstractC2190b2, j$.util.stream.InterfaceC2225i2
    public void m(long j) {
        switch (this.b) {
            case 4:
                this.f11897a.m(-1L);
                return;
            default:
                super.m(j);
                return;
        }
    }

    @Override // j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        switch (this.b) {
            case 0:
                this.f11897a.accept((InterfaceC2225i2) ((DoubleFunction) ((C2262q) this.c).o).apply(d));
                return;
            case 1:
                ((r) this.c).getClass();
                DoubleUnaryOperator doubleUnaryOperator = null;
                doubleUnaryOperator.applyAsDouble(d);
                throw null;
            case 2:
                ((C2271s) this.c).getClass();
                DoubleToIntFunction doubleToIntFunction = null;
                doubleToIntFunction.applyAsInt(d);
                throw null;
            case 3:
                ((C2276t) this.c).getClass();
                DoubleToLongFunction doubleToLongFunction = null;
                doubleToLongFunction.applyAsLong(d);
                throw null;
            case 4:
                ((r) this.c).getClass();
                DoublePredicate doublePredicate = null;
                doublePredicate.test(d);
                throw null;
            default:
                ((DoubleConsumer) ((C2286v) this.c).o).accept(d);
                this.f11897a.accept(d);
                return;
        }
    }
}
