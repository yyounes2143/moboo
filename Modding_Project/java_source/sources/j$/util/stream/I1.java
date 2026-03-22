package j$.util.stream;

import java.util.function.IntBinaryOperator;
/* loaded from: classes2.dex */
public final class I1 extends AbstractC2273s1 {
    public final /* synthetic */ IntBinaryOperator h;
    public final /* synthetic */ int i;

    @Override // j$.util.stream.AbstractC2273s1
    public final N1 Q() {
        return new H1(this.i, this.h);
    }

    public I1(Y2 y2, IntBinaryOperator intBinaryOperator, int i) {
        this.h = intBinaryOperator;
        this.i = i;
    }
}
