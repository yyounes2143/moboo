package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
/* renamed from: j$.util.stream.b2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2190b2 implements InterfaceC2210f2 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC2225i2 f11897a;

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

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC2210f2
    public final /* synthetic */ void q(Double d) {
        AbstractC2273s1.e(this, d);
    }

    public AbstractC2190b2(InterfaceC2225i2 interfaceC2225i2) {
        this.f11897a = (InterfaceC2225i2) Objects.requireNonNull(interfaceC2225i2);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public void m(long j) {
        this.f11897a.m(j);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public void l() {
        this.f11897a.l();
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public boolean o() {
        return this.f11897a.o();
    }
}
