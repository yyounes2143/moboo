package okio;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0011\u0010\rJ\u000f\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0012\u0010\rJ\u001f\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0016R\u0017\u0010\u001a\u001a\u00020\u00178G¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006("}, d2 = {"Lokio/GzipSink;", "Lokio/Sink;", "sink", "<init>", "(Lokio/Sink;)V", "Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "close", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "buffer", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/RealBufferedSink;", "Lokio/RealBufferedSink;", "Ljava/util/zip/Deflater;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/zip/Deflater;", "deflater", "()Ljava/util/zip/Deflater;", "Lokio/DeflaterSink;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lokio/DeflaterSink;", "deflaterSink", "", "Wwwwwwwwwwwwwwwwwwwwww", "Z", "closed", "Ljava/util/zip/CRC32;", "Wwwwwwwwwwwwwwwwwwwww", "Ljava/util/zip/CRC32;", "crc", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGzipSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSink.kt\nokio/GzipSink\n+ 2 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,153:1\n51#2:154\n1#3:155\n86#4:156\n*S KotlinDebug\n*F\n+ 1 GzipSink.kt\nokio/GzipSink\n*L\n63#1:154\n131#1:156\n*E\n"})
/* loaded from: classes7.dex */
public final class GzipSink implements Sink, AutoCloseable {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CRC32 f13172Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13173Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DeflaterSink f13174Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Deflater f13175Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealBufferedSink f13176Wwwwwwwwwwwwwwwwwwwwwwwww;

    public GzipSink(@NotNull Sink sink) {
        RealBufferedSink realBufferedSink = new RealBufferedSink(sink);
        this.f13176Wwwwwwwwwwwwwwwwwwwwwwwww = realBufferedSink;
        Deflater deflater = new Deflater(-1, true);
        this.f13175Wwwwwwwwwwwwwwwwwwwwwwww = deflater;
        this.f13174Wwwwwwwwwwwwwwwwwwwwwww = new DeflaterSink((BufferedSink) realBufferedSink, deflater);
        this.f13172Wwwwwwwwwwwwwwwwwwwww = new CRC32();
        Buffer buffer = realBufferedSink.f13222Wwwwwwwwwwwwwwwwwwwwwwww;
        buffer.writeShort(8075);
        buffer.writeByte(8);
        buffer.writeByte(0);
        buffer.writeInt(0);
        buffer.writeByte(0);
        buffer.writeByte(0);
    }

    @Override // okio.Sink
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) throws IOException {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (i == 0) {
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
            this.f13174Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
            return;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f13176Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((int) this.f13172Wwwwwwwwwwwwwwwwwwwww.getValue());
        this.f13176Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((int) this.f13175Wwwwwwwwwwwwwwwwwwwwwwww.getBytesRead());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Buffer buffer, long j) {
        Segment segment = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        while (j > 0) {
            int min = (int) Math.min(j, segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f13172Wwwwwwwwwwwwwwwwwwwww.update(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, min);
            j -= min;
            segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f13173Wwwwwwwwwwwwwwwwwwwwww) {
            try {
                this.f13174Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                this.f13175Wwwwwwwwwwwwwwwwwwwwwwww.end();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                }
            }
            try {
                this.f13176Wwwwwwwwwwwwwwwwwwwwwwwww.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            this.f13173Wwwwwwwwwwwwwwwwwwwwww = true;
            if (th == null) {
                return;
            }
            throw th;
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.f13174Wwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.f13176Wwwwwwwwwwwwwwwwwwwwwwwww.timeout();
    }
}
