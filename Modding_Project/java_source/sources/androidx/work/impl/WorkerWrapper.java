package androidx.work.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.Clock;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.ListenableFutureKt;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001:\u0002?@B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\f\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*J\u000e\u0010,\u001a\u00020-H\u0082@¢\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020+2\u0006\u00100\u001a\u000201H\u0002J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0007J\u0010\u00106\u001a\u00020+2\u0006\u00104\u001a\u000205H\u0002J\u0012\u00107\u001a\u00020+2\b\u00100\u001a\u0004\u0018\u000101H\u0002J\b\u00108\u001a\u00020+H\u0002J\u0010\u00109\u001a\u00020+2\u0006\u00100\u001a\u000201H\u0007J\u0010\u0010:\u001a\u0002032\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010;\u001a\u00020+2\u0006\u00104\u001a\u000205H\u0002J\b\u0010<\u001a\u00020+H\u0002J\u0010\u0010=\u001a\u00020+2\u0006\u00100\u001a\u000201H\u0002J\u0016\u0010>\u001a\u00020\r2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\r0!H\u0002R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020\r0!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010%\u001a\u00020&8F¢\u0006\u0006\u001a\u0004\b'\u0010(¨\u0006A"}, d2 = {"Landroidx/work/impl/WorkerWrapper;", "", "builder", "Landroidx/work/impl/WorkerWrapper$Builder;", "<init>", "(Landroidx/work/impl/WorkerWrapper$Builder;)V", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "getWorkSpec", "()Landroidx/work/impl/model/WorkSpec;", "appContext", "Landroid/content/Context;", "workSpecId", "", "runtimeExtras", "Landroidx/work/WorkerParameters$RuntimeExtras;", "builderWorker", "Landroidx/work/ListenableWorker;", "workTaskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "configuration", "Landroidx/work/Configuration;", "clock", "Landroidx/work/Clock;", "foregroundProcessor", "Landroidx/work/impl/foreground/ForegroundProcessor;", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "workSpecDao", "Landroidx/work/impl/model/WorkSpecDao;", "dependencyDao", "Landroidx/work/impl/model/DependencyDao;", "tags", "", "workDescription", "workerJob", "Lkotlinx/coroutines/CompletableJob;", "workGenerationalId", "Landroidx/work/impl/model/WorkGenerationalId;", "getWorkGenerationalId", "()Landroidx/work/impl/model/WorkGenerationalId;", "launch", "Lcom/google/common/util/concurrent/ListenableFuture;", "", "runWorker", "Landroidx/work/impl/WorkerWrapper$Resolution;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onWorkFinished", "result", "Landroidx/work/ListenableWorker$Result;", "interrupt", "", "stopReason", "", "resetWorkerStatus", "handleResult", "trySetRunning", "setFailed", "iterativelyFailWorkAndDependents", "reschedule", "resetPeriodic", "setSucceeded", "createWorkDescription", "Resolution", "Builder", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nWorkerWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkerWrapper.kt\nandroidx/work/impl/WorkerWrapper\n+ 2 LoggerExt.kt\nandroidx/work/LoggerExtKt\n*L\n1#1,616:1\n29#2:617\n29#2:618\n27#2:619\n32#2:620\n19#2:621\n19#2:622\n19#2:623\n24#2:624\n24#2:625\n24#2:626\n24#2:627\n19#2:628\n*S KotlinDebug\n*F\n+ 1 WorkerWrapper.kt\nandroidx/work/impl/WorkerWrapper\n*L\n206#1:617\n240#1:618\n315#1:619\n318#1:620\n353#1:621\n362#1:622\n375#1:623\n383#1:624\n390#1:625\n393#1:626\n486#1:627\n151#1:628\n*E\n"})
/* loaded from: classes3.dex */
public final class WorkerWrapper {
    @NotNull
    private final Context appContext;
    @Nullable
    private final ListenableWorker builderWorker;
    @NotNull
    private final Clock clock;
    @NotNull
    private final Configuration configuration;
    @NotNull
    private final DependencyDao dependencyDao;
    @NotNull
    private final ForegroundProcessor foregroundProcessor;
    @NotNull
    private final WorkerParameters.RuntimeExtras runtimeExtras;
    @NotNull
    private final List<String> tags;
    @NotNull
    private final WorkDatabase workDatabase;
    @NotNull
    private final String workDescription;
    @NotNull
    private final WorkSpec workSpec;
    @NotNull
    private final WorkSpecDao workSpecDao;
    @NotNull
    private final String workSpecId;
    @NotNull
    private final TaskExecutor workTaskExecutor;
    @NotNull
    private final CompletableJob workerJob;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001BG\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010.\u001a\u00020\u00002\b\u0010(\u001a\u0004\u0018\u00010)J\u0010\u0010/\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020#H\u0007J\u0006\u00100\u001a\u000201R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00062"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Builder;", "", "context", "Landroid/content/Context;", "configuration", "Landroidx/work/Configuration;", "workTaskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "foregroundProcessor", "Landroidx/work/impl/foreground/ForegroundProcessor;", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "tags", "", "", "<init>", "(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;)V", "getConfiguration", "()Landroidx/work/Configuration;", "getWorkTaskExecutor", "()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "getForegroundProcessor", "()Landroidx/work/impl/foreground/ForegroundProcessor;", "getWorkDatabase", "()Landroidx/work/impl/WorkDatabase;", "getWorkSpec", "()Landroidx/work/impl/model/WorkSpec;", "getTags", "()Ljava/util/List;", "appContext", "getAppContext", "()Landroid/content/Context;", "worker", "Landroidx/work/ListenableWorker;", "getWorker", "()Landroidx/work/ListenableWorker;", "setWorker", "(Landroidx/work/ListenableWorker;)V", "runtimeExtras", "Landroidx/work/WorkerParameters$RuntimeExtras;", "getRuntimeExtras", "()Landroidx/work/WorkerParameters$RuntimeExtras;", "setRuntimeExtras", "(Landroidx/work/WorkerParameters$RuntimeExtras;)V", "withRuntimeExtras", "withWorker", "build", "Landroidx/work/impl/WorkerWrapper;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes3.dex */
    public static final class Builder {
        @NotNull
        private final Context appContext;
        @NotNull
        private final Configuration configuration;
        @NotNull
        private final ForegroundProcessor foregroundProcessor;
        @NotNull
        private WorkerParameters.RuntimeExtras runtimeExtras = new WorkerParameters.RuntimeExtras();
        @NotNull
        private final List<String> tags;
        @NotNull
        private final WorkDatabase workDatabase;
        @NotNull
        private final WorkSpec workSpec;
        @NotNull
        private final TaskExecutor workTaskExecutor;
        @Nullable
        private ListenableWorker worker;

