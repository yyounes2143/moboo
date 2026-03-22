package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongPredicate;
/* renamed from: j$.util.stream.m0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2243m0 extends AbstractC2253o0 implements InterfaceC2220h2 {
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

    @Override // j$.util.stream.AbstractC2253o0, j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        if (this.f11923a) {
            return;
        }
        LongPredicate longPredicate = null;
        longPredicate.test(j);
        throw null;
    }
}
