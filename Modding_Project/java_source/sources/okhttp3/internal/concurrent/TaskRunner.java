package okhttp3.internal.concurrent;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 .2\u00020\u0001:\u0003/.0B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010#R\u0016\u0010&\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010%R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00060'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010(R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00060'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010(R\u0014\u0010-\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010,¨\u00061"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner;", "", "Lokhttp3/internal/concurrent/TaskRunner$Backend;", "backend", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner$Backend;)V", "Lokhttp3/internal/concurrent/TaskQueue;", "taskQueue", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/concurrent/TaskQueue;)V", "Lokhttp3/internal/concurrent/Task;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/concurrent/Task;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/concurrent/TaskQueue;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "task", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/concurrent/Task;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "", "delayNanos", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/concurrent/Task;J)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/concurrent/TaskRunner$Backend;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/concurrent/TaskRunner$Backend;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "nextQueueName", "", "Z", "coordinatorWaiting", "J", "coordinatorWakeUpAt", "", "Ljava/util/List;", "busyQueues", "readyQueues", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "runnable", "Companion", "Backend", "RealBackend", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class TaskRunner {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final TaskRunner INSTANCE = new TaskRunner(new RealBackend(Util.Kkkkkkkkkkkkkkkkkkk(Intrinsics.stringPlus(Util.f12487Wwwwwwwwwwwwwwwwwwwwwwwwww, " TaskRunner"), true)));
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Logger f12610Wwwwwwwwwwwwwwwwwwwwwwwwwww = Logger.getLogger(TaskRunner.class.getName());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f12614Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Backend f12617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 10000;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<TaskQueue> f12613Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<TaskQueue> f12612Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Runnable f12611Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new Runnable() { // from class: okhttp3.internal.concurrent.TaskRunner$runnable$1
        @Override // java.lang.Runnable
        public void run() {
            Task Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            long j;
            while (true) {
                TaskRunner taskRunner = TaskRunner.this;
                synchronized (taskRunner) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = taskRunner.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                TaskQueue Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                TaskRunner taskRunner2 = TaskRunner.this;
                boolean isLoggable = TaskRunner.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isLoggable(Level.FINE);
                if (isLoggable) {
                    j = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww().nanoTime();
                    TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, "starting");
                } else {
                    j = -1;
                }
                try {
                    taskRunner2.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    Unit unit = Unit.INSTANCE;
                    if (isLoggable) {
                        TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Intrinsics.stringPlus("finished run in ", TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww().nanoTime() - j)));
                    }
                } catch (Throwable th) {
                    if (isLoggable) {
                        TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Intrinsics.stringPlus("failed a run in ", TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww().nanoTime() - j)));
                    }
                    throw th;
                }
            }
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0002H&¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$Backend;", "", "", "nanoTime", "()J", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/concurrent/TaskRunner;)V", "nanos", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/concurrent/TaskRunner;J)V", "Ljava/lang/Runnable;", "runnable", "execute", "(Ljava/lang/Runnable;)V", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public interface Backend {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull TaskRunner taskRunner, long j);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull TaskRunner taskRunner);

        void execute(@NotNull Runnable runnable);

        long nanoTime();
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$Companion;", "", "<init>", "()V", "Ljava/util/logging/Logger;", "logger", "Ljava/util/logging/Logger;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/logging/Logger;", "Lokhttp3/internal/concurrent/TaskRunner;", "INSTANCE", "Lokhttp3/internal/concurrent/TaskRunner;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Logger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return TaskRunner.f12610Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0016¨\u0006\u0018"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$RealBackend;", "Lokhttp3/internal/concurrent/TaskRunner$Backend;", "Ljava/util/concurrent/ThreadFactory;", "threadFactory", "<init>", "(Ljava/util/concurrent/ThreadFactory;)V", "", "nanoTime", "()J", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/concurrent/TaskRunner;)V", "nanos", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/concurrent/TaskRunner;J)V", "Ljava/lang/Runnable;", "runnable", "execute", "(Ljava/lang/Runnable;)V", "Ljava/util/concurrent/ThreadPoolExecutor;", "Ljava/util/concurrent/ThreadPoolExecutor;", "executor", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class RealBackend implements Backend {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ThreadPoolExecutor f12618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public RealBackend(@NotNull ThreadFactory threadFactory) {
            this.f12618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull TaskRunner taskRunner, long j) throws InterruptedException {
            long j2 = j / 1000000;
            long j3 = j - (1000000 * j2);
            if (j2 <= 0 && j <= 0) {
                return;
            }
            taskRunner.wait(j2, (int) j3);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull TaskRunner taskRunner) {
            taskRunner.notify();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void execute(@NotNull Runnable runnable) {
            this.f12618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(runnable);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public long nanoTime() {
            return System.nanoTime();
        }
    }

    public TaskRunner(@NotNull Backend backend) {
        this.f12617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = backend;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(Task task) {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        currentThread.setName(task.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        try {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = task.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            synchronized (this) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Unit unit = Unit.INSTANCE;
            }
            currentThread.setName(name);
        } catch (Throwable th) {
            synchronized (this) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task, -1L);
                Unit unit2 = Unit.INSTANCE;
                currentThread.setName(name);
                throw th;
            }
        }
    }

    @NotNull
    public final TaskQueue Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i;
        synchronized (this) {
            i = this.f12616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f12616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i + 1;
        }
        return new TaskQueue(this, Intrinsics.stringPlus("Q", Integer.valueOf(i)));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull TaskQueue taskQueue) {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        if (taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
            if (!taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isEmpty()) {
                Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12612Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, taskQueue);
            } else {
                this.f12612Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(taskQueue);
            }
        }
        if (this.f12615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f12617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        } else {
            this.f12617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(this.f12611Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    @NotNull
    public final Backend Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int size = this.f12613Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() - 1;
        if (size >= 0) {
            while (true) {
                int i = size - 1;
                this.f12613Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(size).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (i < 0) {
                    break;
                }
                size = i;
            }
        }
        int size2 = this.f12612Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() - 1;
        if (size2 < 0) {
            return;
        }
        while (true) {
            int i2 = size2 - 1;
            TaskQueue taskQueue = this.f12612Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(size2);
            taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isEmpty()) {
                this.f12612Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(size2);
            }
            if (i2 >= 0) {
                size2 = i2;
            } else {
                return;
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Task task) {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        task.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(-1L);
        TaskQueue Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = task.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().remove(task);
        this.f12612Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww(task);
        this.f12613Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    @Nullable
    public final Task Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        while (!this.f12612Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            long nanoTime = this.f12617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.nanoTime();
            Iterator<TaskQueue> it = this.f12612Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.iterator();
            long j = Long.MAX_VALUE;
            Task task = null;
            while (true) {
                if (it.hasNext()) {
                    Task task2 = it.next().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(0);
                    long max = Math.max(0L, task2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - nanoTime);
                    if (max > 0) {
                        j = Math.min(max, j);
                    } else if (task != null) {
                        z = true;
                        break;
                    } else {
                        task = task2;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (task != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task);
                if (z || (!this.f12615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && !this.f12612Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty())) {
                    this.f12617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(this.f12611Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
                return task;
            } else if (this.f12615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (j < this.f12614Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - nanoTime) {
                    this.f12617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                }
                return null;
            } else {
                this.f12615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                this.f12614Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = nanoTime + j;
                try {
                    try {
                        this.f12617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, j);
                    } catch (InterruptedException unused) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                } finally {
                    this.f12615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
                }
            }
        }
        return null;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Task task, long j) {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        TaskQueue Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = task.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == task) {
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww(false);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww(null);
            this.f12613Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (j != -1 && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww(task, j, true);
            }
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isEmpty()) {
                this.f12612Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
    }
}
