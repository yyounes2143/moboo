package j$.util.stream;

import java.util.function.DoubleBinaryOperator;
/* loaded from: classes2.dex */
public final class B1 extends AbstractC2273s1 {
    public final /* synthetic */ DoubleBinaryOperator h;
    public final /* synthetic */ double i;

    @Override // j$.util.stream.AbstractC2273s1
    public final N1 Q() {
        return new C2293w1(this.i, this.h);
    }

    public B1(Y2 y2, DoubleBinaryOperator doubleBinaryOperator, double d) {
        this.h = doubleBinaryOperator;
        this.i = d;
    }
}
