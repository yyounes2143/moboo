package okio;

import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lokio/OutputStreamSink;", "Lokio/Sink;", "Ljava/io/OutputStream;", "out", "Lokio/Timeout;", "timeout", "<init>", "(Ljava/io/OutputStream;Lokio/Timeout;)V", "Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "close", "()Lokio/Timeout;", "", "toString", "()Ljava/lang/String;", "Ljava/io/OutputStream;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJvmOkio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmOkio.kt\nokio/OutputStreamSink\n+ 2 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,239:1\n86#2:240\n*S KotlinDebug\n*F\n+ 1 JvmOkio.kt\nokio/OutputStreamSink\n*L\n55#1:240\n*E\n"})
/* loaded from: classes7.dex */
public final class OutputStreamSink implements Sink, AutoCloseable {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Timeout f13198Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final OutputStream f13199Wwwwwwwwwwwwwwwwwwwwwwwww;

    public OutputStreamSink(@NotNull OutputStream outputStream, @NotNull Timeout timeout) {
        this.f13199Wwwwwwwwwwwwwwwwwwwwwwwww = outputStream;
        this.f13198Wwwwwwwwwwwwwwwwwwwwwwww = timeout;
    }

    @Override // okio.Sink
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) {
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer.Kk(), 0L, j);
        while (j > 0) {
            this.f13198Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Segment segment = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            int min = (int) Math.min(j, segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f13199Wwwwwwwwwwwwwwwwwwwwwwwww.write(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, min);
            segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += min;
            long j2 = min;
            j -= j2;
            buffer.Kkk(buffer.Kk() - j2);
            if (segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
            }
        }
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f13199Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        this.f13199Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.f13198Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public String toString() {
        return "sink(" + this.f13199Wwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }
}
