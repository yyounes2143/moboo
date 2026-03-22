package j$.util.stream;

import java.util.function.LongBinaryOperator;
/* renamed from: j$.util.stream.t1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2278t1 extends AbstractC2273s1 {
    public final /* synthetic */ LongBinaryOperator h;
    public final /* synthetic */ long i;

    @Override // j$.util.stream.AbstractC2273s1
    public final N1 Q() {
        return new L1(this.i, this.h);
    }

    public C2278t1(Y2 y2, LongBinaryOperator longBinaryOperator, long j) {
        this.h = longBinaryOperator;
        this.i = j;
    }
}
