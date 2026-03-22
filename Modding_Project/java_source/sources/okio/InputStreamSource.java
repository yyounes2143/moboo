package okio;

import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0012\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lokio/InputStreamSource;", "Lokio/Source;", "Ljava/io/InputStream;", "input", "Lokio/Timeout;", "timeout", "<init>", "(Ljava/io/InputStream;Lokio/Timeout;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "", "close", "()V", "()Lokio/Timeout;", "", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/InputStream;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJvmOkio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmOkio.kt\nokio/InputStreamSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,239:1\n1#2:240\n86#3:241\n*S KotlinDebug\n*F\n+ 1 JvmOkio.kt\nokio/InputStreamSource\n*L\n92#1:241\n*E\n"})
/* loaded from: classes7.dex */
public class InputStreamSource implements Source, AutoCloseable {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Timeout f13190Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InputStream f13191Wwwwwwwwwwwwwwwwwwwwwwwww;

    public InputStreamSource(@NotNull InputStream inputStream, @NotNull Timeout timeout) {
        this.f13191Wwwwwwwwwwwwwwwwwwwwwwwww = inputStream;
        this.f13190Wwwwwwwwwwwwwwwwwwwwwwww = timeout;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f13191Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer buffer, long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return 0L;
        }
        if (i >= 0) {
            try {
                this.f13190Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Segment Illllllllllllllllllllllllll = buffer.Illllllllllllllllllllllllll(1);
                int read = this.f13191Wwwwwwwwwwwwwwwwwwwwwwwww.read(Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (int) Math.min(j, 8192 - Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
                if (read == -1) {
                    if (Illllllllllllllllllllllllll.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Illllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllllllllllllllllll);
                        return -1L;
                    }
                    return -1L;
                }
                Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += read;
                long j2 = read;
                buffer.Kkk(buffer.Kk() + j2);
                return j2;
            } catch (AssertionError e) {
                if (Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e)) {
                    throw new IOException(e);
                }
                throw e;
            }
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f13190Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public String toString() {
        return "source(" + this.f13191Wwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }
}
