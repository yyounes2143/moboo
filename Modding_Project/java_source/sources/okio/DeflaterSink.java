package okio;

import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\bJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0000¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lokio/DeflaterSink;", "Lokio/Sink;", "Lokio/BufferedSink;", "sink", "Ljava/util/zip/Deflater;", "deflater", "<init>", "(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V", "(Lokio/Sink;Ljava/util/zip/Deflater;)V", "Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "close", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "toString", "()Ljava/lang/String;", "", "syncFlush", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "Lokio/BufferedSink;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/zip/Deflater;", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "closed", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDeflaterSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeflaterSink.kt\nokio/DeflaterSink\n+ 2 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,160:1\n86#2:161\n*S KotlinDebug\n*F\n+ 1 DeflaterSink.kt\nokio/DeflaterSink\n*L\n59#1:161\n*E\n"})
/* loaded from: classes7.dex */
public final class DeflaterSink implements Sink, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13145Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Deflater f13146Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSink f13147Wwwwwwwwwwwwwwwwwwwwwwwww;

    public DeflaterSink(@NotNull BufferedSink bufferedSink, @NotNull Deflater deflater) {
        this.f13147Wwwwwwwwwwwwwwwwwwwwwwwww = bufferedSink;
        this.f13146Wwwwwwwwwwwwwwwwwwwwwwww = deflater;
    }

    @Override // okio.Sink
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) throws IOException {
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer.Kk(), 0L, j);
        while (j > 0) {
            Segment segment = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            int min = (int) Math.min(j, segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f13146Wwwwwwwwwwwwwwwwwwwwwwww.setInput(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, min);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
            long j2 = min;
            buffer.Kkk(buffer.Kk() - j2);
            int i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + min;
            segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            if (i == segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
            }
            j -= j2;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f13146Wwwwwwwwwwwwwwwwwwwwwwww.finish();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        Segment Illllllllllllllllllllllllll;
        int deflate;
        Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13147Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        while (true) {
            Illllllllllllllllllllllllll = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Illllllllllllllllllllllllll(1);
            if (z) {
                Deflater deflater = this.f13146Wwwwwwwwwwwwwwwwwwwwwwww;
                byte[] bArr = Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int i = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                deflate = deflater.deflate(bArr, i, 8192 - i, 2);
            } else {
                Deflater deflater2 = this.f13146Wwwwwwwwwwwwwwwwwwwwwwww;
                byte[] bArr2 = Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int i2 = Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                deflate = deflater2.deflate(bArr2, i2, 8192 - i2);
            }
            if (deflate > 0) {
                Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += deflate;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kk() + deflate);
                this.f13147Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else if (this.f13146Wwwwwwwwwwwwwwwwwwwwwwww.needsInput()) {
                break;
            }
        }
        if (Illllllllllllllllllllllllll.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Illllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllllllllllllllllll);
        }
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f13145Wwwwwwwwwwwwwwwwwwwwwww) {
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                this.f13146Wwwwwwwwwwwwwwwwwwwwwwww.end();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                }
            }
            try {
                this.f13147Wwwwwwwwwwwwwwwwwwwwwwwww.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            this.f13145Wwwwwwwwwwwwwwwwwwwwwww = true;
            if (th == null) {
                return;
            }
            throw th;
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
        this.f13147Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.f13147Wwwwwwwwwwwwwwwwwwwwwwwww.timeout();
    }

    @NotNull
    public String toString() {
        return "DeflaterSink(" + this.f13147Wwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }

    public DeflaterSink(@NotNull Sink sink, @NotNull Deflater deflater) {
        this(Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sink), deflater);
    }
}
