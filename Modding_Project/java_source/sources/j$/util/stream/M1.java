package j$.util.stream;

import j$.util.C2176m;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public final class M1 implements N1, InterfaceC2220h2 {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11881a;
    public long b;
    public final /* synthetic */ LongBinaryOperator c;

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

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ void l() {
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final /* synthetic */ boolean o() {
        return false;
    }

    public M1(LongBinaryOperator longBinaryOperator) {
        this.c = longBinaryOperator;
    }

    @Override // j$.util.stream.N1
    public final void h(N1 n1) {
        M1 m1 = (M1) n1;
        if (m1.f11881a) {
            return;
        }
        accept(m1.b);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11881a = true;
        this.b = 0L;
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        if (this.f11881a) {
            this.f11881a = false;
            this.b = j;
            return;
        }
        this.b = this.c.applyAsLong(this.b, j);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f11881a ? C2176m.c : new C2176m(this.b);
    }
}
