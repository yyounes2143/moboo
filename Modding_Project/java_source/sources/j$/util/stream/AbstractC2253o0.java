package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
/* renamed from: j$.util.stream.o0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2253o0 implements InterfaceC2225i2 {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11923a;
    public boolean b;

    @Override // j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        AbstractC2273s1.a();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public /* synthetic */ void accept(int i) {
        AbstractC2273s1.k();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC2225i2
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
    public final /* synthetic */ void m(long j) {
    }

    public AbstractC2253o0(EnumC2258p0 enumC2258p0) {
        this.b = !enumC2258p0.b;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final boolean o() {
        return this.f11923a;
    }
}
