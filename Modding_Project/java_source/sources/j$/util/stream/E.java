package j$.util.stream;

import j$.util.C2176m;
import java.util.function.LongConsumer;
/* loaded from: classes2.dex */
public final class E extends G implements InterfaceC2220h2 {
    public static final B c;
    public static final B d;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.G, j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        q(Long.valueOf(j));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f11870a) {
            return new C2176m(((Long) this.b).longValue());
        }
        return null;
    }

    static {
        Y2 y2 = Y2.LONG_VALUE;
        C2176m c2176m = C2176m.c;
        c = new B(true, y2, c2176m, new C2252o(7), new C2252o(8));
        d = new B(false, y2, c2176m, new C2252o(7), new C2252o(8));
    }
}
