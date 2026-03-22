package androidx.work.impl.utils;

import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.Tracer;
import androidx.work.WorkInfo;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpecDao;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0014"}, d2 = {"cancel", "", "workManagerImpl", "Landroidx/work/impl/WorkManagerImpl;", "workSpecId", "", "reschedulePendingWorkers", "iterativelyCancelWorkAndDependents", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "forId", "Landroidx/work/Operation;", "id", "Ljava/util/UUID;", "forTag", "tag", "forName", "name", "forNameInline", "forAll", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "CancelWorkRunnable")
/* loaded from: classes3.dex */
public final class CancelWorkRunnable {
    private static final void cancel(WorkManagerImpl workManagerImpl, String str) {
        iterativelyCancelWorkAndDependents(workManagerImpl.getWorkDatabase(), str);
        workManagerImpl.getProcessor().stopAndCancelWork(str, 1);
        for (Scheduler scheduler : workManagerImpl.getSchedulers()) {
            scheduler.cancel(str);
        }
    }

    @NotNull
    public static final Operation forAll(@NotNull final WorkManagerImpl workManagerImpl) {
        return OperationKt.launchOperation(workManagerImpl.getConfiguration().getTracer(), "CancelAllWork", workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor(), new Function0() { // from class: androidx.work.impl.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit forAll$lambda$7;
                forAll$lambda$7 = CancelWorkRunnable.forAll$lambda$7(WorkManagerImpl.this);
                return forAll$lambda$7;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit forAll$lambda$7(final WorkManagerImpl workManagerImpl) {
        final WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forAll$lambda$7$lambda$6(WorkDatabase.this, workManagerImpl);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forAll$lambda$7$lambda$6(WorkDatabase workDatabase, WorkManagerImpl workManagerImpl) {
        for (String str : workDatabase.workSpecDao().getAllUnfinishedWork()) {
            cancel(workManagerImpl, str);
        }
        new PreferenceUtils(workDatabase).setLastCancelAllTimeMillis(workManagerImpl.getConfiguration().getClock().currentTimeMillis());
    }

    @NotNull
    public static final Operation forId(@NotNull final UUID uuid, @NotNull final WorkManagerImpl workManagerImpl) {
        return OperationKt.launchOperation(workManagerImpl.getConfiguration().getTracer(), "CancelWorkById", workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor(), new Function0() { // from class: androidx.work.impl.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit forId$lambda$1;
                forId$lambda$1 = CancelWorkRunnable.forId$lambda$1(WorkManagerImpl.this, uuid);
                return forId$lambda$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit forId$lambda$1(final WorkManagerImpl workManagerImpl, final UUID uuid) {
        workManagerImpl.getWorkDatabase().runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forId$lambda$1$lambda$0(WorkManagerImpl.this, uuid);
            }
        });
        reschedulePendingWorkers(workManagerImpl);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forId$lambda$1$lambda$0(WorkManagerImpl workManagerImpl, UUID uuid) {
        cancel(workManagerImpl, uuid.toString());
    }

    @NotNull
    public static final Operation forName(@NotNull final String str, @NotNull final WorkManagerImpl workManagerImpl) {
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        return OperationKt.launchOperation(tracer, "CancelWorkByName_" + str, workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor(), new Function0() { // from class: androidx.work.impl.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit forName$lambda$4;
                forName$lambda$4 = CancelWorkRunnable.forName$lambda$4(str, workManagerImpl);
                return forName$lambda$4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit forName$lambda$4(String str, WorkManagerImpl workManagerImpl) {
        forNameInline(str, workManagerImpl);
        reschedulePendingWorkers(workManagerImpl);
        return Unit.INSTANCE;
    }

    public static final void forNameInline(@NotNull final String str, @NotNull final WorkManagerImpl workManagerImpl) {
        final WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forNameInline$lambda$5(WorkDatabase.this, str, workManagerImpl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forNameInline$lambda$5(WorkDatabase workDatabase, String str, WorkManagerImpl workManagerImpl) {
        for (String str2 : workDatabase.workSpecDao().getUnfinishedWorkWithName(str)) {
            cancel(workManagerImpl, str2);
        }
    }

    @NotNull
    public static final Operation forTag(@NotNull final String str, @NotNull final WorkManagerImpl workManagerImpl) {
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        return OperationKt.launchOperation(tracer, "CancelWorkByTag_" + str, workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor(), new Function0() { // from class: androidx.work.impl.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit forTag$lambda$3;
                forTag$lambda$3 = CancelWorkRunnable.forTag$lambda$3(WorkManagerImpl.this, str);
                return forTag$lambda$3;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit forTag$lambda$3(final WorkManagerImpl workManagerImpl, final String str) {
        final WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forTag$lambda$3$lambda$2(WorkDatabase.this, str, workManagerImpl);
            }
        });
        reschedulePendingWorkers(workManagerImpl);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forTag$lambda$3$lambda$2(WorkDatabase workDatabase, String str, WorkManagerImpl workManagerImpl) {
        for (String str2 : workDatabase.workSpecDao().getUnfinishedWorkWithTag(str)) {
            cancel(workManagerImpl, str2);
        }
    }

    private static final void iterativelyCancelWorkAndDependents(WorkDatabase workDatabase, String str) {
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        DependencyDao dependencyDao = workDatabase.dependencyDao();
        List mutableListOf = CollectionsKt.mutableListOf(str);
        while (!mutableListOf.isEmpty()) {
            String str2 = (String) CollectionsKt.removeLast(mutableListOf);
            WorkInfo.State state = workSpecDao.getState(str2);
            if (state != WorkInfo.State.SUCCEEDED && state != WorkInfo.State.FAILED) {
                workSpecDao.setCancelledState(str2);
            }
            mutableListOf.addAll(dependencyDao.getDependentWorkIds(str2));
        }
    }

    private static final void reschedulePendingWorkers(WorkManagerImpl workManagerImpl) {
        Schedulers.schedule(workManagerImpl.getConfiguration(), workManagerImpl.getWorkDatabase(), workManagerImpl.getSchedulers());
    }
}
