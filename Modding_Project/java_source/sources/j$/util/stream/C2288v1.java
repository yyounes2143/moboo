package j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;
/* renamed from: j$.util.stream.v1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2288v1 extends AbstractC2273s1 {
    public final /* synthetic */ int h;
    public final /* synthetic */ Object i;

    public /* synthetic */ C2288v1(Y2 y2, Object obj, int i) {
        this.h = i;
        this.i = obj;
    }

    @Override // j$.util.stream.AbstractC2273s1
    public final N1 Q() {
        switch (this.h) {
            case 0:
                return new M1((LongBinaryOperator) this.i);
            case 1:
                return new C2303y1((DoubleBinaryOperator) this.i);
            case 2:
                return new D1((BinaryOperator) this.i);
            default:
                return new J1((IntBinaryOperator) this.i);
        }
    }
}
