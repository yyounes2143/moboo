package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;
/* renamed from: j$.util.stream.a0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2183a0 extends AbstractC2200d2 {
    public final /* synthetic */ int b;
    public final /* synthetic */ AbstractC2182a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2183a0(AbstractC2182a abstractC2182a, InterfaceC2225i2 interfaceC2225i2, int i) {
        super(interfaceC2225i2);
        this.b = i;
        this.c = abstractC2182a;
    }

    @Override // j$.util.stream.AbstractC2200d2, j$.util.stream.InterfaceC2225i2
    public void m(long j) {
        switch (this.b) {
            case 4:
                this.f11901a.m(-1L);
                return;
            default:
                super.m(j);
                return;
        }
    }

    @Override // j$.util.stream.InterfaceC2220h2, j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        switch (this.b) {
            case 0:
                this.f11901a.accept((InterfaceC2225i2) ((LongFunction) ((C2262q) this.c).o).apply(j));
                return;
            case 1:
                ((C2276t) this.c).getClass();
                LongUnaryOperator longUnaryOperator = null;
                longUnaryOperator.applyAsLong(j);
                throw null;
            case 2:
                ((C2271s) this.c).getClass();
                LongToIntFunction longToIntFunction = null;
                longToIntFunction.applyAsInt(j);
                throw null;
            case 3:
                ((r) this.c).getClass();
                LongToDoubleFunction longToDoubleFunction = null;
                longToDoubleFunction.applyAsDouble(j);
                throw null;
            case 4:
                ((C2276t) this.c).getClass();
                LongPredicate longPredicate = null;
                longPredicate.test(j);
                throw null;
            default:
                ((LongConsumer) ((C2198d0) this.c).o).accept(j);
                this.f11901a.accept(j);
                return;
        }
    }
}
