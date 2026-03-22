package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.UShort;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0012\u0010\u0010J'\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\u0002\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/¨\u00061"}, d2 = {"Lokio/GzipSource;", "Lokio/Source;", "source", "<init>", "(Lokio/Source;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "buffer", TypedValues.CycleType.S_WAVE_OFFSET, "Kkkkkkkkkkkkkkkkkkkkkkk", "(Lokio/Buffer;JJ)V", "", "name", "", "expected", "actual", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;II)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "B", "section", "Lokio/RealBufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/RealBufferedSource;", "Ljava/util/zip/Inflater;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/zip/Inflater;", "inflater", "Lokio/InflaterSource;", "Wwwwwwwwwwwwwwwwwwwwww", "Lokio/InflaterSource;", "inflaterSource", "Ljava/util/zip/CRC32;", "Wwwwwwwwwwwwwwwwwwwww", "Ljava/util/zip/CRC32;", "crc", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGzipSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 GzipSource.kt\nokio/-GzipSourceExtensions\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,220:1\n1#2:221\n62#3:222\n62#3:224\n62#3:226\n62#3:227\n62#3:228\n62#3:230\n62#3:232\n202#4:223\n202#4:225\n202#4:229\n202#4:231\n89#5:233\n*S KotlinDebug\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n*L\n105#1:222\n107#1:224\n119#1:226\n120#1:227\n122#1:228\n133#1:230\n144#1:232\n106#1:223\n117#1:225\n130#1:229\n141#1:231\n187#1:233\n*E\n"})
/* loaded from: classes7.dex */
public final class GzipSource implements Source, AutoCloseable {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CRC32 f13177Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InflaterSource f13178Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Inflater f13179Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealBufferedSource f13180Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte f13181Wwwwwwwwwwwwwwwwwwwwwwwww;

    public GzipSource(@NotNull Source source) {
        RealBufferedSource realBufferedSource = new RealBufferedSource(source);
        this.f13180Wwwwwwwwwwwwwwwwwwwwwwww = realBufferedSource;
        Inflater inflater = new Inflater(true);
        this.f13179Wwwwwwwwwwwwwwwwwwwwwww = inflater;
        this.f13178Wwwwwwwwwwwwwwwwwwwwww = new InflaterSource((BufferedSource) realBufferedSource, inflater);
        this.f13177Wwwwwwwwwwwwwwwwwwwww = new CRC32();
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkk(Buffer buffer, long j, long j2) {
        int i;
        Segment segment = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        while (true) {
            int i2 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i3 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (j < i2 - i3) {
                break;
            }
            j -= i2 - i3;
            segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        while (j2 > 0) {
            int min = (int) Math.min(segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - i, j2);
            this.f13177Wwwwwwwwwwwwwwwwwwwww.update(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (int) (segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j), min);
            j2 -= min;
            segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            j = 0;
        }
    }

    public final void Wwwwwwwwwwwwww() throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("CRC", this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwww(), (int) this.f13177Wwwwwwwwwwwwwwwwwwwww.getValue());
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("ISIZE", this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwww(), (int) this.f13179Wwwwwwwwwwwwwwwwwwwwwww.getBytesWritten());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        boolean z;
        this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(10L);
        byte Kkkkkkkkkkkkkkkk2 = this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkk(3L);
        if (((Kkkkkkkkkkkkkkkk2 >> 1) & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Kkkkkkkkkkkkkkkkkkkkkkk(this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 0L, 10L);
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("ID1ID2", 8075, this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.readShort());
        this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.skip(8L);
        if (((Kkkkkkkkkkkkkkkk2 >> 2) & 1) == 1) {
            this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(2L);
            if (z) {
                Kkkkkkkkkkkkkkkkkkkkkkk(this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 0L, 2L);
            }
            long Wwwwwwwwwwwwwwwwwwww2 = this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww() & UShort.MAX_VALUE;
            this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2);
            if (z) {
                Kkkkkkkkkkkkkkkkkkkkkkk(this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 0L, Wwwwwwwwwwwwwwwwwwww2);
            }
            this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.skip(Wwwwwwwwwwwwwwwwwwww2);
        }
        if (((Kkkkkkkkkkkkkkkk2 >> 3) & 1) == 1) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((byte) 0);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != -1) {
                if (z) {
                    Kkkkkkkkkkkkkkkkkkkkkkk(this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 0L, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + 1);
                }
                this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.skip(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((Kkkkkkkkkkkkkkkk2 >> 4) & 1) == 1) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((byte) 0);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != -1) {
                if (z) {
                    Kkkkkkkkkkkkkkkkkkkkkkk(this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 0L, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 + 1);
                }
                this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.skip(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("FHCRC", this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(), (short) this.f13177Wwwwwwwwwwwwwwwwwwwww.getValue());
            this.f13177Wwwwwwwwwwwwwwwwwwwww.reset();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2) {
        if (i2 == i) {
            return;
        }
        throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}, 3)));
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13178Wwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer buffer, long j) throws IOException {
        GzipSource gzipSource;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (i == 0) {
                return 0L;
            }
            if (this.f13181Wwwwwwwwwwwwwwwwwwwwwwwww == 0) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                this.f13181Wwwwwwwwwwwwwwwwwwwwwwwww = (byte) 1;
            }
            if (this.f13181Wwwwwwwwwwwwwwwwwwwwwwwww == 1) {
                long Kk = buffer.Kk();
                long read = this.f13178Wwwwwwwwwwwwwwwwwwwwww.read(buffer, j);
                if (read != -1) {
                    Kkkkkkkkkkkkkkkkkkkkkkk(buffer, Kk, read);
                    return read;
                }
                gzipSource = this;
                gzipSource.f13181Wwwwwwwwwwwwwwwwwwwwwwwww = (byte) 2;
            } else {
                gzipSource = this;
            }
            if (gzipSource.f13181Wwwwwwwwwwwwwwwwwwwwwwwww == 2) {
                Wwwwwwwwwwwwww();
                gzipSource.f13181Wwwwwwwwwwwwwwwwwwwwwwwww = (byte) 3;
                if (!gzipSource.f13180Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f13180Wwwwwwwwwwwwwwwwwwwwwwww.timeout();
    }
}
