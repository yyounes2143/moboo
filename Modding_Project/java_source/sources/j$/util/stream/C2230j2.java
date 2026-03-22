package j$.util.stream;
/* renamed from: j$.util.stream.j2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2230j2 extends AbstractC2205e2 {
    public long b;
    public long c;
    public final /* synthetic */ C2235k2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2230j2(C2235k2 c2235k2, InterfaceC2225i2 interfaceC2225i2) {
        super(interfaceC2225i2);
        this.d = c2235k2;
        this.b = c2235k2.n;
        long j = c2235k2.o;
        this.c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11903a.m(AbstractC2279t2.a(j, this.d.n, this.c));
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        long j = this.b;
        if (j == 0) {
            long j2 = this.c;
            if (j2 > 0) {
                this.c = j2 - 1;
                this.f11903a.accept((InterfaceC2225i2) obj);
                return;
            }
            return;
        }
        this.b = j - 1;
    }

    @Override // j$.util.stream.AbstractC2205e2, j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        return this.c == 0 || this.f11903a.o();
    }
}
