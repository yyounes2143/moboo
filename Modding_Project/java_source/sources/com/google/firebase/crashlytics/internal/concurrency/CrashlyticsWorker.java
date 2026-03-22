package com.google.firebase.crashlytics.internal.concurrency;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class CrashlyticsWorker implements Executor {
    private final ExecutorService executor;
    private final Object tailLock = new Object();
    private Task<?> tail = Tasks.forResult(null);

    public CrashlyticsWorker(ExecutorService executorService) {
        this.executor = executorService;
    }

    public static /* synthetic */ Task Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Callable callable, Task task) {
        return (Task) callable.call();
    }

    public static /* synthetic */ Task Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Callable callable, Task task) {
        return (Task) callable.call();
    }

    public static /* synthetic */ Task Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SuccessContinuation successContinuation, Task task) {
        if (task.isSuccessful()) {
            return successContinuation.then(task.getResult());
        }
        if (task.getException() != null) {
            return Tasks.forException(task.getException());
        }
        return Tasks.forCanceled();
    }

    public static /* synthetic */ Task Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Runnable runnable, Task task) {
        runnable.run();
        return Tasks.forResult(null);
    }

    public static /* synthetic */ Task Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Callable callable, Task task) {
        return (Task) callable.call();
    }

    @VisibleForTesting
    public void await() throws ExecutionException, InterruptedException, TimeoutException {
        Tasks.await(submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.concurrency.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                CrashlyticsWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }), 30L, TimeUnit.SECONDS);
        Thread.sleep(1L);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.executor.execute(runnable);
    }

    public ExecutorService getExecutor() {
        return this.executor;
    }

    @CanIgnoreReturnValue
    public <T> Task<T> submit(final Callable<T> callable) {
        Task task;
        synchronized (this.tailLock) {
            task = (Task<T>) this.tail.continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.concurrency.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    Task forResult;
                    forResult = Tasks.forResult(callable.call());
                    return forResult;
                }
            });
            this.tail = task;
        }
        return task;
    }

    @CanIgnoreReturnValue
    public <T> Task<T> submitTask(final Callable<Task<T>> callable) {
        Task task;
        synchronized (this.tailLock) {
            task = (Task<T>) this.tail.continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.concurrency.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return CrashlyticsWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(callable, task2);
                }
            });
            this.tail = task;
        }
        return task;
    }

    @CanIgnoreReturnValue
    public <T, R> Task<R> submitTaskOnSuccess(final Callable<Task<T>> callable, final SuccessContinuation<T, R> successContinuation) {
        Task task;
        synchronized (this.tailLock) {
            task = (Task<R>) this.tail.continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.concurrency.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return CrashlyticsWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(callable, task2);
                }
            }).continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.concurrency.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return CrashlyticsWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SuccessContinuation.this, task2);
                }
            });
            this.tail = task;
        }
        return task;
    }

    @CanIgnoreReturnValue
    public Task<Void> submit(final Runnable runnable) {
        Task continueWithTask;
        synchronized (this.tailLock) {
            continueWithTask = this.tail.continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.concurrency.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return CrashlyticsWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(runnable, task);
                }
            });
            this.tail = continueWithTask;
        }
        return continueWithTask;
    }

    @CanIgnoreReturnValue
    public <T, R> Task<R> submitTask(final Callable<Task<T>> callable, Continuation<T, Task<R>> continuation) {
        Task task;
        synchronized (this.tailLock) {
            task = (Task<R>) this.tail.continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.concurrency.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return CrashlyticsWorker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(callable, task2);
                }
            }).continueWithTask(this.executor, continuation);
            this.tail = task;
        }
        return task;
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
    }
}
