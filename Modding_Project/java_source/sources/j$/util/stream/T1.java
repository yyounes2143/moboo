package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public abstract class T1 extends O1 implements N1 {
    public long b;

    public /* synthetic */ void accept(double d) {
        AbstractC2273s1.a();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2273s1.k();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
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

    @Override // j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.b = 0L;
    }
}
