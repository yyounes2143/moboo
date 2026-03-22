package j$.util.stream;
/* renamed from: j$.util.stream.t  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2276t extends AbstractC2208f0 {
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2276t(AbstractC2182a abstractC2182a, int i, int i2) {
        super(abstractC2182a, i, 1);
        this.n = i2;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        switch (this.n) {
            case 0:
                return new C2257p(this, interfaceC2225i2, 3);
            case 1:
                return new T(0, interfaceC2225i2);
            case 2:
                return new Q(this, interfaceC2225i2, 3);
            case 3:
                return new C2183a0(this, interfaceC2225i2, 1);
            case 4:
                return interfaceC2225i2;
            default:
                return new C2183a0(this, interfaceC2225i2, 4);
        }
    }
}
