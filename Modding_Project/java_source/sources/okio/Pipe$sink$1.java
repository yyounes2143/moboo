package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u000f¨\u0006\u0010"}, d2 = {"okio/Pipe$sink$1", "Lokio/Sink;", "Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "close", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Pipe.kt\nokio/Pipe\n+ 4 Timeout.kt\nokio/Timeout\n*L\n1#1,257:1\n1#2:258\n217#3:259\n218#3:286\n217#3:287\n218#3:314\n217#3:315\n218#3:342\n268#4,26:260\n268#4,26:288\n268#4,26:316\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n87#1:259\n87#1:286\n106#1:287\n106#1:314\n124#1:315\n124#1:342\n87#1:260,26\n106#1:288,26\n124#1:316,26\n*E\n"})
/* loaded from: classes7.dex */
public final class Pipe$sink$1 implements Sink, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Pipe f13217Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Timeout f13218Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // okio.Sink
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) {
        Sink sink;
        ReentrantLock Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13217Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Pipe pipe = this.f13217Wwwwwwwwwwwwwwwwwwwwwwww;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.lock();
        try {
            if (!pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (!pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    while (true) {
                        if (j > 0) {
                            sink = pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            if (sink != null) {
                                break;
                            } else if (!pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() - pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kk();
                                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
                                    this.f13218Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                                    if (pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                        throw new IOException("canceled");
                                    }
                                } else {
                                    long min = Math.min(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, j);
                                    pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, min);
                                    j -= min;
                                    pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().signalAll();
                                }
                            } else {
                                throw new IOException("source is closed");
                            }
                        } else {
                            sink = null;
                            break;
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
                    if (sink != null) {
                        Pipe pipe2 = this.f13217Wwwwwwwwwwwwwwwwwwwwwwww;
                        Timeout timeout = sink.timeout();
                        Timeout timeout2 = pipe2.Wwwwwwwwwwwwwwwwwwwwwwww().timeout();
                        long Wwwwwwwwwwwwwwwwwwwwwwwwww2 = timeout.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Timeout.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwww(), timeout.Wwwwwwwwwwwwwwwwwwwwwwwwww());
                        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                        timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                        if (timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Math.min(timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                            }
                            try {
                                sink.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                                if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                    timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.NANOSECONDS);
                                if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                    timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                }
                                throw th;
                            }
                        }
                        if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        }
                        try {
                            sink.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                            if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                return;
                            }
                            return;
                        } catch (Throwable th2) {
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.NANOSECONDS);
                            if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            }
                            throw th2;
                        }
                    }
                    return;
                }
                throw new IOException("canceled");
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th3) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
            throw th3;
        }
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ReentrantLock Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13217Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Pipe pipe = this.f13217Wwwwwwwwwwwwwwwwwwwwwwww;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.lock();
        try {
            if (pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
                return;
            }
            Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                if (pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwww() && pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kk() > 0) {
                    throw new IOException("source is closed");
                }
                pipe.Wwwwwwwwwwwwwwwwwwwwwwwwww(true);
                pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().signalAll();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            }
            Unit unit = Unit.INSTANCE;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Pipe pipe2 = this.f13217Wwwwwwwwwwwwwwwwwwwwwwww;
                Timeout timeout = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.timeout();
                Timeout timeout2 = pipe2.Wwwwwwwwwwwwwwwwwwwwwwww().timeout();
                long Wwwwwwwwwwwwwwwwwwwwwwwwww2 = timeout.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Timeout.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwww(), timeout.Wwwwwwwwwwwwwwwwwwwwwwwwww());
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                if (timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Math.min(timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                    }
                    try {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.close();
                        timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                        if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.NANOSECONDS);
                        if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                        }
                        throw th;
                    }
                }
                if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                try {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.close();
                    timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                    if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                } catch (Throwable th2) {
                    timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.NANOSECONDS);
                    if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
            throw th3;
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        ReentrantLock Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13217Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Pipe pipe = this.f13217Wwwwwwwwwwwwwwwwwwwwwwww;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.lock();
        try {
            if (!pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (!pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                        if (pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwww() && pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kk() > 0) {
                            throw new IOException("source is closed");
                        }
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
                    }
                    Unit unit = Unit.INSTANCE;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        Pipe pipe2 = this.f13217Wwwwwwwwwwwwwwwwwwwwwwww;
                        Timeout timeout = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.timeout();
                        Timeout timeout2 = pipe2.Wwwwwwwwwwwwwwwwwwwwwwww().timeout();
                        long Wwwwwwwwwwwwwwwwwwwwwwwwww2 = timeout.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Timeout.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwww(), timeout.Wwwwwwwwwwwwwwwwwwwwwwwwww());
                        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                        timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                        if (timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Math.min(timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                            }
                            try {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.flush();
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                                if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                    timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.NANOSECONDS);
                                if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                    timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                                }
                                throw th;
                            }
                        }
                        if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        }
                        try {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.flush();
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                            if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                return;
                            }
                            return;
                        } catch (Throwable th2) {
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.NANOSECONDS);
                            if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            }
                            throw th2;
                        }
                    }
                    return;
                }
                throw new IOException("canceled");
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th3) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
            throw th3;
        }
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.f13218Wwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