        @SuppressLint({"LambdaLast"})
        public Builder(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor taskExecutor, @NotNull ForegroundProcessor foregroundProcessor, @NotNull WorkDatabase workDatabase, @NotNull WorkSpec workSpec, @NotNull List<String> list) {
            this.configuration = configuration;
            this.workTaskExecutor = taskExecutor;
            this.foregroundProcessor = foregroundProcessor;
            this.workDatabase = workDatabase;
            this.workSpec = workSpec;
            this.tags = list;
            this.appContext = context.getApplicationContext();
        }

        @NotNull
        public final WorkerWrapper build() {
            return new WorkerWrapper(this);
        }

        @NotNull
        public final Context getAppContext() {
            return this.appContext;
        }

        @NotNull
        public final Configuration getConfiguration() {
            return this.configuration;
        }

        @NotNull
        public final ForegroundProcessor getForegroundProcessor() {
            return this.foregroundProcessor;
        }

        @NotNull
        public final WorkerParameters.RuntimeExtras getRuntimeExtras() {
            return this.runtimeExtras;
        }

        @NotNull
        public final List<String> getTags() {
            return this.tags;
        }

        @NotNull
        public final WorkDatabase getWorkDatabase() {
            return this.workDatabase;
        }

        @NotNull
        public final WorkSpec getWorkSpec() {
            return this.workSpec;
        }

        @NotNull
        public final TaskExecutor getWorkTaskExecutor() {
            return this.workTaskExecutor;
        }

        @Nullable
        public final ListenableWorker getWorker() {
            return this.worker;
        }

        public final void setRuntimeExtras(@NotNull WorkerParameters.RuntimeExtras runtimeExtras) {
            this.runtimeExtras = runtimeExtras;
        }

