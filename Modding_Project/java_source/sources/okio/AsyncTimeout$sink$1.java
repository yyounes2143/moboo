package okio;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"okio/AsyncTimeout$sink$1", "Lokio/Sink;", "Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "close", "Lokio/AsyncTimeout;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/AsyncTimeout;", "", "toString", "()Ljava/lang/String;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$sink$1\n+ 2 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,331:1\n146#2,11:332\n146#2,11:343\n146#2,11:354\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$sink$1\n*L\n102#1:332,11\n108#1:343,11\n112#1:354,11\n*E\n"})
/* loaded from: classes7.dex */
public final class AsyncTimeout$sink$1 implements Sink, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Sink f13118Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ AsyncTimeout f13119Wwwwwwwwwwwwwwwwwwwwwwwww;

    public AsyncTimeout$sink$1(AsyncTimeout asyncTimeout, Sink sink) {
        this.f13119Wwwwwwwwwwwwwwwwwwwwwwwww = asyncTimeout;
        this.f13118Wwwwwwwwwwwwwwwwwwwwwwww = sink;
    }

    @Override // okio.Sink
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) {
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer.Kk(), 0L, j);
        while (true) {
            long j2 = 0;
            if (j > 0) {
                Segment segment = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
                while (true) {
                    if (j2 >= 65536) {
                        break;
                    }
                    j2 += segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (j2 >= j) {
                        j2 = j;
                        break;
                    }
                    segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                AsyncTimeout asyncTimeout = this.f13119Wwwwwwwwwwwwwwwwwwwwwwwww;
                Sink sink = this.f13118Wwwwwwwwwwwwwwwwwwwwwwww;
                asyncTimeout.Wwwwwwwwwww();
                try {
                    try {
                        sink.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, j2);
                        Unit unit = Unit.INSTANCE;
                        if (!asyncTimeout.Wwwwwwwwww()) {
                            j -= j2;
                        } else {
                            throw asyncTimeout.Wwwwwwwwwwwwwwwww(null);
                        }
                    } catch (IOException e) {
                        if (!asyncTimeout.Wwwwwwwwww()) {
                            throw e;
                        }
                        throw asyncTimeout.Wwwwwwwwwwwwwwwww(e);
                    }
                } catch (Throwable th) {
                    asyncTimeout.Wwwwwwwwww();
                    throw th;
                }
            } else {
                return;
            }
        }
    }

    @Override // okio.Sink
    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public AsyncTimeout timeout() {
        return this.f13119Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        AsyncTimeout asyncTimeout = this.f13119Wwwwwwwwwwwwwwwwwwwwwwwww;
        Sink sink = this.f13118Wwwwwwwwwwwwwwwwwwwwwwww;
        asyncTimeout.Wwwwwwwwwww();
        try {
            sink.close();
            Unit unit = Unit.INSTANCE;
            if (!asyncTimeout.Wwwwwwwwww()) {
                return;
            }
            throw asyncTimeout.Wwwwwwwwwwwwwwwww(null);
        } catch (IOException e) {
            if (!asyncTimeout.Wwwwwwwwww()) {
                throw e;
            }
            throw asyncTimeout.Wwwwwwwwwwwwwwwww(e);
        } finally {
            asyncTimeout.Wwwwwwwwww();
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        AsyncTimeout asyncTimeout = this.f13119Wwwwwwwwwwwwwwwwwwwwwwwww;
        Sink sink = this.f13118Wwwwwwwwwwwwwwwwwwwwwwww;
        asyncTimeout.Wwwwwwwwwww();
        try {
            sink.flush();
            Unit unit = Unit.INSTANCE;
            if (!asyncTimeout.Wwwwwwwwww()) {
                return;
            }
            throw asyncTimeout.Wwwwwwwwwwwwwwwww(null);
        } catch (IOException e) {
            if (!asyncTimeout.Wwwwwwwwww()) {
                throw e;
            }
            throw asyncTimeout.Wwwwwwwwwwwwwwwww(e);
        } finally {
            asyncTimeout.Wwwwwwwwww();
        }
    }

    @NotNull
    public String toString() {
        return "AsyncTimeout.sink(" + this.f13118Wwwwwwwwwwwwwwwwwwwwwwww + ')';
    }
}
