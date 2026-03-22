package com.didi.drouter.utils;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RouterExecutor {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Handler f5837Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ExecutorService f5836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new RouterThreadExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue());

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class RouterThreadExecutor extends ThreadPoolExecutor {
        public RouterThreadExecutor(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
            super(i, i2, j, timeUnit, blockingQueue);
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        public void afterExecute(Runnable runnable, Throwable th) {
            super.afterExecute(runnable, th);
            if (th == null && (runnable instanceof Future) && ((Future) runnable).isDone()) {
                try {
                    ((Future) runnable).get();
                } catch (InterruptedException unused) {
                } catch (ExecutionException e) {
                    th = e.getCause();
                }
            }
            if (th == null) {
                return;
            }
            throw new RuntimeException(th);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Runnable runnable) {
        if (Thread.currentThread() != Looper.getMainLooper().getThread() && !Thread.currentThread().getName().contains("Binder")) {
            runnable.run();
        } else {
            f5836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.submit(runnable);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Runnable runnable) {
        f5836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.submit(runnable);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Runnable runnable, long j) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread() && j == 0) {
            runnable.run();
        } else {
            f5837Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.postDelayed(runnable, j);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Runnable runnable) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(runnable, 0L);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Runnable runnable) {
        if (i != 1) {
            if (i != 2) {
                runnable.run();
                return;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(runnable);
                return;
            }
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(runnable);
    }
}
