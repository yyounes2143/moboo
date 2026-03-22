package j$.util.stream;

import java.util.function.DoubleConsumer;
/* loaded from: classes2.dex */
public final class P1 extends T1 implements InterfaceC2210f2 {
    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC2210f2
    public final /* synthetic */ void q(Double d) {
        AbstractC2273s1.e(this, d);
    }

    @Override // j$.util.stream.O1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.N1
    public final void h(N1 n1) {
        this.b += ((T1) n1).b;
    }

    @Override // j$.util.stream.T1, j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.b++;
    }
}
