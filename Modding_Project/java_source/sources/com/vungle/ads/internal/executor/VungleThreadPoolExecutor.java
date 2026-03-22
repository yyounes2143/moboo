package com.vungle.ads.internal.executor;

import com.vungle.ads.OutOfMemory;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.task.PriorityRunnable;
import com.vungle.ads.internal.util.Logger;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0010\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0016J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000bJ\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0014\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00182\u0006\u0010\u0019\u001a\u00020\u000bH\u0016J)\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u001a0\u0018\"\u0004\b\u0000\u0010\u001a2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u0002H\u001aH\u0016¢\u0006\u0002\u0010\u001cJ!\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00182\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\u001dJ\"\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u001a0\u0018\"\u0004\b\u0000\u0010\u001a2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u001a0\u001eH\u0016R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006!"}, d2 = {"Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;", "Ljava/util/concurrent/ThreadPoolExecutor;", "corePoolSize", "", "maximumPoolSize", "keepAliveTime", "", "unit", "Ljava/util/concurrent/TimeUnit;", "workQueue", "Ljava/util/concurrent/BlockingQueue;", "Ljava/lang/Runnable;", "threadFactory", "Lcom/vungle/ads/internal/executor/NamedThreadFactory;", "(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/NamedThreadFactory;)V", "getThreadFactory", "()Lcom/vungle/ads/internal/executor/NamedThreadFactory;", "execute", "", "command", "fail", "executorName", "", "submit", "Ljava/util/concurrent/Future;", "task", "T", "result", "(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;", "submit$vungle_ads_release", "Ljava/util/concurrent/Callable;", "Companion", "ComparableRunnable", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class VungleThreadPoolExecutor extends ThreadPoolExecutor {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "VungleThreadPool";
    @Nullable
    private final NamedThreadFactory threadFactory;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0000\u0010\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00070\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor$Companion;", "", "()V", "TAG", "", "getWrappedCallableWithFallback", "Ljava/util/concurrent/Callable;", "T", "command", "failFallback", "Lkotlin/Function0;", "", "getWrappedRunnableWithFail", "Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor$ComparableRunnable;", "Ljava/lang/Runnable;", "fail", "wrapRunnableWithFail", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final <T> Callable<T> getWrappedCallableWithFallback(final Callable<T> callable, final Function0<Unit> function0) {
            return new Callable() { // from class: com.vungle.ads.internal.executor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Object m315getWrappedCallableWithFallback$lambda0;
                    m315getWrappedCallableWithFallback$lambda0 = VungleThreadPoolExecutor.Companion.m315getWrappedCallableWithFallback$lambda0(callable, function0);
                    return m315getWrappedCallableWithFallback$lambda0;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: getWrappedCallableWithFallback$lambda-0  reason: not valid java name */
        public static final Object m315getWrappedCallableWithFallback$lambda0(Callable callable, Function0 function0) {
            try {
                return callable.call();
            } catch (OutOfMemoryError unused) {
                function0.invoke();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ComparableRunnable getWrappedRunnableWithFail(final Runnable runnable, final Runnable runnable2) {
            if (runnable instanceof PriorityRunnable) {
                return new PriorityRunnable() { // from class: com.vungle.ads.internal.executor.VungleThreadPoolExecutor$Companion$getWrappedRunnableWithFail$1
                    @Override // com.vungle.ads.internal.task.PriorityRunnable, java.lang.Comparable
                    public int compareTo(@NotNull Object obj) {
                        if (obj instanceof PriorityRunnable) {
                            return Intrinsics.compare(((PriorityRunnable) obj).getPriority(), getPriority());
                        }
                        return 0;
                    }

                    @Override // com.vungle.ads.internal.task.PriorityRunnable
                    public int getPriority() {
                        return ((PriorityRunnable) runnable).getPriority();
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        VungleThreadPoolExecutor.Companion.wrapRunnableWithFail(runnable, runnable2);
                    }
                };
            }
            return new ComparableRunnable() { // from class: com.vungle.ads.internal.executor.VungleThreadPoolExecutor$Companion$getWrappedRunnableWithFail$2
                @Override // java.lang.Comparable
                public int compareTo(@NotNull Object obj) {
                    Runnable runnable3 = runnable;
                    if (runnable3 instanceof PriorityRunnable) {
                        return ((PriorityRunnable) runnable3).compareTo(obj);
                    }
                    return 0;
                }

                @Override // java.lang.Runnable
                public void run() {
                    VungleThreadPoolExecutor.Companion.wrapRunnableWithFail(runnable, runnable2);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void wrapRunnableWithFail(Runnable runnable, Runnable runnable2) {
            try {
                runnable.run();
            } catch (OutOfMemoryError unused) {
                runnable2.run();
            }
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor$ComparableRunnable;", "", "", "Ljava/lang/Runnable;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public interface ComparableRunnable extends Comparable<Object>, Runnable {
    }

    public VungleThreadPoolExecutor(int i, int i2, long j, @Nullable TimeUnit timeUnit, @Nullable BlockingQueue<Runnable> blockingQueue, @Nullable NamedThreadFactory namedThreadFactory) {
        super(i, i2, j, timeUnit, blockingQueue, namedThreadFactory);
        this.threadFactory = namedThreadFactory;
        allowCoreThreadTimeOut(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: execute$lambda-0  reason: not valid java name */
    public static final void m312execute$lambda0(VungleThreadPoolExecutor vungleThreadPoolExecutor) {
        new OutOfMemory("execute error in " + vungleThreadPoolExecutor.executorName()).logErrorNoReturnValue$vungle_ads_release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String executorName() {
        String name;
        NamedThreadFactory namedThreadFactory = this.threadFactory;
        if (namedThreadFactory != null && (name = namedThreadFactory.getName()) != null) {
            return name;
        }
        return "VungleThreadPoolExecutor";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: submit$lambda-1  reason: not valid java name */
    public static final void m313submit$lambda1(VungleThreadPoolExecutor vungleThreadPoolExecutor) {
        new OutOfMemory("submit error in " + vungleThreadPoolExecutor.executorName()).logErrorNoReturnValue$vungle_ads_release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: submit$lambda-2  reason: not valid java name */
    public static final void m314submit$lambda2(VungleThreadPoolExecutor vungleThreadPoolExecutor) {
        new OutOfMemory("submit error with result in " + vungleThreadPoolExecutor.executorName()).logErrorNoReturnValue$vungle_ads_release();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        try {
            super.execute(Companion.getWrappedRunnableWithFail(runnable, new Runnable() { // from class: com.vungle.ads.internal.executor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    VungleThreadPoolExecutor.m312execute$lambda0(VungleThreadPoolExecutor.this);
                }
            }));
        } catch (Exception e) {
            Logger.Companion.e(TAG, "execute exception", e);
        } catch (OutOfMemoryError e2) {
            String str = "execute error in " + executorName() + ": " + e2.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e2);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    @Nullable
    public final NamedThreadFactory getThreadFactory() {
        return this.threadFactory;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    @NotNull
    public Future<?> submit(@NotNull Runnable runnable) {
        try {
            return super.submit(Companion.getWrappedRunnableWithFail(runnable, new Runnable() { // from class: com.vungle.ads.internal.executor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    VungleThreadPoolExecutor.m313submit$lambda1(VungleThreadPoolExecutor.this);
                }
            }));
        } catch (Exception e) {
            Logger.Companion.e(TAG, "submit exception", e);
            return new FutureResult(null);
        } catch (OutOfMemoryError e2) {
            String str = "submit error in " + executorName() + ": " + e2.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e2);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            return new FutureResult(null);
        }
    }

    @NotNull
    public final Future<?> submit$vungle_ads_release(@NotNull Runnable runnable, @NotNull Runnable runnable2) {
        try {
            return super.submit(Companion.getWrappedRunnableWithFail(runnable, runnable2));
        } catch (Exception e) {
            Logger.Companion.e(TAG, "submit exception with fail", e);
            runnable2.run();
            return new FutureResult(null);
        } catch (OutOfMemoryError e2) {
            String str = "submit error with fail in " + executorName() + ": " + e2.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e2);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            runnable2.run();
            return new FutureResult(null);
        }
    }

    public final void execute(@NotNull Runnable runnable, @NotNull Runnable runnable2) {
        try {
            super.execute(Companion.getWrappedRunnableWithFail(runnable, runnable2));
        } catch (Exception e) {
            Logger.Companion.e(TAG, "execute exception with fail", e);
            runnable2.run();
        } catch (OutOfMemoryError e2) {
            String str = "execute error with fail in " + executorName() + ": " + e2.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e2);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            runnable2.run();
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    @NotNull
    public <T> Future<T> submit(@NotNull Runnable runnable, T t) {
        try {
            return super.submit(Companion.getWrappedRunnableWithFail(runnable, new Runnable() { // from class: com.vungle.ads.internal.executor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    VungleThreadPoolExecutor.m314submit$lambda2(VungleThreadPoolExecutor.this);
                }
            }), t);
        } catch (Exception e) {
            Logger.Companion.e(TAG, "submit exception with result", e);
            return new FutureResult(null);
        } catch (OutOfMemoryError e2) {
            String str = "submit error with result in " + executorName() + ": " + e2.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e2);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            return new FutureResult(null);
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    @NotNull
    public <T> Future<T> submit(@NotNull Callable<T> callable) {
        try {
            return super.submit(Companion.getWrappedCallableWithFallback(callable, new Function0<Unit>() { // from class: com.vungle.ads.internal.executor.VungleThreadPoolExecutor$submit$3
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    String executorName;
                    StringBuilder sb = new StringBuilder();
                    sb.append("submit callable error in ");
                    executorName = VungleThreadPoolExecutor.this.executorName();
                    sb.append(executorName);
                    new OutOfMemory(sb.toString()).logErrorNoReturnValue$vungle_ads_release();
                }
            }));
        } catch (Exception e) {
            Logger.Companion.e(TAG, "submit exception callable: " + e);
            return new FutureResult(null);
        } catch (OutOfMemoryError e2) {
            String str = "submit error callable in " + executorName() + ": " + e2.getLocalizedMessage();
            Logger.Companion.e(TAG, str, e2);
            new OutOfMemory(str).logErrorNoReturnValue$vungle_ads_release();
            return new FutureResult(null);
        }
    }
}
