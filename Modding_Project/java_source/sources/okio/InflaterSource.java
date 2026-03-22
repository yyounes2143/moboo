package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\bJ\u001f\u0010\r\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u000eJ\r\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lokio/InflaterSource;", "Lokio/Source;", "Lokio/BufferedSource;", "source", "Ljava/util/zip/Inflater;", "inflater", "<init>", "(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V", "(Lokio/Source;Ljava/util/zip/Inflater;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/zip/Inflater;", "", "Wwwwwwwwwwwwwwwwwwwwwww", "I", "bufferBytesHeldByInflater", "Wwwwwwwwwwwwwwwwwwwwww", "Z", "closed", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInflaterSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,147:1\n1#2:148\n86#3:149\n*S KotlinDebug\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n*L\n73#1:149\n*E\n"})
/* loaded from: classes7.dex */
public final class InflaterSource implements Source, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13186Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13187Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Inflater f13188Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSource f13189Wwwwwwwwwwwwwwwwwwwwwwwww;

    public InflaterSource(@NotNull BufferedSource bufferedSource, @NotNull Inflater inflater) {
        this.f13189Wwwwwwwwwwwwwwwwwwwwwwwww = bufferedSource;
        this.f13188Wwwwwwwwwwwwwwwwwwwwwwww = inflater;
    }

    public final void Wwwwwwwwwwwwww() {
        int i = this.f13187Wwwwwwwwwwwwwwwwwwwwwww;
        if (i == 0) {
            return;
        }
        int remaining = i - this.f13188Wwwwwwwwwwwwwwwwwwwwwwww.getRemaining();
        this.f13187Wwwwwwwwwwwwwwwwwwwwwww -= remaining;
        this.f13189Wwwwwwwwwwwwwwwwwwwwwwwww.skip(remaining);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        if (!this.f13188Wwwwwwwwwwwwwwwwwwwwwwww.needsInput()) {
            return false;
        }
        if (this.f13189Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww()) {
            return true;
        }
        Segment segment = this.f13189Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i3 = i - i2;
        this.f13187Wwwwwwwwwwwwwwwwwwwwwww = i3;
        this.f13188Wwwwwwwwwwwwwwwwwwwwwwww.setInput(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i2, i3);
        return false;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) throws IOException {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (!this.f13186Wwwwwwwwwwwwwwwwwwwwww) {
                if (i == 0) {
                    return 0L;
                }
                try {
                    Segment Illllllllllllllllllllllllll = buffer.Illllllllllllllllllllllllll(1);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                    int inflate = this.f13188Wwwwwwwwwwwwwwwwwwwwwwww.inflate(Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (int) Math.min(j, 8192 - Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
                    Wwwwwwwwwwwwww();
                    if (inflate > 0) {
                        Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += inflate;
                        long j2 = inflate;
                        buffer.Kkk(buffer.Kk() + j2);
                        return j2;
                    }
                    if (Illllllllllllllllllllllllll.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Illllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllllllllllllllllll);
                    }
                    return 0L;
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f13186Wwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f13188Wwwwwwwwwwwwwwwwwwwwwwww.end();
        this.f13186Wwwwwwwwwwwwwwwwwwwwww = true;
        this.f13189Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer buffer, long j) throws IOException {
        do {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            if (this.f13188Wwwwwwwwwwwwwwwwwwwwwwww.finished() || this.f13188Wwwwwwwwwwwwwwwwwwwwwwww.needsDictionary()) {
                return -1L;
            }
        } while (!this.f13189Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww());
        throw new EOFException("source exhausted prematurely");
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f13189Wwwwwwwwwwwwwwwwwwwwwwwww.timeout();
    }

    public InflaterSource(@NotNull Source source, @NotNull Inflater inflater) {
        this(Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(source), inflater);
    }
}
