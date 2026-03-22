package androidx.work.impl.utils;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.work.Data;
import androidx.work.ListenableFutureKt;
import androidx.work.Logger;
import androidx.work.ProgressUpdater;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkProgress;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import kotlin.jvm.functions.Function0;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class WorkProgressUpdater implements ProgressUpdater {
    static final String TAG = Logger.tagWithPrefix("WorkProgressUpdater");
    final TaskExecutor mTaskExecutor;
    final WorkDatabase mWorkDatabase;

    public WorkProgressUpdater(WorkDatabase workDatabase, TaskExecutor taskExecutor) {
        this.mWorkDatabase = workDatabase;
        this.mTaskExecutor = taskExecutor;
    }

    public static /* synthetic */ Void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WorkProgressUpdater workProgressUpdater, UUID uuid, Data data) {
        workProgressUpdater.getClass();
        String uuid2 = uuid.toString();
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "Updating progress for " + uuid + " (" + data + ")");
        workProgressUpdater.mWorkDatabase.beginTransaction();
        try {
            WorkSpec workSpec = workProgressUpdater.mWorkDatabase.workSpecDao().getWorkSpec(uuid2);
            if (workSpec != null) {
                if (workSpec.state == WorkInfo.State.RUNNING) {
                    workProgressUpdater.mWorkDatabase.workProgressDao().insert(new WorkProgress(uuid2, data));
                } else {
                    Logger logger2 = Logger.get();
                    logger2.warning(str, "Ignoring setProgressAsync(...). WorkSpec (" + uuid2 + ") is not in a RUNNING state.");
                }
                workProgressUpdater.mWorkDatabase.setTransactionSuccessful();
                workProgressUpdater.mWorkDatabase.endTransaction();
                return null;
            }
            throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
        } catch (Throwable th) {
            try {
                Logger.get().error(TAG, "Error updating Worker progress", th);
                throw th;
            } catch (Throwable th2) {
                workProgressUpdater.mWorkDatabase.endTransaction();
                throw th2;
            }
        }
    }

    @Override // androidx.work.ProgressUpdater
    public ListenableFuture<Void> updateProgress(Context context, final UUID uuid, final Data data) {
        return ListenableFutureKt.executeAsync(this.mTaskExecutor.getSerialTaskExecutor(), "updateProgress", new Function0() { // from class: androidx.work.impl.utils.Wwwwww
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WorkProgressUpdater.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WorkProgressUpdater.this, uuid, data);
            }
        });
    }
}
