package okio;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\r\u001a\u00020\u0002*\u00020\u0002H\u0002¢\u0006\u0004\b\r\u0010\tJ\u0013\u0010\u000e\u001a\u00020\u0002*\u00020\u0002H\u0002¢\u0006\u0004\b\u000e\u0010\tR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u000fR\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u001e\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lokio/Throttler;", "", "", "allocatedUntil", "<init>", "(J)V", "()V", "byteCount", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)J", "now", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JJ)J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "bytesPerSecond", "waitByteCount", "maxByteCount", "Ljava/util/concurrent/locks/ReentrantLock;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/locks/ReentrantLock;", "getLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/Condition;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/locks/Condition;", "getCondition", "()Ljava/util/concurrent/locks/Condition;", "condition", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Throttler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Condition f13243Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ReentrantLock f13244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Throttler(long j) {
        this.f13248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f13246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 8192L;
        this.f13245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 262144L;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f13244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock;
        this.f13243Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock.newCondition();
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (j > 0) {
            ReentrantLock reentrantLock = this.f13244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            reentrantLock.lock();
            while (true) {
                try {
                    long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(System.nanoTime(), j);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= 0) {
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    }
                    this.f13243Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.awaitNanos(-Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } finally {
                    reentrantLock.unlock();
                }
            }
        } else {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        return (j * this.f13247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) / 1000000000;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        return (j * 1000000000) / this.f13247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, long j2) {
        if (this.f13247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 0) {
            return j2;
        }
        long max = Math.max(this.f13248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - j, 0L);
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(max);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= j2) {
            this.f13248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j + max + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2);
            return j2;
        }
        long j3 = this.f13246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= j3) {
            this.f13248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        long min = Math.min(j3, j2);
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = max + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(min - this.f13245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
            this.f13248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            return min;
        }
        return -Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public Throttler() {
        this(System.nanoTime());
    }
}
