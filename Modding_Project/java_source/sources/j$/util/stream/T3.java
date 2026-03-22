package j$.util.stream;

import java.util.function.LongPredicate;
/* loaded from: classes2.dex */
public final class T3 extends AbstractC2200d2 implements Z3 {
    public final /* synthetic */ U3 b;

    @Override // j$.util.stream.Z3
    public final long g() {
        return 0L;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T3(U3 u3, InterfaceC2225i2 interfaceC2225i2, boolean z) {
        super(interfaceC2225i2);
        this.b = u3;
    }

    @Override // j$.util.stream.InterfaceC2220h2, j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        this.b.getClass();
        LongPredicate longPredicate = null;
        longPredicate.test(j);
        throw null;
    }
}
