package androidx.work.impl;

import android.content.Context;
import androidx.work.Configuration;
import androidx.work.R;
import androidx.work.impl.background.greedy.GreedyScheduler;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function6;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\\\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u001aß\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\u0097\u0001\b\u0002\u0010\u000e\u001a\u0090\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u000fj\u0002`\u0014H\u0007¢\u0006\u0002\b\u0015\u001a%\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\b\u0017\u001a®\u0001\u0010\u0019\u001a\u0090\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u000fj\u0002`\u00142\u0012\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00130\u001a\"\u00020\u0013¢\u0006\u0002\u0010\u001b\u001a>\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002\u001a\u0015\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0007H\u0001¢\u0006\u0002\b \u001a\n\u0010!\u001a\u00020\"*\u00020\u0001* \u0002\u0010\u0018\"\u008c\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u000f2\u008c\u0001\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0002\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0004\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u000f¨\u0006#"}, d2 = {"WorkManagerImpl", "Landroidx/work/impl/WorkManagerImpl;", "context", "Landroid/content/Context;", "configuration", "Landroidx/work/Configuration;", "workTaskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "trackers", "Landroidx/work/impl/constraints/trackers/Trackers;", "processor", "Landroidx/work/impl/Processor;", "schedulersCreator", "Lkotlin/Function6;", "Lkotlin/ParameterName;", "name", "", "Landroidx/work/impl/Scheduler;", "Landroidx/work/impl/SchedulersCreator;", "createWorkManager", "TestWorkManagerImpl", "createTestWorkManager", "SchedulersCreator", "schedulers", "", "([Landroidx/work/impl/Scheduler;)Lkotlin/jvm/functions/Function6;", "createSchedulers", "WorkManagerScope", "Lkotlinx/coroutines/CoroutineScope;", "taskExecutor", "createWorkManagerScope", "close", "", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WorkManagerImplExtKt {
    public static final void close(@NotNull WorkManagerImpl workManagerImpl) {
        BuildersKt__BuildersKt.runBlocking$default(null, new WorkManagerImplExtKt$close$1(workManagerImpl, null), 1, null);
        workManagerImpl.getWorkDatabase().close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Scheduler> createSchedulers(Context context, Configuration configuration, TaskExecutor taskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor) {
        return CollectionsKt.listOf((Object[]) new Scheduler[]{Schedulers.createBestAvailableBackgroundScheduler(context, workDatabase, configuration), new GreedyScheduler(context, configuration, trackers, processor, new WorkLauncherImpl(processor, taskExecutor), taskExecutor)});
    }

    @JvmName(name = "createTestWorkManager")
    @NotNull
    public static final WorkManagerImpl createTestWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor taskExecutor) {
        return createWorkManager$default(context, configuration, taskExecutor, WorkDatabase.Companion.create(context, taskExecutor.getSerialTaskExecutor(), configuration.getClock(), true), null, null, null, 112, null);
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration) {
        return createWorkManager$default(context, configuration, null, null, null, null, null, 124, null);
    }

    public static /* synthetic */ WorkManagerImpl createWorkManager$default(Context context, Configuration configuration, TaskExecutor taskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor, Function6 function6, int i, Object obj) {
        Trackers trackers2;
        Processor processor2;
        WorkManagerImplExtKt$WorkManagerImpl$1 workManagerImplExtKt$WorkManagerImpl$1;
        if ((i & 4) != 0) {
            taskExecutor = new WorkManagerTaskExecutor(configuration.getTaskExecutor());
        }
        TaskExecutor taskExecutor2 = taskExecutor;
        if ((i & 8) != 0) {
            workDatabase = WorkDatabase.Companion.create(context.getApplicationContext(), taskExecutor2.getSerialTaskExecutor(), configuration.getClock(), context.getResources().getBoolean(R.bool.workmanager_test_configuration));
        }
        if ((i & 16) != 0) {
            trackers2 = new Trackers(context.getApplicationContext(), taskExecutor2, null, null, null, null, 60, null);
        } else {
            trackers2 = trackers;
        }
        if ((i & 32) != 0) {
            processor2 = new Processor(context.getApplicationContext(), configuration, taskExecutor2, workDatabase);
        } else {
            processor2 = processor;
        }
        if ((i & 64) != 0) {
            workManagerImplExtKt$WorkManagerImpl$1 = WorkManagerImplExtKt$WorkManagerImpl$1.INSTANCE;
        } else {
            workManagerImplExtKt$WorkManagerImpl$1 = function6;
        }
        return createWorkManager(context, configuration, taskExecutor2, workDatabase, trackers2, processor2, workManagerImplExtKt$WorkManagerImpl$1);
    }

    @JvmName(name = "createWorkManagerScope")
    @NotNull
    public static final CoroutineScope createWorkManagerScope(@NotNull TaskExecutor taskExecutor) {
        return CoroutineScopeKt.CoroutineScope(taskExecutor.getTaskCoroutineDispatcher());
    }

    @NotNull
    public static final Function6<Context, Configuration, TaskExecutor, WorkDatabase, Trackers, Processor, List<Scheduler>> schedulers(@NotNull final Scheduler... schedulerArr) {
        return new Function6() { // from class: androidx.work.impl.Wwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function6
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                List list;
                Context context = (Context) obj;
                Configuration configuration = (Configuration) obj2;
                TaskExecutor taskExecutor = (TaskExecutor) obj3;
                WorkDatabase workDatabase = (WorkDatabase) obj4;
                Trackers trackers = (Trackers) obj5;
                Processor processor = (Processor) obj6;
                list = ArraysKt.toList(schedulerArr);
                return list;
            }
        };
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor taskExecutor) {
        return createWorkManager$default(context, configuration, taskExecutor, null, null, null, null, 120, null);
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor taskExecutor, @NotNull WorkDatabase workDatabase) {
        return createWorkManager$default(context, configuration, taskExecutor, workDatabase, null, null, null, 112, null);
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor taskExecutor, @NotNull WorkDatabase workDatabase, @NotNull Trackers trackers) {
        return createWorkManager$default(context, configuration, taskExecutor, workDatabase, trackers, null, null, 96, null);
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor taskExecutor, @NotNull WorkDatabase workDatabase, @NotNull Trackers trackers, @NotNull Processor processor) {
        return createWorkManager$default(context, configuration, taskExecutor, workDatabase, trackers, processor, null, 64, null);
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    @NotNull
    public static final WorkManagerImpl createWorkManager(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor taskExecutor, @NotNull WorkDatabase workDatabase, @NotNull Trackers trackers, @NotNull Processor processor, @NotNull Function6<? super Context, ? super Configuration, ? super TaskExecutor, ? super WorkDatabase, ? super Trackers, ? super Processor, ? extends List<? extends Scheduler>> function6) {
        return new WorkManagerImpl(context.getApplicationContext(), configuration, taskExecutor, workDatabase, function6.invoke(context, configuration, taskExecutor, workDatabase, trackers, processor), processor, trackers);
    }
}
