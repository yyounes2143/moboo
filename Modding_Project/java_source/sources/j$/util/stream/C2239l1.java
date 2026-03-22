package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;
/* renamed from: j$.util.stream.l1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2239l1 extends AbstractC2249n1 implements InterfaceC2220h2 {
    public final long[] h;

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        k((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC2220h2
    public final /* synthetic */ void k(Long l) {
        AbstractC2273s1.i(this, l);
    }

    public C2239l1(Spliterator spliterator, AbstractC2182a abstractC2182a, long[] jArr) {
        super(spliterator, abstractC2182a, jArr.length);
        this.h = jArr;
    }

    public C2239l1(C2239l1 c2239l1, Spliterator spliterator, long j, long j2) {
        super(c2239l1, spliterator, j, j2, c2239l1.h.length);
        this.h = c2239l1.h;
    }

    @Override // j$.util.stream.AbstractC2249n1
    public final AbstractC2249n1 b(Spliterator spliterator, long j, long j2) {
        return new C2239l1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC2249n1, j$.util.stream.InterfaceC2225i2
    public final void accept(long j) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        long[] jArr = this.h;
        this.f = i + 1;
        jArr[i] = j;
    }
}
