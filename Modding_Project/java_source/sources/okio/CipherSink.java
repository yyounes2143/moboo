package okio;

import java.io.IOException;
import javax.crypto.Cipher;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\nJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0017R\u0017\u0010\u001e\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lokio/CipherSink;", "Lokio/Sink;", "Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "close", "remaining", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)I", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Throwable;", "Lokio/BufferedSink;", "Lokio/BufferedSink;", "sink", "Ljavax/crypto/Cipher;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljavax/crypto/Cipher;", "getCipher", "()Ljavax/crypto/Cipher;", "cipher", "Wwwwwwwwwwwwwwwwwwwwwww", "I", "blockSize", "", "Wwwwwwwwwwwwwwwwwwwwww", "Z", "closed", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCipherSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,148:1\n1#2:149\n86#3:150\n*S KotlinDebug\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n*L\n47#1:150\n*E\n"})
/* loaded from: classes7.dex */
public final class CipherSink implements Sink, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13135Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13136Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Cipher f13137Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSink f13138Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // okio.Sink
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) throws IOException {
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer.Kk(), 0L, j);
        if (!this.f13135Wwwwwwwwwwwwwwwwwwwwww) {
            long j2 = j;
            while (j2 > 0) {
                j2 -= Wwwwwwwwwwwwwwwwwwwwwwwwwww(buffer, j2);
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwww(Buffer buffer, long j) {
        Segment segment = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        int min = (int) Math.min(j, segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13138Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int outputSize = this.f13137Wwwwwwwwwwwwwwwwwwwwwwww.getOutputSize(min);
        int i = min;
        while (outputSize > 8192) {
            int i2 = this.f13136Wwwwwwwwwwwwwwwwwwwwwww;
            if (i <= i2) {
                this.f13138Wwwwwwwwwwwwwwwwwwwwwwwww.write(this.f13137Wwwwwwwwwwwwwwwwwwwwwwww.update(buffer.Wwwwwwwwwwwwwwwwwwwww(j)));
                return (int) j;
            }
            i -= i2;
            outputSize = this.f13137Wwwwwwwwwwwwwwwwwwwwwwww.getOutputSize(i);
        }
        Segment Illllllllllllllllllllllllll = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Illllllllllllllllllllllllll(outputSize);
        int update = this.f13137Wwwwwwwwwwwwwwwwwwwwwwww.update(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += update;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kk() + update);
        if (Illllllllllllllllllllllllll.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Illllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllllllllllllllllll);
        }
        this.f13138Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        buffer.Kkk(buffer.Kk() - i);
        int i3 = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + i;
        segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
        if (i3 == segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
        }
        return i;
    }

    public final Throwable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int outputSize = this.f13137Wwwwwwwwwwwwwwwwwwwwwwww.getOutputSize(0);
        Throwable th = null;
        if (outputSize == 0) {
            return null;
        }
        if (outputSize > 8192) {
            try {
                this.f13138Wwwwwwwwwwwwwwwwwwwwwwwww.write(this.f13137Wwwwwwwwwwwwwwwwwwwwwwww.doFinal());
                return null;
            } catch (Throwable th2) {
                return th2;
            }
        }
        Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13138Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Segment Illllllllllllllllllllllllll = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Illllllllllllllllllllllllll(outputSize);
        try {
            int doFinal = this.f13137Wwwwwwwwwwwwwwwwwwwwwwww.doFinal(Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += doFinal;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kk() + doFinal);
        } catch (Throwable th3) {
            th = th3;
        }
        if (Illllllllllllllllllllllllll.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Illllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllllllllllllllllll);
        }
        return th;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f13135Wwwwwwwwwwwwwwwwwwwwww) {
            this.f13135Wwwwwwwwwwwwwwwwwwwwww = true;
            Throwable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            try {
                this.f13138Wwwwwwwwwwwwwwwwwwwwwwwww.close();
            } catch (Throwable th) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = th;
                }
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return;
            }
            throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        this.f13138Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.f13138Wwwwwwwwwwwwwwwwwwwwwwwww.timeout();
    }
}
