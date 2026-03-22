package j$.util.stream;

import j$.util.C2175l;
import java.util.function.IntConsumer;
/* loaded from: classes2.dex */
public final class D extends G implements InterfaceC2215g2 {
    public static final B c;
    public static final B d;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.stream.G, j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        q(Integer.valueOf(i));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f11870a) {
            return new C2175l(((Integer) this.b).intValue());
        }
        return null;
    }

    static {
        Y2 y2 = Y2.INT_VALUE;
        C2175l c2175l = C2175l.c;
        c = new B(true, y2, c2175l, new C2252o(5), new C2252o(6));
        d = new B(false, y2, c2175l, new C2252o(5), new C2252o(6));
    }
}
