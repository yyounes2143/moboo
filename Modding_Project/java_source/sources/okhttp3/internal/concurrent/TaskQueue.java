package okhttp3.internal.concurrent;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0010!\n\u0002\b\b\u0018\u00002\u00020\u0001:\u00012B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\f¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u001d\u001a\u0004\b\u001e\u0010\u0019R\"\u0010$\u001a\u00020\u000f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\u0017\"\u0004\b\"\u0010#R$\u0010*\u001a\u0004\u0018\u00010\b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b\u001f\u0010'\"\u0004\b(\u0010)R \u0010/\u001a\b\u0012\u0004\u0012\u00020\b0+8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b,\u0010.R\"\u00101\u001a\u00020\u000f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010 \u001a\u0004\b%\u0010\u0017\"\u0004\b0\u0010#¨\u00063"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue;", "", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "", "name", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;Ljava/lang/String;)V", "Lokhttp3/internal/concurrent/Task;", "task", "", "delayNanos", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/concurrent/Task;J)V", "", "recurrence", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/concurrent/Task;JZ)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "toString", "()Ljava/lang/String;", "Lokhttp3/internal/concurrent/TaskRunner;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/concurrent/TaskRunner;", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "(Z)V", "shutdown", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/concurrent/Task;", "()Lokhttp3/internal/concurrent/Task;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/concurrent/Task;)V", "activeTask", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "()Ljava/util/List;", "futureTasks", "Wwwwwwwwwwwwwwwwwwwwww", "cancelActiveTask", "AwaitIdleTask", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class TaskQueue {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12599Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Task> f12600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Task f12601Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12602Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12603Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TaskRunner f12604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;", "Lokhttp3/internal/concurrent/Task;", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Ljava/util/concurrent/CountDownLatch;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/CountDownLatch;", "getLatch", "()Ljava/util/concurrent/CountDownLatch;", "latch", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class AwaitIdleTask extends Task {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final CountDownLatch f12605Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public AwaitIdleTask() {
            super(Intrinsics.stringPlus(Util.f12487Wwwwwwwwwwwwwwwwwwwwwwwwww, " awaitIdle"), false);
            this.f12605Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CountDownLatch(1);
        }

        @Override // okhttp3.internal.concurrent.Task
        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f12605Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.countDown();
            return -1L;
        }
    }

    public TaskQueue(@NotNull TaskRunner taskRunner, @NotNull String str) {
        this.f12604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = taskRunner;
        this.f12603Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwww(TaskQueue taskQueue, Task task, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwww(task, j);
    }

    public final void Wwwwwwwwwwwwwwwwwwww() {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this.f12604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                Wwwwwwwwwwwwwwwwwwwww(true);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(boolean z) {
        this.f12602Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(boolean z) {
        this.f12599Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable Task task) {
        this.f12601Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = task;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Task task, long j, boolean z) {
        String stringPlus;
        task.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        long nanoTime = this.f12604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().nanoTime();
        long j2 = nanoTime + j;
        int indexOf = this.f12600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.indexOf(task);
        if (indexOf != -1) {
            if (task.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= j2) {
                if (TaskRunner.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isLoggable(Level.FINE)) {
                    TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task, this, "already scheduled");
                }
                return false;
            }
            this.f12600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(indexOf);
        }
        task.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(j2);
        if (TaskRunner.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isLoggable(Level.FINE)) {
            if (z) {
                stringPlus = Intrinsics.stringPlus("run again after ", TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2 - nanoTime));
            } else {
                stringPlus = Intrinsics.stringPlus("scheduled after ", TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2 - nanoTime));
            }
            TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task, this, stringPlus);
        }
        Iterator<Task> it = this.f12600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.iterator();
        int i = 0;
        while (true) {
            if (it.hasNext()) {
                if (it.next().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - nanoTime > j) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i == -1) {
            i = this.f12600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        }
        this.f12600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(i, task);
        if (i != 0) {
            return false;
        }
        return true;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Task task, long j) {
        synchronized (this.f12604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (task.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    if (TaskRunner.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isLoggable(Level.FINE)) {
                        TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task, this, "schedule canceled (queue is shutdown)");
                    }
                    return;
                }
                if (TaskRunner.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isLoggable(Level.FINE)) {
                    TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwww(task, j, false)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    @NotNull
    public final TaskRunner Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12602Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12603Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<Task> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12599Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Task Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12601Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Task task = this.f12601Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (task != null && task.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            this.f12599Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        }
        int size = this.f12600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() - 1;
        boolean z = false;
        if (size < 0) {
            return false;
        }
        while (true) {
            int i = size - 1;
            if (this.f12600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(size).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Task task2 = this.f12600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(size);
                if (TaskRunner.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isLoggable(Level.FINE)) {
                    TaskLoggerKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task2, this, "canceled");
                }
                this.f12600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(size);
                z = true;
            }
            if (i < 0) {
                return z;
            }
            size = i;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this.f12604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NotNull
    public String toString() {
        return this.f12603Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
