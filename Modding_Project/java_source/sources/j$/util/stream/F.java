package j$.util.stream;

import j$.util.Optional;
/* loaded from: classes2.dex */
public final class F extends G {
    public static final B c;
    public static final B d;

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f11870a) {
            return new Optional(this.b);
        }
        return null;
    }

    static {
        Y2 y2 = Y2.REFERENCE;
        Optional optional = Optional.b;
        c = new B(true, y2, optional, new C2252o(9), new C2252o(10));
        d = new B(false, y2, optional, new C2252o(9), new C2252o(10));
    }
}
