package j$.util.stream;

import java.util.function.DoubleConsumer;
/* renamed from: j$.util.stream.v  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2286v extends AbstractC2296x {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2286v(AbstractC2182a abstractC2182a, int i, Object obj, int i2) {
        super(abstractC2182a, i, 1);
        this.n = i2;
        this.o = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2286v(AbstractC2301y abstractC2301y, DoubleConsumer doubleConsumer) {
        super(abstractC2301y, 0, 1);
        this.n = 1;
        this.o = doubleConsumer;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        switch (this.n) {
            case 0:
                return new C2281u(this, interfaceC2225i2);
            case 1:
                return new C2257p(this, interfaceC2225i2, 5);
            case 2:
                return new C2237l(this, interfaceC2225i2, 6);
            default:
                return new V1(this, interfaceC2225i2);
        }
    }
}
