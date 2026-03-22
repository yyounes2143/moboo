package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;
/* loaded from: classes2.dex */
public final class D2 extends AbstractC2208f0 {
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D2(AbstractC2182a abstractC2182a, int i, int i2) {
        super(abstractC2182a, i, 0);
        this.n = i2;
    }

    @Override // j$.util.stream.AbstractC2182a
    public Spliterator L(AbstractC2182a abstractC2182a, Spliterator spliterator) {
        switch (this.n) {
            case 1:
                if (X2.ORDERED.l(abstractC2182a.f)) {
                    return K(abstractC2182a, spliterator, new Z(21)).spliterator();
                }
                return new g4((j$.util.F) abstractC2182a.T(spliterator), 1);
            default:
                return super.L(abstractC2182a, spliterator);
        }
    }

    @Override // j$.util.stream.AbstractC2182a
    public final C0 K(AbstractC2182a abstractC2182a, Spliterator spliterator, IntFunction intFunction) {
        switch (this.n) {
            case 0:
                if (X2.SORTED.l(abstractC2182a.f)) {
                    return abstractC2182a.B(spliterator, false, intFunction);
                }
                long[] jArr = (long[]) ((A0) abstractC2182a.B(spliterator, true, intFunction)).e();
                Arrays.sort(jArr);
                return new C2214g1(jArr);
            default:
                return (C0) new b4(this, abstractC2182a, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.AbstractC2182a
    public final InterfaceC2225i2 N(int i, InterfaceC2225i2 interfaceC2225i2) {
        switch (this.n) {
            case 0:
                Objects.requireNonNull(interfaceC2225i2);
                if (X2.SORTED.l(i)) {
                    return interfaceC2225i2;
                }
                return X2.SIZED.l(i) ? new AbstractC2200d2(interfaceC2225i2) : new AbstractC2200d2(interfaceC2225i2);
            default:
                return new S3(this, interfaceC2225i2);
        }
    }
}
