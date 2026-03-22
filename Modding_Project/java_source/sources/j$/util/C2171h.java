package j$.util;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.function.IntConsumer;
/* renamed from: j$.util.h  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2171h implements IntConsumer {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    public final void b(C2171h c2171h) {
        this.count += c2171h.count;
        this.sum += c2171h.sum;
        this.min = Math.min(this.min, c2171h.min);
        this.max = Math.max(this.max, c2171h.max);
    }

    public final String toString() {
        String simpleName = C2171h.class.getSimpleName();
        Long valueOf = Long.valueOf(this.count);
        Long valueOf2 = Long.valueOf(this.sum);
        Integer valueOf3 = Integer.valueOf(this.min);
        long j = this.count;
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", simpleName, valueOf, valueOf2, valueOf3, Double.valueOf(j > 0 ? this.sum / j : FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE), Integer.valueOf(this.max));
    }
}
