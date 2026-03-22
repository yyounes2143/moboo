package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;
/* loaded from: classes2.dex */
public final class H0 extends I0 {
    public final /* synthetic */ int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ H0(AbstractC2182a abstractC2182a, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator, int i) {
        super(abstractC2182a, spliterator, longFunction, binaryOperator);
        this.k = i;
    }

    @Override // j$.util.stream.I0, j$.util.stream.AbstractC2197d
    public final AbstractC2197d c(Spliterator spliterator) {
        switch (this.k) {
            case 0:
                return new I0(this, spliterator);
            case 1:
                return new I0(this, spliterator);
            case 2:
                return new I0(this, spliterator);
            default:
                return new I0(this, spliterator);
        }
    }

    @Override // j$.util.stream.I0, j$.util.stream.AbstractC2197d
    public final /* bridge */ /* synthetic */ Object a() {
        switch (this.k) {
            case 0:
                return a();
            case 1:
                return a();
            case 2:
                return a();
            default:
                return a();
        }
    }
}
