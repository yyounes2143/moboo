package androidx.work.impl.utils;

import androidx.work.ListenableFutureKt;
import androidx.work.WorkInfo;
import androidx.work.WorkQuery;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a.\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0002H\u0000\u001a$\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0000\u001a(\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\bH\u0000\u001a(\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\bH\u0000\u001a(\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a4\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00140\u0001\"\u0004\b\u0000\u0010\u0014*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002H\u00140\u0016H\u0002¨\u0006\u0017"}, d2 = {"forStringIds", "Lcom/google/common/util/concurrent/ListenableFuture;", "", "Landroidx/work/WorkInfo;", "Landroidx/work/impl/WorkDatabase;", "executor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "ids", "", "forUUID", "id", "Ljava/util/UUID;", "forTag", "tag", "forUniqueWork", "name", "forWorkQuerySpec", "querySpec", "Landroidx/work/WorkQuery;", "loadStatusFuture", "T", "block", "Lkotlin/Function1;", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "StatusRunnable")
/* loaded from: classes3.dex */
public final class StatusRunnable {
    @NotNull
    public static final ListenableFuture<List<WorkInfo>> forStringIds(@NotNull WorkDatabase workDatabase, @NotNull TaskExecutor taskExecutor, @NotNull final List<String> list) {
        return loadStatusFuture(workDatabase, taskExecutor, new Function1() { // from class: androidx.work.impl.utils.Wwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List forStringIds$lambda$0;
                forStringIds$lambda$0 = StatusRunnable.forStringIds$lambda$0(list, (WorkDatabase) obj);
                return forStringIds$lambda$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List forStringIds$lambda$0(List list, WorkDatabase workDatabase) {
        return WorkSpec.WORK_INFO_MAPPER.apply(workDatabase.workSpecDao().getWorkStatusPojoForIds(list));
    }

    @NotNull
    public static final ListenableFuture<List<WorkInfo>> forTag(@NotNull WorkDatabase workDatabase, @NotNull TaskExecutor taskExecutor, @NotNull final String str) {
        return loadStatusFuture(workDatabase, taskExecutor, new Function1() { // from class: androidx.work.impl.utils.Wwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List forTag$lambda$2;
                forTag$lambda$2 = StatusRunnable.forTag$lambda$2(str, (WorkDatabase) obj);
                return forTag$lambda$2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List forTag$lambda$2(String str, WorkDatabase workDatabase) {
        return WorkSpec.WORK_INFO_MAPPER.apply(workDatabase.workSpecDao().getWorkStatusPojoForTag(str));
    }

    @NotNull
    public static final ListenableFuture<WorkInfo> forUUID(@NotNull WorkDatabase workDatabase, @NotNull TaskExecutor taskExecutor, @NotNull final UUID uuid) {
        return loadStatusFuture(workDatabase, taskExecutor, new Function1() { // from class: androidx.work.impl.utils.Wwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                WorkInfo forUUID$lambda$1;
                forUUID$lambda$1 = StatusRunnable.forUUID$lambda$1(uuid, (WorkDatabase) obj);
                return forUUID$lambda$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WorkInfo forUUID$lambda$1(UUID uuid, WorkDatabase workDatabase) {
        WorkSpec.WorkInfoPojo workStatusPojoForId = workDatabase.workSpecDao().getWorkStatusPojoForId(uuid.toString());
        if (workStatusPojoForId != null) {
            return workStatusPojoForId.toWorkInfo();
        }
        return null;
    }

    @NotNull
    public static final ListenableFuture<List<WorkInfo>> forUniqueWork(@NotNull WorkDatabase workDatabase, @NotNull TaskExecutor taskExecutor, @NotNull final String str) {
        return loadStatusFuture(workDatabase, taskExecutor, new Function1() { // from class: androidx.work.impl.utils.Wwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List forUniqueWork$lambda$3;
                forUniqueWork$lambda$3 = StatusRunnable.forUniqueWork$lambda$3(str, (WorkDatabase) obj);
                return forUniqueWork$lambda$3;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List forUniqueWork$lambda$3(String str, WorkDatabase workDatabase) {
        return WorkSpec.WORK_INFO_MAPPER.apply(workDatabase.workSpecDao().getWorkStatusPojoForName(str));
    }

    @NotNull
    public static final ListenableFuture<List<WorkInfo>> forWorkQuerySpec(@NotNull WorkDatabase workDatabase, @NotNull TaskExecutor taskExecutor, @NotNull final WorkQuery workQuery) {
        return loadStatusFuture(workDatabase, taskExecutor, new Function1() { // from class: androidx.work.impl.utils.Wwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                List forWorkQuerySpec$lambda$4;
                forWorkQuerySpec$lambda$4 = StatusRunnable.forWorkQuerySpec$lambda$4(WorkQuery.this, (WorkDatabase) obj);
                return forWorkQuerySpec$lambda$4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List forWorkQuerySpec$lambda$4(WorkQuery workQuery, WorkDatabase workDatabase) {
        return WorkSpec.WORK_INFO_MAPPER.apply(workDatabase.rawWorkInfoDao().getWorkInfoPojos(RawQueries.toRawQuery(workQuery)));
    }

    private static final <T> ListenableFuture<T> loadStatusFuture(final WorkDatabase workDatabase, TaskExecutor taskExecutor, final Function1<? super WorkDatabase, ? extends T> function1) {
        return ListenableFutureKt.executeAsync(taskExecutor.getSerialTaskExecutor(), "loadStatusFuture", new Function0() { // from class: androidx.work.impl.utils.Wwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object invoke;
                invoke = Function1.this.invoke(workDatabase);
                return invoke;
            }
        });
    }
}
