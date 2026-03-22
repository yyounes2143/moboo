package androidx.work;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/work/WorkerExceptionInfo;", "", "workerClassName", "", "workerParameters", "Landroidx/work/WorkerParameters;", "throwable", "", "<init>", "(Ljava/lang/String;Landroidx/work/WorkerParameters;Ljava/lang/Throwable;)V", "getWorkerClassName", "()Ljava/lang/String;", "getWorkerParameters", "()Landroidx/work/WorkerParameters;", "getThrowable", "()Ljava/lang/Throwable;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WorkerExceptionInfo {
    @NotNull
    private final Throwable throwable;
    @NotNull
    private final String workerClassName;
    @NotNull
    private final WorkerParameters workerParameters;

    public WorkerExceptionInfo(@NotNull String str, @NotNull WorkerParameters workerParameters, @NotNull Throwable th) {
        this.workerClassName = str;
        this.workerParameters = workerParameters;
        this.throwable = th;
    }

    @NotNull
    public final Throwable getThrowable() {
        return this.throwable;
    }

    @NotNull
    public final String getWorkerClassName() {
        return this.workerClassName;
    }

    @NotNull
    public final WorkerParameters getWorkerParameters() {
        return this.workerParameters;
    }
}
