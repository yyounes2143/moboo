package androidx.work;

import androidx.annotation.IntRange;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface RunnableScheduler {
    void cancel(Runnable runnable);

    void scheduleWithDelay(@IntRange(from = 0) long j, Runnable runnable);
}
