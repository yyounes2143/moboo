package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.lang.ref.Reference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.platform.Platform;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001)\u0018\u0000 /2\u00020\u0001:\u0001/B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ5\u0010\u0015\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010!\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\"R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010#R\u0014\u0010%\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010$R\u0014\u0010(\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010*R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00170,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010-¨\u00060"}, d2 = {"Lokhttp3/internal/connection/RealConnectionPool;", "", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "", "maxIdleConnections", "", "keepAliveDuration", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;IJLjava/util/concurrent/TimeUnit;)V", "Lokhttp3/Address;", "address", "Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, "", "Lokhttp3/Route;", "routes", "", "requireMultiplexed", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Ljava/util/List;Z)Z", "Lokhttp3/internal/connection/RealConnection;", "connection", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/connection/RealConnection;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/connection/RealConnection;)Z", "now", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/connection/RealConnection;J)I", "I", "J", "keepAliveDurationNs", "Lokhttp3/internal/concurrent/TaskQueue;", "Lokhttp3/internal/concurrent/TaskQueue;", "cleanupQueue", "okhttp3/internal/connection/RealConnectionPool$cleanupTask$1", "Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;", "cleanupTask", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "connections", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class RealConnectionPool {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ConcurrentLinkedQueue<RealConnection> f12695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealConnectionPool$cleanupTask$1 f12696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TaskQueue f12697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f12698Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f12699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/connection/RealConnectionPool$Companion;", "", "<init>", "()V", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [okhttp3.internal.connection.RealConnectionPool$cleanupTask$1] */
    public RealConnectionPool(@NotNull TaskRunner taskRunner, int i, long j, @NotNull TimeUnit timeUnit) {
        this.f12699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f12698Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = timeUnit.toNanos(j);
        this.f12697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = taskRunner.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        final String stringPlus = Intrinsics.stringPlus(Util.f12487Wwwwwwwwwwwwwwwwwwwwwwwwww, " ConnectionPool");
        this.f12696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Task(stringPlus) { // from class: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                return RealConnectionPool.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(System.nanoTime());
            }
        };
        this.f12695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentLinkedQueue<>();
        if (j > 0) {
            return;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("keepAliveDuration <= 0: ", Long.valueOf(j)).toString());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull RealConnection realConnection) {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(realConnection)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + realConnection);
        }
        this.f12695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(realConnection);
        TaskQueue.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f12697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0L, 2, null);
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RealConnection realConnection, long j) {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(realConnection)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + realConnection);
        }
        List<Reference<RealCall>> Wwwwwwwwwwwwwwwwwwww2 = realConnection.Wwwwwwwwwwwwwwwwwwww();
        int i = 0;
        while (i < Wwwwwwwwwwwwwwwwwwww2.size()) {
            Reference<RealCall> reference = Wwwwwwwwwwwwwwwwwwww2.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww("A connection to " + realConnection.Wwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww() + " was leaked. Did you forget to close a response body?", ((RealCall.CallReference) reference).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                Wwwwwwwwwwwwwwwwwwww2.remove(i);
                realConnection.Wwww(true);
                if (Wwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                    realConnection.Wwwww(j - this.f12698Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    return 0;
                }
            }
        }
        return Wwwwwwwwwwwwwwwwwwww2.size();
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull RealConnection realConnection) {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(realConnection)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + realConnection);
        } else if (!realConnection.Wwwwwwwwwwwwwwwwww() && this.f12699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != 0) {
            TaskQueue.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f12697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0L, 2, null);
            return false;
        } else {
            realConnection.Wwww(true);
            this.f12695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(realConnection);
            if (this.f12695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                this.f12697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return true;
        }
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        Iterator<RealConnection> it = this.f12695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.iterator();
        int i = 0;
        long j2 = Long.MIN_VALUE;
        RealConnection realConnection = null;
        int i2 = 0;
        while (it.hasNext()) {
            RealConnection next = it.next();
            synchronized (next) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(next, j) > 0) {
                    i2++;
                } else {
                    i++;
                    long Wwwwwwwwwwwwwwwwwww2 = j - next.Wwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwww2 > j2) {
                        realConnection = next;
                        j2 = Wwwwwwwwwwwwwwwwwww2;
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
        long j3 = this.f12698Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (j2 < j3 && i <= this.f12699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (i > 0) {
                return j3 - j2;
            }
            if (i2 > 0) {
                return j3;
            }
            return -1L;
        }
        synchronized (realConnection) {
            if (!realConnection.Wwwwwwwwwwwwwwwwwwww().isEmpty()) {
                return 0L;
            }
            if (realConnection.Wwwwwwwwwwwwwwwwwww() + j2 != j) {
                return 0L;
            }
            realConnection.Wwww(true);
            this.f12695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(realConnection);
            Util.Wwwwwwwwwwwwwwwwwwwww(realConnection.Www());
            if (this.f12695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                this.f12697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return 0L;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Address address, @NotNull RealCall realCall, @Nullable List<Route> list, boolean z) {
        Iterator<RealConnection> it = this.f12695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.iterator();
        while (it.hasNext()) {
            RealConnection next = it.next();
            synchronized (next) {
                if (z) {
                    try {
                        if (!next.Wwwwwwwwwwww()) {
                            Unit unit = Unit.INSTANCE;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (next.Wwwwwwwwwwwwww(address, list)) {
                    realCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(next);
                    return true;
                }
                Unit unit2 = Unit.INSTANCE;
            }
        }
        return false;
    }
}
