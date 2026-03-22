package j$.util.stream;

import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final class S extends X {
    public final /* synthetic */ int m;
    public final /* synthetic */ Object n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ S(AbstractC2182a abstractC2182a, int i, Object obj, int i2) {
        super(abstractC2182a, i);
        this.m = i2;
        this.n = obj;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        switch (this.m) {
            case 0:
                return new Q(this, interfaceC2225i2, 1);
            case 1:
                return new U(this, interfaceC2225i2);
            case 2:
                return new C2237l(this, interfaceC2225i2, 4);
            default:
                return new X1(this, interfaceC2225i2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S(Y y, IntConsumer intConsumer) {
        super(y, 0);
        this.m = 0;
        this.n = intConsumer;
    }
}
