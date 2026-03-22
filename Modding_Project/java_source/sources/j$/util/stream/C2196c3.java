package j$.util.stream;

import java.util.function.LongConsumer;
/* renamed from: j$.util.stream.c3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2196c3 extends AbstractC2201d3 implements LongConsumer {
    public final long[] c;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    public C2196c3(int i) {
        this.c = new long[i];
    }

    @Override // j$.util.stream.AbstractC2201d3
    public final void b(Object obj, long j) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < j; i++) {
            longConsumer.accept(this.c[i]);
        }
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.b;
        this.b = i + 1;
        this.c[i] = j;
    }
}
