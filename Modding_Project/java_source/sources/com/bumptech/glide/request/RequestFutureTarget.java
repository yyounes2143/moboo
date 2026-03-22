package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RequestFutureTarget<R> implements FutureTarget<R>, RequestListener<R> {

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Waiter f5047Wwwwwwwwwwwwwww = new Waiter();
    @Nullable
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public GlideException f5048Wwwwwwwwwwwwwwww;
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5049Wwwwwwwwwwwwwwwww;
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5050Wwwwwwwwwwwwwwwwww;
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5051Wwwwwwwwwwwwwwwwwww;
    @Nullable
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Request f5052Wwwwwwwwwwwwwwwwwwww;
    @Nullable
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public R f5053Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Waiter f5054Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f5055Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5056Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5057Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class Waiter {
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, long j) throws InterruptedException {
            obj.wait(j);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
            obj.notifyAll();
        }
    }

    public RequestFutureTarget(int i, int i2) {
        this(i, i2, true, f5047Wwwwwwwwwwwwwww);
    }

    public final synchronized R Wwwwwwwwwwwwwwwwwwwwwwww(Long l) throws ExecutionException, InterruptedException, TimeoutException {
        try {
            if (this.f5055Wwwwwwwwwwwwwwwwwwwwwww && !isDone()) {
                Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            if (!this.f5051Wwwwwwwwwwwwwwwwwww) {
                if (!this.f5049Wwwwwwwwwwwwwwwww) {
                    if (this.f5050Wwwwwwwwwwwwwwwwww) {
                        return this.f5053Wwwwwwwwwwwwwwwwwwwww;
                    }
                    if (l == null) {
                        this.f5054Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, 0L);
                    } else if (l.longValue() > 0) {
                        long currentTimeMillis = System.currentTimeMillis();
                        long longValue = l.longValue() + currentTimeMillis;
                        while (!isDone() && currentTimeMillis < longValue) {
                            this.f5054Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, longValue - currentTimeMillis);
                            currentTimeMillis = System.currentTimeMillis();
                        }
                    }
                    if (!Thread.interrupted()) {
                        if (!this.f5049Wwwwwwwwwwwwwwwww) {
                            if (!this.f5051Wwwwwwwwwwwwwwwwwww) {
                                if (this.f5050Wwwwwwwwwwwwwwwwww) {
                                    return this.f5053Wwwwwwwwwwwwwwwwwwwww;
                                }
                                throw new TimeoutException();
                            }
                            throw new CancellationException();
                        }
                        throw new ExecutionException(this.f5048Wwwwwwwwwwwwwwww);
                    }
                    throw new InterruptedException();
                }
                throw new ExecutionException(this.f5048Wwwwwwwwwwwwwwww);
            }
            throw new CancellationException();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
        sizeReadyCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5057Wwwwwwwwwwwwwwwwwwwwwwwww, this.f5056Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request) {
        this.f5052Wwwwwwwwwwwwwwwwwwww = request;
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull R r, @Nullable Transition<? super R> transition) {
    }

    @Override // com.bumptech.glide.request.RequestListener
    public synchronized boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(R r, Object obj, Target<R> target, DataSource dataSource, boolean z) {
        this.f5050Wwwwwwwwwwwwwwwwww = true;
        this.f5053Wwwwwwwwwwwwwwwwwwwww = r;
        this.f5054Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        return false;
    }

    @Override // com.bumptech.glide.request.RequestListener
    public synchronized boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable GlideException glideException, Object obj, Target<R> target, boolean z) {
        this.f5049Wwwwwwwwwwwwwwwww = true;
        this.f5048Wwwwwwwwwwwwwwww = glideException;
        this.f5054Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        return false;
    }

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public synchronized Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5052Wwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            try {
                if (isDone()) {
                    return false;
                }
                this.f5051Wwwwwwwwwwwwwwwwwww = true;
                this.f5054Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                Request request = null;
                if (z) {
                    Request request2 = this.f5052Wwwwwwwwwwwwwwwwwwww;
                    this.f5052Wwwwwwwwwwwwwwwwwwww = null;
                    request = request2;
                }
                if (request != null) {
                    request.clear();
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Future
    public R get() throws InterruptedException, ExecutionException {
        try {
            return Wwwwwwwwwwwwwwwwwwwwwwww(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isCancelled() {
        return this.f5051Wwwwwwwwwwwwwwwwwww;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isDone() {
        boolean z;
        if (!this.f5051Wwwwwwwwwwwwwwwwwww && !this.f5050Wwwwwwwwwwwwwwwwww) {
            if (!this.f5049Wwwwwwwwwwwwwwwww) {
                z = false;
            }
        }
        z = true;
        return z;
    }

    public String toString() {
        Request request;
        String str;
        String str2 = super.toString() + "[status=";
        synchronized (this) {
            try {
                request = null;
                if (this.f5051Wwwwwwwwwwwwwwwwwww) {
                    str = "CANCELLED";
                } else if (this.f5049Wwwwwwwwwwwwwwwww) {
                    str = "FAILURE";
                } else if (this.f5050Wwwwwwwwwwwwwwwwww) {
                    str = "SUCCESS";
                } else {
                    str = "PENDING";
                    request = this.f5052Wwwwwwwwwwwwwwwwwwww;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (request != null) {
            return str2 + str + ", request=[" + request + "]]";
        }
        return str2 + str + "]";
    }

    public RequestFutureTarget(int i, int i2, boolean z, Waiter waiter) {
        this.f5057Wwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f5056Wwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f5055Wwwwwwwwwwwwwwwwwwwwwww = z;
        this.f5054Wwwwwwwwwwwwwwwwwwwwww = waiter;
    }

    @Override // java.util.concurrent.Future
    public R get(long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return Wwwwwwwwwwwwwwwwwwwwwwww(Long.valueOf(timeUnit.toMillis(j)));
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
    }
}
