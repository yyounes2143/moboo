package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* renamed from: j$.util.stream.c2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2195c2 implements InterfaceC2215g2 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC2225i2 f11899a;

    @Override // j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC2273s1.a();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void accept(long j) {
        AbstractC2273s1.l();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        n((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC2215g2
    public final /* synthetic */ void n(Integer num) {
        AbstractC2273s1.g(this, num);
    }

    public AbstractC2195c2(InterfaceC2225i2 interfaceC2225i2) {
        this.f11899a = (InterfaceC2225i2) Objects.requireNonNull(interfaceC2225i2);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public void m(long j) {
        this.f11899a.m(j);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public void l() {
        this.f11899a.l();
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public boolean o() {
        return this.f11899a.o();
    }
}
