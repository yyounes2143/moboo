package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes2.dex */
public final class G1 extends O1 implements N1 {
    public final /* synthetic */ Supplier b;
    public final /* synthetic */ BiConsumer c;
    public final /* synthetic */ BiConsumer d;

    @Override // j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC2273s1.a();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void accept(int i) {
        AbstractC2273s1.k();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void accept(long j) {
        AbstractC2273s1.l();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void l() {
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ boolean o() {
        return false;
    }

    @Override // j$.util.stream.N1
    public final void h(N1 n1) {
        this.d.accept(this.f11885a, ((G1) n1).f11885a);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11885a = this.b.get();
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.c.accept(this.f11885a, obj);
    }

    public G1(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.b = supplier;
        this.c = biConsumer;
        this.d = biConsumer2;
    }
}