        public final void setWorker(@Nullable ListenableWorker listenableWorker) {
            this.worker = listenableWorker;
        }

        @NotNull
        public final Builder withRuntimeExtras(@Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
            if (runtimeExtras != null) {
                this.runtimeExtras = runtimeExtras;
            }
            return this;
        }

        @VisibleForTesting
        @NotNull
        public final Builder withWorker(@NotNull ListenableWorker listenableWorker) {
            this.worker = listenableWorker;
            return this;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution;", "", "<init>", "()V", "ResetWorkerStatus", "Failed", "Finished", "Landroidx/work/impl/WorkerWrapper$Resolution$Failed;", "Landroidx/work/impl/WorkerWrapper$Resolution$Finished;", "Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static abstract class Resolution {

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution$Failed;", "Landroidx/work/impl/WorkerWrapper$Resolution;", "result", "Landroidx/work/ListenableWorker$Result;", "<init>", "(Landroidx/work/ListenableWorker$Result;)V", "getResult", "()Landroidx/work/ListenableWorker$Result;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Failed extends Resolution {
            @NotNull
            private final ListenableWorker.Result result;

            public Failed() {
                this(null, 1, null);
            }

            @NotNull
            public final ListenableWorker.Result getResult() {
                return this.result;
            }

            public Failed(@NotNull ListenableWorker.Result result) {
                super(null);
                this.result = result;
            }

            public /* synthetic */ Failed(ListenableWorker.Result result, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? new ListenableWorker.Result.Failure() : result);
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution$Finished;", "Landroidx/work/impl/WorkerWrapper$Resolution;", "result", "Landroidx/work/ListenableWorker$Result;", "<init>", "(Landroidx/work/ListenableWorker$Result;)V", "getResult", "()Landroidx/work/ListenableWorker$Result;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Finished extends Resolution {
            @NotNull
            private final ListenableWorker.Result result;

            public Finished(@NotNull ListenableWorker.Result result) {
                super(null);
                this.result = result;
            }

            @NotNull
            public final ListenableWorker.Result getResult() {
                return this.result;
            }
        }

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;", "Landroidx/work/impl/WorkerWrapper$Resolution;", "reason", "", "<init>", "(I)V", "getReason", "()I", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class ResetWorkerStatus extends Resolution {
            private final int reason;

            public ResetWorkerStatus() {
                this(0, 1, null);
            }

            public final int getReason() {
                return this.reason;
            }

            public ResetWorkerStatus(int i) {
                super(null);
                this.reason = i;
            }

            public /* synthetic */ ResetWorkerStatus(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? -256 : i);
            }
        }

        public /* synthetic */ Resolution(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Resolution() {
        }
    }

    public WorkerWrapper(@NotNull Builder builder) {
        CompletableJob Job$default;
        WorkSpec workSpec = builder.getWorkSpec();
        this.workSpec = workSpec;
        this.appContext = builder.getAppContext();
        this.workSpecId = workSpec.id;
        this.runtimeExtras = builder.getRuntimeExtras();
        this.builderWorker = builder.getWorker();
        this.workTaskExecutor = builder.getWorkTaskExecutor();
        Configuration configuration = builder.getConfiguration();
        this.configuration = configuration;
        this.clock = configuration.getClock();
        this.foregroundProcessor = builder.getForegroundProcessor();
        WorkDatabase workDatabase = builder.getWorkDatabase();
        this.workDatabase = workDatabase;
        this.workSpecDao = workDatabase.workSpecDao();
        this.dependencyDao = workDatabase.dependencyDao();
        List<String> tags = builder.getTags();
        this.tags = tags;
        this.workDescription = createWorkDescription(tags);
        Job$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.workerJob = Job$default;
    }

    private final String createWorkDescription(List<String> list) {
        return "Work [ id=" + this.workSpecId + ", tags={ " + CollectionsKt.joinToString$default(list, ",", null, null, 0, null, null, 62, null) + " } ]";
    }

    private final boolean handleResult(ListenableWorker.Result result) {
        if (result instanceof ListenableWorker.Result.Success) {
            String access$getTAG$p = WorkerWrapperKt.access$getTAG$p();
            Logger logger = Logger.get();
            logger.info(access$getTAG$p, "Worker result SUCCESS for " + this.workDescription);
            if (this.workSpec.isPeriodic()) {
                return resetPeriodic();
            }
            return setSucceeded(result);
        } else if (result instanceof ListenableWorker.Result.Retry) {
            String access$getTAG$p2 = WorkerWrapperKt.access$getTAG$p();
            Logger logger2 = Logger.get();
            logger2.info(access$getTAG$p2, "Worker result RETRY for " + this.workDescription);
            return reschedule(-256);
        } else {
            String access$getTAG$p3 = WorkerWrapperKt.access$getTAG$p();
            Logger logger3 = Logger.get();
            logger3.info(access$getTAG$p3, "Worker result FAILURE for " + this.workDescription);
            if (this.workSpec.isPeriodic()) {
                return resetPeriodic();
            }
            if (result == null) {
                result = new ListenableWorker.Result.Failure();
            }
            return setFailed(result);
        }
    }

    private final void iterativelyFailWorkAndDependents(String str) {
        List mutableListOf = CollectionsKt.mutableListOf(str);
        while (!mutableListOf.isEmpty()) {
            String str2 = (String) CollectionsKt.removeLast(mutableListOf);
            if (this.workSpecDao.getState(str2) != WorkInfo.State.CANCELLED) {
                this.workSpecDao.setState(WorkInfo.State.FAILED, str2);
            }
            mutableListOf.addAll(this.dependencyDao.getDependentWorkIds(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean onWorkFinished(ListenableWorker.Result result) {
        WorkInfo.State state = this.workSpecDao.getState(this.workSpecId);
        this.workDatabase.workProgressDao().delete(this.workSpecId);
        if (state == null) {
            return false;
        }
        if (state == WorkInfo.State.RUNNING) {
            return handleResult(result);
        }
        if (state.isFinished()) {
            return false;
        }
        return reschedule(WorkInfo.STOP_REASON_UNKNOWN);
    }

    private final boolean reschedule(int i) {
        this.workSpecDao.setState(WorkInfo.State.ENQUEUED, this.workSpecId);
        this.workSpecDao.setLastEnqueueTime(this.workSpecId, this.clock.currentTimeMillis());
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
        this.workSpecDao.setStopReason(this.workSpecId, i);
        return true;
    }

    private final boolean resetPeriodic() {
        this.workSpecDao.setLastEnqueueTime(this.workSpecId, this.clock.currentTimeMillis());
        this.workSpecDao.setState(WorkInfo.State.ENQUEUED, this.workSpecId);
        this.workSpecDao.resetWorkSpecRunAttemptCount(this.workSpecId);
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.incrementPeriodCount(this.workSpecId);
        this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean resetWorkerStatus(int i) {
        if (Intrinsics.areEqual(this.workSpec.getBackOffOnSystemInterruptions(), Boolean.TRUE)) {
            String access$getTAG$p = WorkerWrapperKt.access$getTAG$p();
            Logger logger = Logger.get();
            logger.debug(access$getTAG$p, "Worker " + this.workSpec.workerClassName + " was interrupted. Backing off.");
            reschedule(i);
            return true;
        }
        WorkInfo.State state = this.workSpecDao.getState(this.workSpecId);
        if (state != null && !state.isFinished()) {
            String access$getTAG$p2 = WorkerWrapperKt.access$getTAG$p();
            Logger logger2 = Logger.get();
            logger2.debug(access$getTAG$p2, "Status for " + this.workSpecId + " is " + state + "; not doing any work and rescheduling for later execution");
            this.workSpecDao.setState(WorkInfo.State.ENQUEUED, this.workSpecId);
            this.workSpecDao.setStopReason(this.workSpecId, i);
            this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
            return true;
        }
        String access$getTAG$p3 = WorkerWrapperKt.access$getTAG$p();
        Logger logger3 = Logger.get();
        logger3.debug(access$getTAG$p3, "Status for " + this.workSpecId + " is " + state + " ; not doing any work");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0205  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object runWorker(kotlin.coroutines.Continuation<? super androidx.work.impl.WorkerWrapper.Resolution> r23) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.WorkerWrapper.runWorker(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean runWorker$lambda$1(WorkerWrapper workerWrapper) {
        WorkSpec workSpec = workerWrapper.workSpec;
        if (workSpec.state != WorkInfo.State.ENQUEUED) {
            String access$getTAG$p = WorkerWrapperKt.access$getTAG$p();
            Logger logger = Logger.get();
            logger.debug(access$getTAG$p, workerWrapper.workSpec.workerClassName + " is not in ENQUEUED state. Nothing more to do");
            return Boolean.TRUE;
        } else if ((workSpec.isPeriodic() || workerWrapper.workSpec.isBackedOff()) && workerWrapper.clock.currentTimeMillis() < workerWrapper.workSpec.calculateNextRunTime()) {
            Logger logger2 = Logger.get();
            String access$getTAG$p2 = WorkerWrapperKt.access$getTAG$p();
            logger2.debug(access$getTAG$p2, "Delaying execution for " + workerWrapper.workSpec.workerClassName + " because it is being executed before schedule.");
            return Boolean.TRUE;
        } else {
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit runWorker$lambda$4(ListenableWorker listenableWorker, boolean z, String str, WorkerWrapper workerWrapper, Throwable th) {
        if (th instanceof WorkerStoppedException) {
            listenableWorker.stop(((WorkerStoppedException) th).getReason());
        }
        if (z && str != null) {
            workerWrapper.configuration.getTracer().endAsyncSection(str, workerWrapper.workSpec.hashCode());
        }
        return Unit.INSTANCE;
    }

    private final boolean setSucceeded(ListenableWorker.Result result) {
        this.workSpecDao.setState(WorkInfo.State.SUCCEEDED, this.workSpecId);
        this.workSpecDao.setOutput(this.workSpecId, ((ListenableWorker.Result.Success) result).getOutputData());
        long currentTimeMillis = this.clock.currentTimeMillis();
        for (String str : this.dependencyDao.getDependentWorkIds(this.workSpecId)) {
            if (this.workSpecDao.getState(str) == WorkInfo.State.BLOCKED && this.dependencyDao.hasCompletedAllPrerequisites(str)) {
                String access$getTAG$p = WorkerWrapperKt.access$getTAG$p();
                Logger logger = Logger.get();
                logger.info(access$getTAG$p, "Setting status to enqueued for " + str);
                this.workSpecDao.setState(WorkInfo.State.ENQUEUED, str);
                this.workSpecDao.setLastEnqueueTime(str, currentTimeMillis);
            }
        }
        return false;
    }

    private final boolean trySetRunning() {
        return ((Boolean) this.workDatabase.runInTransaction(new Callable() { // from class: androidx.work.impl.Wwwww
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Boolean trySetRunning$lambda$13;
                trySetRunning$lambda$13 = WorkerWrapper.trySetRunning$lambda$13(WorkerWrapper.this);
                return trySetRunning$lambda$13;
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean trySetRunning$lambda$13(WorkerWrapper workerWrapper) {
        boolean z;
        if (workerWrapper.workSpecDao.getState(workerWrapper.workSpecId) == WorkInfo.State.ENQUEUED) {
            workerWrapper.workSpecDao.setState(WorkInfo.State.RUNNING, workerWrapper.workSpecId);
            workerWrapper.workSpecDao.incrementWorkSpecRunAttemptCount(workerWrapper.workSpecId);
            workerWrapper.workSpecDao.setStopReason(workerWrapper.workSpecId, -256);
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    @NotNull
    public final WorkGenerationalId getWorkGenerationalId() {
        return WorkSpecKt.generationalId(this.workSpec);
    }

    @NotNull
    public final WorkSpec getWorkSpec() {
        return this.workSpec;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void interrupt(int i) {
        this.workerJob.cancel((CancellationException) new WorkerStoppedException(i));
    }

    @NotNull
    public final ListenableFuture<Boolean> launch() {
        CompletableJob Job$default;
        CoroutineDispatcher taskCoroutineDispatcher = this.workTaskExecutor.getTaskCoroutineDispatcher();
        Job$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        return ListenableFutureKt.launchFuture$default(taskCoroutineDispatcher.plus(Job$default), null, new WorkerWrapper$launch$1(this, null), 2, null);
    }

    @VisibleForTesting
    public final boolean setFailed(@NotNull ListenableWorker.Result result) {
        iterativelyFailWorkAndDependents(this.workSpecId);
        Data outputData = ((ListenableWorker.Result.Failure) result).getOutputData();
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.setOutput(this.workSpecId, outputData);
        return false;
    }
}
