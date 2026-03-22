package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class GlideExecutor implements ExecutorService {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile int f4541Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final long f4542Wwwwwwwwwwwwwwwwwwwwwwww = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ExecutorService f4543Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f4544Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f4545Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f4550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NonNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ThreadFactory f4547Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DefaultPriorityThreadFactory();
        @NonNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public UncaughtThrowableStrategy f4546Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = UncaughtThrowableStrategy.f4559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder(boolean z) {
            this.f4550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@IntRange(from = 1) int i) {
            this.f4549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f4548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            return this;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            this.f4545Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        public GlideExecutor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (!TextUtils.isEmpty(this.f4545Wwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.f4549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4548Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4544Wwwwwwwwwwwwwwwwwwwwwwwwwwww, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new DefaultThreadFactory(this.f4547Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4545Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4546Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
                if (this.f4544Wwwwwwwwwwwwwwwwwwwwwwwwwwww != 0) {
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
                return new GlideExecutor(threadPoolExecutor);
            }
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f4545Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class DefaultPriorityThreadFactory implements ThreadFactory {
        public DefaultPriorityThreadFactory() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(runnable) { // from class: com.bumptech.glide.load.engine.executor.GlideExecutor.DefaultPriorityThreadFactory.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Process.setThreadPriority(9);
                    super.run();
                }
            };
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class DefaultThreadFactory implements ThreadFactory {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AtomicInteger f4552Wwwwwwwwwwwwwwwwwwwww = new AtomicInteger();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f4553Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final UncaughtThrowableStrategy f4554Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f4555Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ThreadFactory f4556Wwwwwwwwwwwwwwwwwwwwwwwww;

        public DefaultThreadFactory(ThreadFactory threadFactory, String str, UncaughtThrowableStrategy uncaughtThrowableStrategy, boolean z) {
            this.f4556Wwwwwwwwwwwwwwwwwwwwwwwww = threadFactory;
            this.f4555Wwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f4554Wwwwwwwwwwwwwwwwwwwwwww = uncaughtThrowableStrategy;
            this.f4553Wwwwwwwwwwwwwwwwwwwwww = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull final Runnable runnable) {
            Thread newThread = this.f4556Wwwwwwwwwwwwwwwwwwwwwwwww.newThread(new Runnable() { // from class: com.bumptech.glide.load.engine.executor.GlideExecutor.DefaultThreadFactory.1
                @Override // java.lang.Runnable
                public void run() {
                    if (DefaultThreadFactory.this.f4553Wwwwwwwwwwwwwwwwwwwwww) {
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        runnable.run();
                    } catch (Throwable th) {
                        DefaultThreadFactory.this.f4554Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th);
                    }
                }
            });
            newThread.setName("glide-" + this.f4555Wwwwwwwwwwwwwwwwwwwwwwww + "-thread-" + this.f4552Wwwwwwwwwwwwwwwwwwwww.getAndIncrement());
            return newThread;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface UncaughtThrowableStrategy {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final UncaughtThrowableStrategy f4559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final UncaughtThrowableStrategy f4560Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final UncaughtThrowableStrategy f4561Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final UncaughtThrowableStrategy f4562Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new UncaughtThrowableStrategy() { // from class: com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy.1
            @Override // com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Throwable th) {
            }
        };

        static {
            UncaughtThrowableStrategy uncaughtThrowableStrategy = new UncaughtThrowableStrategy() { // from class: com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy.2
                @Override // com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Throwable th) {
                }
            };
            f4561Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uncaughtThrowableStrategy;
            f4560Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new UncaughtThrowableStrategy() { // from class: com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy.3
                @Override // com.bumptech.glide.load.engine.executor.GlideExecutor.UncaughtThrowableStrategy
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Throwable th) {
                    if (th == null) {
                        return;
                    }
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            };
            f4559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uncaughtThrowableStrategy;
        }

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Throwable th);
    }

    @VisibleForTesting
    public GlideExecutor(ExecutorService executorService) {
        this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww = executorService;
    }

    public static GlideExecutor Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new GlideExecutor(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f4542Wwwwwwwwwwwwwwwwwwwwwwww, TimeUnit.MILLISECONDS, new SynchronousQueue(), new DefaultThreadFactory(new DefaultPriorityThreadFactory(), "source-unlimited", UncaughtThrowableStrategy.f4559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, false)));
    }

    public static GlideExecutor Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(false).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("source");
    }

    public static GlideExecutor Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(true).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("disk-cache");
    }

    public static GlideExecutor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public static Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(true).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("animation");
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f4541Wwwwwwwwwwwwwwwwwwwwwww == 0) {
            f4541Wwwwwwwwwwwwwwwwwwwwwww = Math.min(4, RuntimeCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        return f4541Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() >= 4) {
            return 2;
        }
        return 1;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public List<Runnable> shutdownNow() {
        return this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public Future<?> submit(@NonNull Runnable runnable) {
        return this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.submit(runnable);
    }

    public String toString() {
        return this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.toString();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection, long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> Future<T> submit(@NonNull Runnable runnable, T t) {
        return this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(@NonNull Callable<T> callable) {
        return this.f4543Wwwwwwwwwwwwwwwwwwwwwwwww.submit(callable);
    }
}
