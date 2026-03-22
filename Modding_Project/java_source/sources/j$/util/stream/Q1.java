package j$.util.stream;

import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final class Q1 extends T1 implements InterfaceC2215g2 {
    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        n((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC2215g2
    public final /* synthetic */ void n(Integer num) {
        AbstractC2273s1.g(this, num);
    }

    @Override // j$.util.stream.O1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.N1
    public final void h(N1 n1) {
        this.b += ((T1) n1).b;
    }

    @Override // j$.util.stream.T1, j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        this.b++;
    }
}
