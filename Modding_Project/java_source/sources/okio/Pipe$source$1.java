package okio;

import java.io.IOException;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"okio/Pipe$source$1", "Lokio/Source;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "", "close", "()V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$source$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,257:1\n1#2:258\n*E\n"})
/* loaded from: classes7.dex */
public final class Pipe$source$1 implements Source, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Pipe f13219Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Timeout f13220Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ReentrantLock Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13219Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Pipe pipe = this.f13219Wwwwwwwwwwwwwwwwwwwwwwww;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.lock();
        try {
            pipe.Wwwwwwwwwwwwwwwwwwwwwwwww(true);
            pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
        }
    }

    @Override // okio.Source
    public long read(@NotNull Buffer buffer, long j) {
        ReentrantLock Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13219Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Pipe pipe = this.f13219Wwwwwwwwwwwwwwwwwwwwwwww;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.lock();
        try {
            if (!pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (!pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    while (pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kk() == 0) {
                        if (pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
                            return -1L;
                        }
                        this.f13220Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        if (pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            throw new IOException("canceled");
                        }
                    }
                    long read = pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().read(buffer, j);
                    pipe.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().signalAll();
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
                    return read;
                }
                throw new IOException("canceled");
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.unlock();
            throw th;
        }
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f13220Wwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
