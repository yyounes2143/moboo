package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final class H1 implements N1, InterfaceC2215g2 {

    /* renamed from: a  reason: collision with root package name */
    public int f11872a;
    public final /* synthetic */ int b;
    public final /* synthetic */ IntBinaryOperator c;

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

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void l() {
    }

    @Override // j$.util.stream.InterfaceC2215g2
    public final /* synthetic */ void n(Integer num) {
        AbstractC2273s1.g(this, num);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ boolean o() {
        return false;
    }

    public H1(int i, IntBinaryOperator intBinaryOperator) {
        this.b = i;
        this.c = intBinaryOperator;
    }

    @Override // j$.util.stream.N1
    public final void h(N1 n1) {
        accept(((H1) n1).f11872a);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11872a = this.b;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        this.f11872a = this.c.applyAsInt(this.f11872a, i);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return Integer.valueOf(this.f11872a);
    }
}
