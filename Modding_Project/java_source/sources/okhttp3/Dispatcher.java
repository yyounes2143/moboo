package okhttp3;

import androidx.core.app.NotificationCompat;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealCall;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\b\u001a\u00020\u00072\n\u0010\u0006\u001a\u00060\u0004R\u00020\u0005H\u0000¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\f\u001a\u00020\u00072\n\u0010\u0006\u001a\u00060\u0004R\u00020\u0005H\u0000¢\u0006\u0004\b\f\u0010\tJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\r\u0010\u000bJ\r\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\b\u0018\u00010\u0004R\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J+\u0010\u001b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u00182\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u00192\u0006\u0010\u0006\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u001b\u0010\u001cR*\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000e8F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u001e\u001a\u0004\b\u001f\u0010\u0010\"\u0004\b \u0010!R*\u0010\"\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000e8F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u001e\u001a\u0004\b#\u0010\u0010\"\u0004\b$\u0010!R.\u0010-\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010%8F@FX\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010/R\u001e\u00103\u001a\f\u0012\b\u0012\u00060\u0004R\u00020\u0005018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u00102R\u001e\u00104\u001a\f\u0012\b\u0012\u00060\u0004R\u00020\u0005018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u00102R\u001a\u00105\u001a\b\u0012\u0004\u0012\u00020\u0005018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u00102R\u0011\u00107\u001a\u00020.8G¢\u0006\u0006\u001a\u0004\b'\u00106¨\u00068"}, d2 = {"Lokhttp3/Dispatcher;", "", "<init>", "()V", "Lokhttp3/internal/connection/RealCall$AsyncCall;", "Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/connection/RealCall$AsyncCall;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/connection/RealCall;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwww", "()I", "", "host", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokhttp3/internal/connection/RealCall$AsyncCall;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Z", "T", "Ljava/util/Deque;", "calls", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Deque;Ljava/lang/Object;)V", "maxRequests", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "setMaxRequests", "(I)V", "maxRequestsPerHost", "Wwwwwwwwwwwwwwwwwwwwwwwww", "setMaxRequestsPerHost", "Ljava/lang/Runnable;", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Runnable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Runnable;", "setIdleCallback", "(Ljava/lang/Runnable;)V", "idleCallback", "Ljava/util/concurrent/ExecutorService;", "Ljava/util/concurrent/ExecutorService;", "executorServiceOrNull", "Ljava/util/ArrayDeque;", "Ljava/util/ArrayDeque;", "readyAsyncCalls", "runningAsyncCalls", "runningSyncCalls", "()Ljava/util/concurrent/ExecutorService;", "executorService", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Dispatcher {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ExecutorService f12295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Runnable f12296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 64;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 5;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayDeque<RealCall.AsyncCall> f12294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayDeque<>();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayDeque<RealCall.AsyncCall> f12293Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayDeque<>();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayDeque<RealCall> f12292Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayDeque<>();

    public final synchronized int Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12293Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() + this.f12292Wwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwww() {
        int i;
        boolean z;
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<RealCall.AsyncCall> it = this.f12294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.iterator();
                while (it.hasNext()) {
                    RealCall.AsyncCall next = it.next();
                    if (this.f12293Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() >= Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        break;
                    } else if (next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get() < Wwwwwwwwwwwwwwwwwwwwwwwww()) {
                        it.remove();
                        next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().incrementAndGet();
                        arrayList.add(next);
                        this.f12293Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(next);
                    }
                }
                if (Wwwwwwwwwwwwwwwwwwwwwww() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        for (i = 0; i < size; i++) {
            ((RealCall.AsyncCall) arrayList.get(i)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        return z;
    }

    public final synchronized int Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final synchronized int Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final synchronized Runnable Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull RealCall realCall) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12292Wwwwwwwwwwwwwwwwwwwwwwwwwwww, realCall);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull RealCall.AsyncCall asyncCall) {
        asyncCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().decrementAndGet();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12293Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, asyncCall);
    }

    public final <T> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Deque<T> deque, T t) {
        Runnable Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        synchronized (this) {
            if (deque.remove(t)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                Unit unit = Unit.INSTANCE;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (!Wwwwwwwwwwwwwwwwwwwwwwww() && Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2.run();
        }
    }

    public final RealCall.AsyncCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Iterator<RealCall.AsyncCall> it = this.f12293Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.iterator();
        while (it.hasNext()) {
            RealCall.AsyncCall next = it.next();
            if (Intrinsics.areEqual(next.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), str)) {
                return next;
            }
        }
        Iterator<RealCall.AsyncCall> it2 = this.f12294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.iterator();
        while (it2.hasNext()) {
            RealCall.AsyncCall next2 = it2.next();
            if (Intrinsics.areEqual(next2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), str)) {
                return next2;
            }
        }
        return null;
    }

    @JvmName(name = "executorService")
    @NotNull
    public final synchronized ExecutorService Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            if (this.f12295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                this.f12295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.Kkkkkkkkkkkkkkkkkkk(Intrinsics.stringPlus(Util.f12487Wwwwwwwwwwwwwwwwwwwwwwwwww, " Dispatcher"), false));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f12295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull RealCall realCall) {
        this.f12292Wwwwwwwwwwwwwwwwwwwwwwwwwwww.add(realCall);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull RealCall.AsyncCall asyncCall) {
        RealCall.AsyncCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        synchronized (this) {
            try {
                this.f12294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(asyncCall);
                if (!asyncCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww() && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(asyncCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) != null) {
                    asyncCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        Wwwwwwwwwwwwwwwwwwwwwwww();
    }
}
