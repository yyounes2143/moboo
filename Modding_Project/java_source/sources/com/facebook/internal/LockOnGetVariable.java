package com.facebook.internal;

import com.facebook.FacebookSdk;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0017\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tR\u0018\u0010\f\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0013\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/LockOnGetVariable;", "T", "", "Ljava/util/concurrent/Callable;", "callable", "<init>", "(Ljava/util/concurrent/Callable;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "storedValue", "Ljava/util/concurrent/CountDownLatch;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/CountDownLatch;", "initLatch", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Object;", "value", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LockOnGetVariable<T> {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CountDownLatch f6762Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CountDownLatch(1);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public T f6763Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public LockOnGetVariable(@NotNull final Callable<T> callable) {
        FacebookSdk.Wwwwwwwwwwwwww().execute(new FutureTask(new Callable() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwww
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LockOnGetVariable.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LockOnGetVariable.this, callable);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }));
    }

    public static final Void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LockOnGetVariable lockOnGetVariable, Callable callable) {
        try {
            lockOnGetVariable.f6763Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (T) callable.call();
        } finally {
            CountDownLatch countDownLatch = lockOnGetVariable.f6762Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        CountDownLatch countDownLatch = this.f6762Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (countDownLatch != null) {
            try {
                countDownLatch.await();
            } catch (InterruptedException unused) {
            }
        }
    }

    @Nullable
    public final T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return this.f6763Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
