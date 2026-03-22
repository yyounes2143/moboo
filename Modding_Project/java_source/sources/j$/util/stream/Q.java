package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;
/* loaded from: classes2.dex */
public final class Q extends AbstractC2195c2 {
    public final /* synthetic */ int b;
    public final /* synthetic */ AbstractC2182a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Q(AbstractC2182a abstractC2182a, InterfaceC2225i2 interfaceC2225i2, int i) {
        super(interfaceC2225i2);
        this.b = i;
        this.c = abstractC2182a;
    }

    @Override // j$.util.stream.AbstractC2195c2, j$.util.stream.InterfaceC2225i2
    public void m(long j) {
        switch (this.b) {
            case 5:
                this.f11899a.m(-1L);
                return;
            default:
                super.m(j);
                return;
        }
    }

    @Override // j$.util.stream.InterfaceC2215g2, j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        switch (this.b) {
            case 0:
                this.f11899a.accept((InterfaceC2225i2) ((IntFunction) ((C2262q) this.c).o).apply(i));
                return;
            case 1:
                ((IntConsumer) ((S) this.c).n).accept(i);
                this.f11899a.accept(i);
                return;
            case 2:
                ((C2271s) this.c).getClass();
                IntUnaryOperator intUnaryOperator = null;
                intUnaryOperator.applyAsInt(i);
                throw null;
            case 3:
                ((C2276t) this.c).getClass();
                IntToLongFunction intToLongFunction = null;
                intToLongFunction.applyAsLong(i);
                throw null;
            case 4:
                ((r) this.c).getClass();
                IntToDoubleFunction intToDoubleFunction = null;
                intToDoubleFunction.applyAsDouble(i);
                throw null;
            default:
                ((C2271s) this.c).getClass();
                IntPredicate intPredicate = null;
                intPredicate.test(i);
                throw null;
        }
    }
}
