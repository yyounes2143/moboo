package j$.util.stream;

import java.util.function.LongConsumer;
/* renamed from: j$.util.stream.d0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2198d0 extends AbstractC2208f0 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2198d0(AbstractC2182a abstractC2182a, int i, Object obj, int i2) {
        super(abstractC2182a, i, 1);
        this.n = i2;
        this.o = obj;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        switch (this.n) {
            case 0:
                return new C2193c0(this, interfaceC2225i2);
            case 1:
                return new C2183a0(this, interfaceC2225i2, 5);
            case 2:
                return new V1(this, interfaceC2225i2);
            default:
                return new C2237l(this, interfaceC2225i2, 5);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2198d0(AbstractC2213g0 abstractC2213g0, LongConsumer longConsumer) {
        super(abstractC2213g0, 0, 1);
        this.n = 1;
        this.o = longConsumer;
    }
}
