package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
/* renamed from: j$.util.stream.x1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2298x1 extends AbstractC2273s1 {
    public final /* synthetic */ int h;
    public final /* synthetic */ Object i;
    public final /* synthetic */ Object j;
    public final /* synthetic */ Object k;

    public /* synthetic */ C2298x1(Y2 y2, Object obj, Object obj2, Object obj3, int i) {
        this.h = i;
        this.j = obj;
        this.k = obj2;
        this.i = obj3;
    }

    @Override // j$.util.stream.AbstractC2273s1
    public final N1 Q() {
        switch (this.h) {
            case 0:
                return new C2283u1((Supplier) this.i, (ObjLongConsumer) this.k, (C2247n) this.j);
            case 1:
                return new A1((Supplier) this.i, (ObjDoubleConsumer) this.k, (C2247n) this.j);
            case 2:
                return new C1(this.i, (BiFunction) this.k, (BinaryOperator) this.j);
            case 3:
                return new G1((Supplier) this.i, (BiConsumer) this.k, (BiConsumer) this.j);
            default:
                return new K1((Supplier) this.i, (ObjIntConsumer) this.k, (C2247n) this.j);
        }
    }
}
