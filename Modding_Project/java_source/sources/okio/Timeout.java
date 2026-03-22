package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018\u0000 #2\u00020\u0001:\u0001#B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u000bJ\u0017\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0003J\u0015\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0001¢\u0006\u0004\b\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001fR\u0016\u0010\u0010\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010!R\u0016\u0010\"\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010!¨\u0006$"}, d2 = {"Lokio/Timeout;", "", "<init>", "()V", "", "timeout", "Ljava/util/concurrent/TimeUnit;", "unit", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "deadlineNanoTime", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)Lokio/Timeout;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Timeout;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/locks/Condition;", "condition", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/concurrent/locks/Condition;)V", "monitor", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)V", "Z", "hasDeadline", "J", "timeoutNanos", "Companion", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timeout.kt\nokio/Timeout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n1#2:317\n*E\n"})
/* loaded from: classes7.dex */
public class Timeout {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Timeout f13251Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Timeout() { // from class: okio.Timeout$Companion$NONE$1
        @Override // okio.Timeout
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }

        @Override // okio.Timeout
        @NotNull
        public Timeout Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            return this;
        }

        @Override // okio.Timeout
        @NotNull
        public Timeout Wwwwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull TimeUnit timeUnit) {
            return this;
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lokio/Timeout$Companion;", "", "<init>", "()V", "", "aNanos", "bNanos", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JJ)J", "Lokio/Timeout;", "NONE", "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, long j2) {
            if (j != 0 && (j2 == 0 || j < j2)) {
                return j;
            }
            return j2;
        }

        public Companion() {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Object obj) throws InterruptedIOException {
        try {
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            long Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
            long j = 0;
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 && Wwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
                obj.wait();
                return;
            }
            long nanoTime = System.nanoTime();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 && Wwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Math.min(Wwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - nanoTime);
            } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - nanoTime;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                long j2 = Wwwwwwwwwwwwwwwwwwwwwwwwww2 / 1000000;
                Long.signum(j2);
                obj.wait(j2, (int) (Wwwwwwwwwwwwwwwwwwwwwwwwww2 - (1000000 * j2)));
                j = System.nanoTime() - nanoTime;
            }
            if (j < Wwwwwwwwwwwwwwwwwwwwwwwwww2) {
                return;
            }
            throw new InterruptedIOException("timeout");
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public Timeout Wwwwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull TimeUnit timeUnit) {
        if (j >= 0) {
            this.f13252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = timeUnit.toNanos(j);
            return this;
        }
        throw new IllegalArgumentException(("timeout < 0: " + j).toString());
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        if (!Thread.currentThread().isInterrupted()) {
            if (this.f13254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f13253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        throw new InterruptedIOException("interrupted");
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public Timeout Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        this.f13254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        this.f13253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        return this;
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f13254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return this.f13253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        throw new IllegalStateException("No deadline");
    }

    @NotNull
    public Timeout Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f13252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0L;
        return this;
    }

    @NotNull
    public Timeout Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f13254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        return this;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Condition condition) throws InterruptedIOException {
        try {
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            long Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww();
            long j = 0;
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 && Wwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
                condition.await();
                return;
            }
            long nanoTime = System.nanoTime();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 && Wwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Math.min(Wwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - nanoTime);
            } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - nanoTime;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                condition.await(Wwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.NANOSECONDS);
                j = System.nanoTime() - nanoTime;
            }
            if (j < Wwwwwwwwwwwwwwwwwwwwwwwwww2) {
                return;
            }
            throw new InterruptedIOException("timeout");
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }
}
