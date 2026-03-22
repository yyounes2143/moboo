package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class C2 extends W {
    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        Objects.requireNonNull(interfaceC2225i2);
        return X2.SORTED.l(i) ? interfaceC2225i2 : X2.SIZED.l(i) ? new AbstractC2195c2(interfaceC2225i2) : new AbstractC2195c2(interfaceC2225i2);
    }

    @Override // j$.util.stream.AbstractC2182a
    public final C0 K(AbstractC2182a abstractC2182a, Spliterator spliterator, IntFunction intFunction) {
        if (X2.SORTED.l(abstractC2182a.f)) {
            return abstractC2182a.B(spliterator, false, intFunction);
        }
        int[] iArr = (int[]) ((InterfaceC2302y0) abstractC2182a.B(spliterator, true, intFunction)).e();
        Arrays.sort(iArr);
        return new X0(iArr);
    }
}
