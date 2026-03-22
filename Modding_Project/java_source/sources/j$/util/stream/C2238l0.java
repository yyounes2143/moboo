package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
/* renamed from: j$.util.stream.l0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2238l0 extends AbstractC2253o0 implements InterfaceC2215g2 {
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

    @Override // j$.util.stream.AbstractC2253o0, j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        if (this.f11923a) {
            return;
        }
        IntPredicate intPredicate = null;
        intPredicate.test(i);
        throw null;
    }
}
