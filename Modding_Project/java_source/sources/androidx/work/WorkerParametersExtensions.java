package androidx.work;

import android.content.ComponentName;
import androidx.annotation.RestrictTo;
import androidx.work.Data;
import androidx.work.impl.utils.EnqueueUtilsKt;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a!\u0010\u0003\u001a\u00020\u0002\"\n\b\u0000\u0010\u0004\u0018\u0001*\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\b\u001a\u001a\u0010\u0003\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007\u001a \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000bH\u0007\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u000bH\u0007¨\u0006\u000e"}, d2 = {"isRemoteWorkRequest", "", "Landroidx/work/WorkerParameters;", "usingRemoteService", "T", "Landroidx/work/ListenableWorker;", "componentName", "Landroid/content/ComponentName;", "workerClassName", "", "buildDelegatedRemoteRequestData", "Landroidx/work/Data;", "delegatedWorkerName", "inputData", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "WorkerParametersExtensions")
@SourceDebugExtension({"SMAP\nWorkerParameters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkerParameters.kt\nandroidx/work/WorkerParametersExtensions\n+ 2 Data_.kt\nandroidx/work/Data\n*L\n1#1,100:1\n231#2:101\n231#2:102\n231#2:103\n*S KotlinDebug\n*F\n+ 1 WorkerParameters.kt\nandroidx/work/WorkerParametersExtensions\n*L\n96#1:101\n97#1:102\n98#1:103\n*E\n"})
/* loaded from: classes3.dex */
public final class WorkerParametersExtensions {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final Data buildDelegatedRemoteRequestData(@NotNull String str, @NotNull ComponentName componentName, @NotNull Data data) {
        Data.Builder builder = new Data.Builder();
        builder.putAll(data).putString(EnqueueUtilsKt.ARGUMENT_SERVICE_PACKAGE_NAME, componentName.getPackageName()).putString(EnqueueUtilsKt.ARGUMENT_SERVICE_CLASS_NAME, componentName.getClassName()).putString(EnqueueUtilsKt.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME, str);
        return builder.build();
    }

    public static final boolean isRemoteWorkRequest(@NotNull WorkerParameters workerParameters) {
        return isRemoteWorkRequest(workerParameters.getInputData());
    }

    public static final /* synthetic */ <T extends ListenableWorker> WorkerParameters usingRemoteService(WorkerParameters workerParameters, ComponentName componentName) {
        Intrinsics.reifiedOperationMarker(4, "T");
        return usingRemoteService(workerParameters, ListenableWorker.class.getName(), componentName);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final boolean isRemoteWorkRequest(@NotNull Data data) {
        return data.hasKeyWithValueOfType(EnqueueUtilsKt.ARGUMENT_SERVICE_PACKAGE_NAME, String.class) && data.hasKeyWithValueOfType(EnqueueUtilsKt.ARGUMENT_SERVICE_CLASS_NAME, String.class) && data.hasKeyWithValueOfType(EnqueueUtilsKt.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME, String.class);
    }

    @NotNull
    public static final WorkerParameters usingRemoteService(@NotNull WorkerParameters workerParameters, @NotNull String str, @NotNull ComponentName componentName) {
        return new WorkerParameters(workerParameters.getId(), buildDelegatedRemoteRequestData(str, componentName, workerParameters.getInputData()), workerParameters.getTags(), workerParameters.getRuntimeExtras(), workerParameters.getRunAttemptCount(), workerParameters.getGeneration(), workerParameters.getBackgroundExecutor(), workerParameters.getWorkerContext(), workerParameters.getTaskExecutor(), workerParameters.getWorkerFactory(), workerParameters.getProgressUpdater(), workerParameters.getForegroundUpdater());
    }
}
