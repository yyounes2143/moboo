package j$.util.stream;
/* renamed from: j$.util.stream.l2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2240l2 extends AbstractC2195c2 {
    public long b;
    public long c;
    public final /* synthetic */ C2245m2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2240l2(C2245m2 c2245m2, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.d = c2245m2;
        this.b = c2245m2.m;
        long j = c2245m2.n;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.AbstractC2195c2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11899a.m(AbstractC2279t2.a(j, this.d.m, this.c));
    }

    @Override // j$.util.stream.InterfaceC2215g2, j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        long j = this.b;
        if (j == 0) {
            long j2 = this.c;
            if (j2 > 0) {
                this.c = j2 - 1;
                this.f11899a.accept(i);
                return;
            }
            return;
        }
        this.b = j - 1;
    }

    @Override // j$.util.stream.AbstractC2195c2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        return this.c == 0 || this.f11899a.o();
    }
}
