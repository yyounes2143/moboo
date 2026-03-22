package j$.util.stream;

import java.util.function.Consumer;
/* renamed from: j$.util.stream.q  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2262q extends Z1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2262q(AbstractC2182a abstractC2182a, int i, Object obj, int i2) {
        super(abstractC2182a, i, 1);
        this.n = i2;
        this.o = obj;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        switch (this.n) {
            case 0:
                return new C2257p(this, interfaceC2225i2, 0);
            case 1:
                return new Q(this, interfaceC2225i2, 0);
            case 2:
                return new C2183a0(this, interfaceC2225i2, 0);
            case 3:
                return new C2237l(this, interfaceC2225i2, 1);
            case 4:
                return new C2237l(this, interfaceC2225i2, 2);
            case 5:
                return new C2237l(this, interfaceC2225i2, 3);
            default:
                return new C2232k(this, interfaceC2225i2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2262q(AbstractC2185a2 abstractC2185a2, Consumer consumer) {
        super(abstractC2185a2, 0, 1);
        this.n = 3;
        this.o = consumer;
    }
}
