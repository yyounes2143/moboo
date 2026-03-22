package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;
/* renamed from: j$.util.stream.j1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2229j1 extends AbstractC2249n1 implements InterfaceC2210f2 {
    public final double[] h;

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC2210f2
    public final /* synthetic */ void q(Double d) {
        AbstractC2273s1.e(this, d);
    }

    public C2229j1(Spliterator spliterator, AbstractC2182a abstractC2182a, double[] dArr) {
        super(spliterator, abstractC2182a, dArr.length);
        this.h = dArr;
    }

    public C2229j1(C2229j1 c2229j1, Spliterator spliterator, long j, long j2) {
        super(c2229j1, spliterator, j, j2, c2229j1.h.length);
        this.h = c2229j1.h;
    }

    @Override // j$.util.stream.AbstractC2249n1
    public final AbstractC2249n1 b(Spliterator spliterator, long j, long j2) {
        return new C2229j1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC2249n1, j$.util.stream.InterfaceC2225i2, j$.util.stream.InterfaceC2210f2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        double[] dArr = this.h;
        this.f = i + 1;
        dArr[i] = d;
    }
}
