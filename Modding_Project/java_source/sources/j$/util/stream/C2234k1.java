package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;
/* renamed from: j$.util.stream.k1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2234k1 extends AbstractC2249n1 implements InterfaceC2215g2 {
    public final int[] h;

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        n((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC2215g2
    public final /* synthetic */ void n(Integer num) {
        AbstractC2273s1.g(this, num);
    }

    public C2234k1(Spliterator spliterator, AbstractC2182a abstractC2182a, int[] iArr) {
        super(spliterator, abstractC2182a, iArr.length);
        this.h = iArr;
    }

    public C2234k1(C2234k1 c2234k1, Spliterator spliterator, long j, long j2) {
        super(c2234k1, spliterator, j, j2, c2234k1.h.length);
        this.h = c2234k1.h;
    }

    @Override // j$.util.stream.AbstractC2249n1
    public final AbstractC2249n1 b(Spliterator spliterator, long j, long j2) {
        return new C2234k1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC2249n1, j$.util.stream.InterfaceC2225i2
    public final void accept(int i) {
        int i2 = this.f;
        if (i2 >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        int[] iArr = this.h;
        this.f = i2 + 1;
        iArr[i2] = i;
    }
}
