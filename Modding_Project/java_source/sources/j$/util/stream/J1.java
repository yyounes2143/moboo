package j$.util.stream;

import j$.util.C2175l;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final class J1 implements N1, InterfaceC2215g2 {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11877a;
    public int b;
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

    public J1(IntBinaryOperator intBinaryOperator) {
        this.c = intBinaryOperator;
    }

    @Override // j$.util.stream.N1
    public final void h(N1 n1) {
        J1 j1 = (J1) n1;
        if (j1.f11877a) {
            return;
        }
        accept(j1.b);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11877a = true;
        this.b = 0;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        if (this.f11877a) {
            this.f11877a = false;
            this.b = i;
            return;
        }
        this.b = this.c.applyAsInt(this.b, i);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f11877a ? C2175l.c : new C2175l(this.b);
    }
}
