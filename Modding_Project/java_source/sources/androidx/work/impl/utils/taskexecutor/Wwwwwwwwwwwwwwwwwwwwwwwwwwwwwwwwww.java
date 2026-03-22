package androidx.work.impl.utils.taskexecutor;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static CoroutineDispatcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TaskExecutor taskExecutor) {
        return ExecutorsKt.from(taskExecutor.getSerialTaskExecutor());
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TaskExecutor taskExecutor, Runnable runnable) {
        taskExecutor.getSerialTaskExecutor().execute(runnable);
    }
}
