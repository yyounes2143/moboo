package j$.util.stream;
/* renamed from: j$.util.stream.n2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2250n2 extends AbstractC2200d2 {
    public long b;
    public long c;
    public final /* synthetic */ C2255o2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2250n2(C2255o2 c2255o2, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.d = c2255o2;
        this.b = c2255o2.n;
        long j = c2255o2.o;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.AbstractC2200d2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11901a.m(AbstractC2279t2.a(j, this.d.n, this.c));
    }

    @Override // j$.util.stream.InterfaceC2220h2, j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        long j2 = this.b;
        if (j2 == 0) {
            long j3 = this.c;
            if (j3 > 0) {
                this.c = j3 - 1;
                this.f11901a.accept(j);
                return;
            }
            return;
        }
        this.b = j2 - 1;
    }

    @Override // j$.util.stream.AbstractC2200d2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        return this.c == 0 || this.f11901a.o();
    }
}
