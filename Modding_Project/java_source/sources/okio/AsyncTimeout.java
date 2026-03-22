package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000f\b\u0016\u0018\u0000 $2\u00020\u0001:\u0002$%B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0003J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\u0003J\u0015\u0010\f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0004\b\u0016\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006&"}, d2 = {"Lokio/AsyncTimeout;", "Lokio/Timeout;", "<init>", "()V", "", "Wwwwwwwwwww", "", "Wwwwwwwwww", "()Z", "Wwwww", "Lokio/Sink;", "sink", "Wwwwwww", "(Lokio/Sink;)Lokio/Sink;", "Lokio/Source;", "source", "Wwwwww", "(Lokio/Source;)Lokio/Source;", "Ljava/io/IOException;", "cause", "Wwwwwwwwwwwwwwwww", "(Ljava/io/IOException;)Ljava/io/IOException;", "Wwwwwwwww", "", "now", "Wwwwwwww", "(J)J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "inQueue", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/AsyncTimeout;", "next", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "timeoutAt", "Companion", "Watchdog", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public class AsyncTimeout extends Timeout {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static AsyncTimeout f13110Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final long f13111Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final long f13112Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Condition f13113Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ReentrantLock f13114Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13115Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AsyncTimeout f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0012\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0017\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010!\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lokio/AsyncTimeout$Companion;", "", "<init>", "()V", "Lokio/AsyncTimeout;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/AsyncTimeout;", "node", "", "timeoutNanos", "", "hasDeadline", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/AsyncTimeout;JZ)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/AsyncTimeout;)Z", "Ljava/util/concurrent/locks/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/locks/ReentrantLock;", "Ljava/util/concurrent/locks/Condition;", "condition", "Ljava/util/concurrent/locks/Condition;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/locks/Condition;", "IDLE_TIMEOUT_MILLIS", "J", "IDLE_TIMEOUT_NANOS", "", "TIMEOUT_WRITE_SIZE", "I", "head", "Lokio/AsyncTimeout;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,331:1\n1#2:332\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(AsyncTimeout asyncTimeout, long j, boolean z) {
            ReentrantLock Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AsyncTimeout.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.lock();
            try {
                if (!asyncTimeout.f13117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    asyncTimeout.f13117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                    if (AsyncTimeout.f13110Wwwwwwwwwwwwwwwwwwwwwww == null) {
                        AsyncTimeout.f13110Wwwwwwwwwwwwwwwwwwwwwww = new AsyncTimeout();
                        new Watchdog().start();
                    }
                    long nanoTime = System.nanoTime();
                    int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                    if (i != 0 && z) {
                        asyncTimeout.f13115Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Math.min(j, asyncTimeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - nanoTime) + nanoTime;
                    } else if (i != 0) {
                        asyncTimeout.f13115Wwwwwwwwwwwwwwwwwwwwwwwwwwww = j + nanoTime;
                    } else if (z) {
                        asyncTimeout.f13115Wwwwwwwwwwwwwwwwwwwwwwwwwwww = asyncTimeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    } else {
                        throw new AssertionError();
                    }
                    long Wwwwwwww2 = asyncTimeout.Wwwwwwww(nanoTime);
                    AsyncTimeout asyncTimeout2 = AsyncTimeout.f13110Wwwwwwwwwwwwwwwwwwwwwww;
                    while (asyncTimeout2.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && Wwwwwwww2 >= asyncTimeout2.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwww(nanoTime)) {
                        asyncTimeout2 = asyncTimeout2.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    }
                    asyncTimeout.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = asyncTimeout2.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    asyncTimeout2.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = asyncTimeout;
                    if (asyncTimeout2 == AsyncTimeout.f13110Wwwwwwwwwwwwwwwwwwwwwww) {
                        AsyncTimeout.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().signal();
                    }
                    Unit unit = Unit.INSTANCE;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
                    return;
                }
                throw new IllegalStateException("Unbalanced enter/exit");
            } catch (Throwable th) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
                throw th;
            }
        }

        @NotNull
        public final ReentrantLock Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return AsyncTimeout.f13114Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Condition Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return AsyncTimeout.f13113Wwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AsyncTimeout asyncTimeout) {
            ReentrantLock Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AsyncTimeout.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.lock();
            try {
                if (asyncTimeout.f13117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    asyncTimeout.f13117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
                    for (AsyncTimeout asyncTimeout2 = AsyncTimeout.f13110Wwwwwwwwwwwwwwwwwwwwwww; asyncTimeout2 != null; asyncTimeout2 = asyncTimeout2.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        if (asyncTimeout2.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == asyncTimeout) {
                            asyncTimeout2.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = asyncTimeout.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            asyncTimeout.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                            return false;
                        }
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
                    return true;
                }
                return false;
            } finally {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
            }
        }

        @Nullable
        public final AsyncTimeout Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws InterruptedException {
            AsyncTimeout asyncTimeout = AsyncTimeout.f13110Wwwwwwwwwwwwwwwwwwwwwww.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (asyncTimeout != null) {
                long Wwwwwwww2 = asyncTimeout.Wwwwwwww(System.nanoTime());
                if (Wwwwwwww2 <= 0) {
                    AsyncTimeout.f13110Wwwwwwwwwwwwwwwwwwwwwww.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = asyncTimeout.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    asyncTimeout.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                    return asyncTimeout;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().await(Wwwwwwww2, TimeUnit.NANOSECONDS);
                return null;
            }
            long nanoTime = System.nanoTime();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().await(AsyncTimeout.f13112Wwwwwwwwwwwwwwwwwwwwwwwww, TimeUnit.MILLISECONDS);
            if (AsyncTimeout.f13110Wwwwwwwwwwwwwwwwwwwwwww.f13116Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null && System.nanoTime() - nanoTime >= AsyncTimeout.f13111Wwwwwwwwwwwwwwwwwwwwwwww) {
                return AsyncTimeout.f13110Wwwwwwwwwwwwwwwwwwwwwww;
            }
            return null;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0000¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lokio/AsyncTimeout$Watchdog;", "Ljava/lang/Thread;", "()V", "run", "", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Watchdog extends Thread {
        public Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ReentrantLock Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            AsyncTimeout Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            while (true) {
                try {
                    Companion companion = AsyncTimeout.Companion;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.lock();
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                } catch (InterruptedException unused) {
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == AsyncTimeout.f13110Wwwwwwwwwwwwwwwwwwwwwww) {
                    AsyncTimeout.f13110Wwwwwwwwwwwwwwwwwwwwwww = null;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
                    return;
                }
                Unit unit = Unit.INSTANCE;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwww();
                }
            }
        }
    }

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        f13114Wwwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock;
        f13113Wwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock.newCondition();
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f13112Wwwwwwwwwwwwwwwwwwwwwwwww = millis;
        f13111Wwwwwwwwwwwwwwwwwwwwwwww = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    @NotNull
    public final Source Wwwwww(@NotNull Source source) {
        return new AsyncTimeout$source$1(this, source);
    }

    @NotNull
    public final Sink Wwwwwww(@NotNull Sink sink) {
        return new AsyncTimeout$sink$1(this, sink);
    }

    public final long Wwwwwwww(long j) {
        return this.f13115Wwwwwwwwwwwwwwwwwwwwwwwwwwww - j;
    }

    @NotNull
    public IOException Wwwwwwwww(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final boolean Wwwwwwwwww() {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public final void Wwwwwwwwwww() {
        long Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != 0 || Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this, Wwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    @PublishedApi
    @NotNull
    public final IOException Wwwwwwwwwwwwwwwww(@Nullable IOException iOException) {
        return Wwwwwwwww(iOException);
    }

    public void Wwwww() {
    }
}
