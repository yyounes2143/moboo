package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
/* renamed from: j$.util.stream.e2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2205e2 implements InterfaceC2225i2 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC2225i2 f11903a;

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

    public AbstractC2205e2(InterfaceC2225i2 interfaceC2225i2) {
        this.f11903a = (InterfaceC2225i2) Objects.requireNonNull(interfaceC2225i2);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public void m(long j) {
        this.f11903a.m(j);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public void l() {
        this.f11903a.l();
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public boolean o() {
        return this.f11903a.o();
    }
}
