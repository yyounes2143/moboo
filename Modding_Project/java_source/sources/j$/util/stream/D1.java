package j$.util.stream;

import j$.util.Optional;
import j$.util.function.Consumer$CC;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final class D1 implements N1 {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11864a;
    public Object b;
    public final /* synthetic */ BinaryOperator c;

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

    public D1(BinaryOperator binaryOperator) {
        this.c = binaryOperator;
    }

    @Override // j$.util.stream.N1
    public final void h(N1 n1) {
        D1 d1 = (D1) n1;
        if (d1.f11864a) {
            return;
        }
        accept(d1.b);
    }

    @Override // j$.util.stream.InterfaceC2225i2
    public final void m(long j) {
        this.f11864a = true;
        this.b = null;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        if (this.f11864a) {
            this.f11864a = false;
            this.b = obj;
            return;
        }
        this.b = this.c.apply(this.b, obj);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f11864a ? Optional.b : new Optional(this.b);
    }
}
