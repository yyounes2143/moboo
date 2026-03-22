package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
/* renamed from: j$.util.stream.d2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2200d2 implements InterfaceC2220h2 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC2225i2 f11901a;

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

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        k((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC2220h2
    public final /* synthetic */ void k(Long l) {
        AbstractC2273s1.i(this, l);
    }

    public AbstractC2200d2(InterfaceC2225i2 interfaceC2225i2) {
        this.f11901a = (InterfaceC2225i2) Objects.requireNonNull(interfaceC2225i2);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public void m(long j) {
        this.f11901a.m(j);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public void l() {
        this.f11901a.l();
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public boolean o() {
        return this.f11901a.o();
    }
}
