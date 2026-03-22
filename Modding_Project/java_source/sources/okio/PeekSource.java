package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lokio/PeekSource;", "Lokio/Source;", "Lokio/BufferedSource;", "upstream", "<init>", "(Lokio/BufferedSource;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Buffer;", "buffer", "Lokio/Segment;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lokio/Segment;", "expectedSegment", "", "Wwwwwwwwwwwwwwwwwwwwww", "I", "expectedPos", "", "Wwwwwwwwwwwwwwwwwwwww", "Z", "closed", "Wwwwwwwwwwwwwwwwwwww", "J", "pos", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPeekSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeekSource.kt\nokio/PeekSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"})
/* loaded from: classes7.dex */
public final class PeekSource implements Source, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13202Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13203Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13204Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Segment f13205Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f13206Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSource f13207Wwwwwwwwwwwwwwwwwwwwwwwww;

    public PeekSource(@NotNull BufferedSource bufferedSource) {
        int i;
        this.f13207Wwwwwwwwwwwwwwwwwwwwwwwww = bufferedSource;
        Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = bufferedSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f13206Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Segment segment = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        this.f13205Wwwwwwwwwwwwwwwwwwwwwww = segment;
        if (segment != null) {
            i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            i = -1;
        }
        this.f13204Wwwwwwwwwwwwwwwwwwwwww = i;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f13203Wwwwwwwwwwwwwwwwwwwww = true;
    }

    @Override // okio.Source
    public long read(@NotNull Buffer buffer, long j) {
        Segment segment;
        Segment segment2;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (!this.f13203Wwwwwwwwwwwwwwwwwwwww) {
                Segment segment3 = this.f13205Wwwwwwwwwwwwwwwwwwwwwww;
                if (segment3 != null && (segment3 != (segment2 = this.f13206Wwwwwwwwwwwwwwwwwwwwwwww.f13123Wwwwwwwwwwwwwwwwwwwwwwwww) || this.f13204Wwwwwwwwwwwwwwwwwwwwww != segment2.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    throw new IllegalStateException("Peek source is invalid because upstream source was used");
                }
                if (i == 0) {
                    return 0L;
                }
                if (!this.f13207Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(this.f13202Wwwwwwwwwwwwwwwwwwww + 1)) {
                    return -1L;
                }
                if (this.f13205Wwwwwwwwwwwwwwwwwwwwwww == null && (segment = this.f13206Wwwwwwwwwwwwwwwwwwwwwwww.f13123Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                    this.f13205Wwwwwwwwwwwwwwwwwwwwwww = segment;
                    this.f13204Wwwwwwwwwwwwwwwwwwwwww = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                long min = Math.min(j, this.f13206Wwwwwwwwwwwwwwwwwwwwwwww.Kk() - this.f13202Wwwwwwwwwwwwwwwwwwww);
                this.f13206Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkk(buffer, this.f13202Wwwwwwwwwwwwwwwwwwww, min);
                this.f13202Wwwwwwwwwwwwwwwwwwww += min;
                return min;
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f13207Wwwwwwwwwwwwwwwwwwwwwwwww.timeout();
    }
}
