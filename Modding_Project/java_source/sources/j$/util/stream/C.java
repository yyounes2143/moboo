package j$.util.stream;

import j$.util.C2174k;
import java.util.function.DoubleConsumer;
/* loaded from: classes2.dex */
public final class C extends G implements InterfaceC2210f2 {
    public static final B c;
    public static final B d;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.G, j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        q(Double.valueOf(d2));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f11870a) {
            return new C2174k(((Double) this.b).doubleValue());
        }
        return null;
    }

    static {
        Y2 y2 = Y2.DOUBLE_VALUE;
        C2174k c2174k = C2174k.c;
        c = new B(true, y2, c2174k, new C2252o(3), new C2252o(4));
        d = new B(false, y2, c2174k, new C2252o(3), new C2252o(4));
    }
}
