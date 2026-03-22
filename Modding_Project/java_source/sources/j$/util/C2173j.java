package j$.util;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
/* renamed from: j$.util.j  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2173j implements LongConsumer, IntConsumer {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        accept(i);
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    public final void b(C2173j c2173j) {
        this.count += c2173j.count;
        this.sum += c2173j.sum;
        this.min = Math.min(this.min, c2173j.min);
        this.max = Math.max(this.max, c2173j.max);
    }

    public final String toString() {
        String simpleName = C2173j.class.getSimpleName();
        Long valueOf = Long.valueOf(this.count);
        Long valueOf2 = Long.valueOf(this.sum);
        Long valueOf3 = Long.valueOf(this.min);
        long j = this.count;
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", simpleName, valueOf, valueOf2, valueOf3, Double.valueOf(j > 0 ? this.sum / j : FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE), Long.valueOf(this.max));
    }
}
