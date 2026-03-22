package j$.util.stream;
/* renamed from: j$.util.stream.s  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2271s extends X {
    public final /* synthetic */ int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2271s(AbstractC2182a abstractC2182a, int i, int i2) {
        super(abstractC2182a, i);
        this.m = i2;
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        switch (this.m) {
            case 0:
                return new C2257p(this, interfaceC2225i2, 2);
            case 1:
                return new Q(this, interfaceC2225i2, 2);
            case 2:
                return interfaceC2225i2;
            case 3:
                return new Q(this, interfaceC2225i2, 5);
            default:
                return new C2183a0(this, interfaceC2225i2, 2);
        }
    }
}
