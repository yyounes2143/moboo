package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;
/* renamed from: j$.util.stream.n0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2248n0 extends AbstractC2253o0 implements InterfaceC2210f2 {
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

    @Override // j$.util.stream.AbstractC2253o0, j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        if (this.f11923a) {
            return;
        }
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d);
        throw null;
    }
}
