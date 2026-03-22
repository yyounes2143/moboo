package j$.util.stream;

import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public final class R1 extends T1 implements InterfaceC2220h2 {
    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        k((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC2220h2
    public final /* synthetic */ void k(Long l) {
        AbstractC2273s1.i(this, l);
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
    public final void accept(long j) {
        this.b++;
    }
}
