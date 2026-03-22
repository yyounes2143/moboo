package j$.util.stream;
/* loaded from: classes2.dex */
public final class M3 extends AbstractC2205e2 implements Z3 {
    public long b;
    public boolean c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ N3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M3(N3 n3, InterfaceC2225i2 interfaceC2225i2, boolean z) {
        super(interfaceC2225i2);
        this.e = n3;
        this.d = z;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z;
        boolean z2;
        if (!this.c) {
            boolean test = this.e.n.test(obj);
            this.c = !test;
            if (test) {
                z = false;
                z2 = this.d;
                if (z2 && !z) {
                    this.b++;
                }
                if (!z2 || z) {
                    this.f11903a.accept((InterfaceC2225i2) obj);
                }
                return;
            }
        }
        z = true;
        z2 = this.d;
        if (z2) {
            this.b++;
        }
        if (z2) {
        }
        this.f11903a.accept((InterfaceC2225i2) obj);
    }

    @Override // j$.util.stream.Z3
    public final long g() {
        return this.b;
    }
}
