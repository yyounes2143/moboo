package j$.util.stream;
/* renamed from: j$.util.stream.p2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2260p2 extends AbstractC2190b2 {
    public long b;
    public long c;
    public final /* synthetic */ C2265q2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2260p2(C2265q2 c2265q2, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.d = c2265q2;
        this.b = c2265q2.n;
        long j = c2265q2.o;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.AbstractC2190b2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11897a.m(AbstractC2279t2.a(j, this.d.n, this.c));
    }

    @Override // j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        long j = this.b;
        if (j == 0) {
            long j2 = this.c;
            if (j2 > 0) {
                this.c = j2 - 1;
                this.f11897a.accept(d);
                return;
            }
            return;
        }
        this.b = j - 1;
    }

    @Override // j$.util.stream.AbstractC2190b2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        return this.c == 0 || this.f11897a.o();
    }
}
