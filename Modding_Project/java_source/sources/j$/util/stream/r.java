package j$.util.stream;
/* loaded from: classes2.dex */
public final class r extends AbstractC2296x {
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(AbstractC2182a abstractC2182a, int i, int i2) {
        super(abstractC2182a, i, 1);
        this.n = i2;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        switch (this.n) {
            case 0:
                return new C2257p(this, interfaceC2225i2, 1);
            case 1:
                return interfaceC2225i2;
            case 2:
                return new C2257p(this, interfaceC2225i2, 4);
            case 3:
                return new T(1, interfaceC2225i2);
            case 4:
                return new Q(this, interfaceC2225i2, 4);
            case 5:
                return new AbstractC2200d2(interfaceC2225i2);
            default:
                return new C2183a0(this, interfaceC2225i2, 3);
        }
    }
}
