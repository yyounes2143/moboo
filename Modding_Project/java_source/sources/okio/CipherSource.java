package okio;

import java.io.IOException;
import javax.crypto.Cipher;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\rR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0017\u0010\u001a\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010$¨\u0006("}, d2 = {"Lokio/CipherSource;", "Lokio/Source;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "source", "Ljavax/crypto/Cipher;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljavax/crypto/Cipher;", "getCipher", "()Ljavax/crypto/Cipher;", "cipher", "", "Wwwwwwwwwwwwwwwwwwwwwww", "I", "blockSize", "Wwwwwwwwwwwwwwwwwwwwww", "Lokio/Buffer;", "buffer", "", "Wwwwwwwwwwwwwwwwwwwww", "Z", "final", "Wwwwwwwwwwwwwwwwwwww", "closed", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCipherSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSource.kt\nokio/CipherSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"})
/* loaded from: classes7.dex */
public final class CipherSource implements Source, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13139Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13140Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f13141Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13142Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Cipher f13143Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSource f13144Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwww() {
        Segment segment = this.f13144Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int outputSize = this.f13143Wwwwwwwwwwwwwwwwwwwwwwww.getOutputSize(i);
        int i2 = i;
        while (outputSize > 8192) {
            int i3 = this.f13142Wwwwwwwwwwwwwwwwwwwwwww;
            if (i2 <= i3) {
                this.f13140Wwwwwwwwwwwwwwwwwwwww = true;
                this.f13141Wwwwwwwwwwwwwwwwwwwwww.write(this.f13143Wwwwwwwwwwwwwwwwwwwwwwww.doFinal(this.f13144Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwww()));
                return;
            }
            i2 -= i3;
            outputSize = this.f13143Wwwwwwwwwwwwwwwwwwwwwwww.getOutputSize(i2);
        }
        Segment Illllllllllllllllllllllllll = this.f13141Wwwwwwwwwwwwwwwwwwwwww.Illllllllllllllllllllllllll(outputSize);
        int update = this.f13143Wwwwwwwwwwwwwwwwwwwwwwww.update(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i2, Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Illllllllllllllllllllllllll.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f13144Wwwwwwwwwwwwwwwwwwwwwwwww.skip(i2);
        Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += update;
        Buffer buffer = this.f13141Wwwwwwwwwwwwwwwwwwwwww;
        buffer.Kkk(buffer.Kk() + update);
        if (Illllllllllllllllllllllllll.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f13141Wwwwwwwwwwwwwwwwwwwwww.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Illllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllllllllllllllllll);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        while (this.f13141Wwwwwwwwwwwwwwwwwwwwww.Kk() == 0 && !this.f13140Wwwwwwwwwwwwwwwwwwwww) {
            if (this.f13144Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww()) {
                this.f13140Wwwwwwwwwwwwwwwwwwwww = true;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return;
            }
            Wwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int outputSize = this.f13143Wwwwwwwwwwwwwwwwwwwwwwww.getOutputSize(0);
        if (outputSize != 0) {
            Segment Illllllllllllllllllllllllll = this.f13141Wwwwwwwwwwwwwwwwwwwwww.Illllllllllllllllllllllllll(outputSize);
            int doFinal = this.f13143Wwwwwwwwwwwwwwwwwwwwwwww.doFinal(Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Illllllllllllllllllllllllll.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += doFinal;
            Buffer buffer = this.f13141Wwwwwwwwwwwwwwwwwwwwww;
            buffer.Kkk(buffer.Kk() + doFinal);
            if (Illllllllllllllllllllllllll.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f13141Wwwwwwwwwwwwwwwwwwwwww.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Illllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllllllllllllllllll);
            }
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13139Wwwwwwwwwwwwwwwwwwww = true;
        this.f13144Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer buffer, long j) throws IOException {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (!this.f13139Wwwwwwwwwwwwwwwwwwww) {
                if (i == 0) {
                    return 0L;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                return this.f13141Wwwwwwwwwwwwwwwwwwwwww.read(buffer, j);
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f13144Wwwwwwwwwwwwwwwwwwwwwwwww.timeout();
    }
}
