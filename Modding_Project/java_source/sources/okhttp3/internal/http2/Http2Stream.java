package okhttp3.internal.http2;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u0000 j2\u00020\u0001:\u0004jklmB3\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b\u0018\u0010\u0017J\r\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010 \u001a\u00020\u001d2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b \u0010!J\u001d\u0010%\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u0002¢\u0006\u0004\b%\u0010&J\u001d\u0010'\u001a\u00020\u001d2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b'\u0010(J\u0015\u0010)\u001a\u00020\u001d2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b)\u0010!J\u000f\u0010*\u001a\u00020\u001dH\u0000¢\u0006\u0004\b*\u0010+J\u0015\u0010.\u001a\u00020\u001d2\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u001dH\u0000¢\u0006\u0004\b0\u0010+J\u000f\u00101\u001a\u00020\u001dH\u0000¢\u0006\u0004\b1\u0010+R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b.\u00102\u001a\u0004\b3\u00104R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b*\u00105\u001a\u0004\b6\u00107R*\u0010=\u001a\u00020,2\u0006\u00108\u001a\u00020,8\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010/R*\u0010@\u001a\u00020,2\u0006\u00108\u001a\u00020,8\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u00109\u001a\u0004\b>\u0010;\"\u0004\b?\u0010/R*\u0010C\u001a\u00020,2\u0006\u00108\u001a\u00020,8\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u00109\u001a\u0004\bA\u0010;\"\u0004\bB\u0010/R*\u0010F\u001a\u00020,2\u0006\u00108\u001a\u00020,8\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b \u00109\u001a\u0004\bD\u0010;\"\u0004\bE\u0010/R\u001a\u0010I\u001a\b\u0012\u0004\u0012\u00020\t0G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u0010HR\u0016\u0010L\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u001e\u0010#\u001a\u00060MR\u00020\u00008\u0000X\u0080\u0004¢\u0006\f\n\u0004\bN\u0010O\u001a\u0004\bP\u0010QR\u001e\u0010V\u001a\u00060RR\u00020\u00008\u0000X\u0080\u0004¢\u0006\f\n\u0004\b3\u0010S\u001a\u0004\bT\u0010UR\u001e\u0010[\u001a\u00060WR\u00020\u00008\u0000X\u0080\u0004¢\u0006\f\n\u0004\b>\u0010X\u001a\u0004\bY\u0010ZR\u001e\u0010]\u001a\u00060WR\u00020\u00008\u0000X\u0080\u0004¢\u0006\f\n\u0004\b:\u0010X\u001a\u0004\b\\\u0010ZR$\u0010\u000e\u001a\u0004\u0018\u00010\r8@@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bY\u0010^\u001a\u0004\bJ\u0010_\"\u0004\b`\u0010!R$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010a\u001a\u0004\bN\u0010b\"\u0004\bc\u0010dR\u0011\u0010g\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\be\u0010fR\u0011\u0010i\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bh\u0010f¨\u0006n"}, d2 = {"Lokhttp3/internal/http2/Http2Stream;", "", "", "id", "Lokhttp3/internal/http2/Http2Connection;", "connection", "", "outFinished", "inFinished", "Lokhttp3/Headers;", "headers", "<init>", "(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V", "Lokhttp3/internal/http2/ErrorCode;", "errorCode", "Ljava/io/IOException;", "errorException", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z", "Wwww", "()Lokhttp3/Headers;", "Lokio/Timeout;", "Wwwwwwwwwwwww", "()Lokio/Timeout;", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwww", "()Lokio/Sink;", "rstStatusCode", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/ErrorCode;)V", "Lokio/BufferedSource;", "source", SessionDescription.ATTR_LENGTH, "Wwwwwwwwwwww", "(Lokio/BufferedSource;I)V", "Wwwwwwwwwww", "(Lokhttp3/Headers;Z)V", "Wwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "", "delta", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Www", "I", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()I", "Lokhttp3/internal/http2/Http2Connection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/http2/Http2Connection;", "<set-?>", "J", "Wwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwww", "readBytesTotal", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwww", "readBytesAcknowledged", "Wwwwwwwwwwwwwwwww", "Wwwww", "writeBytesTotal", "Wwwwwwwwwwwwwwwwww", "setWriteBytesMaximum$okhttp", "writeBytesMaximum", "Ljava/util/ArrayDeque;", "Ljava/util/ArrayDeque;", "headersQueue", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "hasResponseHeaders", "Lokhttp3/internal/http2/Http2Stream$FramingSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/http2/Http2Stream$FramingSource;", "Wwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/http2/Http2Stream$FramingSource;", "Lokhttp3/internal/http2/Http2Stream$FramingSink;", "Lokhttp3/internal/http2/Http2Stream$FramingSink;", "Wwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/http2/Http2Stream$FramingSink;", "sink", "Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "Wwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "readTimeout", "Wwwwwwwwwwwwwwww", "writeTimeout", "Lokhttp3/internal/http2/ErrorCode;", "()Lokhttp3/internal/http2/ErrorCode;", "Wwwwwwwww", "Ljava/io/IOException;", "()Ljava/io/IOException;", "Wwwwwwww", "(Ljava/io/IOException;)V", "Wwwwwwwwwwwwww", "()Z", "isOpen", "Wwwwwwwwwwwwwww", "isLocallyInitiated", "Companion", "FramingSink", "FramingSource", "StreamTimeout", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Http2Stream {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IOException f12912Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ErrorCode f12913Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final StreamTimeout f12914Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final StreamTimeout f12915Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FramingSink f12916Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FramingSource f12917Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12918Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayDeque<Headers> f12919Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f12920Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f12921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f12922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f12923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Http2Connection f12924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f12925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$Companion;", "", "()V", "EMIT_BUFFER_SIZE", "", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u000eJ\u0017\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u0015R\u0014\u0010\u001c\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR$\u0010$\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010(\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0016\u001a\u0004\b&\u0010\u0018\"\u0004\b'\u0010\u0015¨\u0006)"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSink;", "Lokio/Sink;", "", "finished", "<init>", "(Lokhttp3/internal/http2/Http2Stream;Z)V", "Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "close", "outFinishedOnLastFrame", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "Z", "Wwwwwwwwwwwwww", "()Z", "setFinished", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Buffer;", "sendBuffer", "Lokhttp3/Headers;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "getTrailers", "()Lokhttp3/Headers;", "setTrailers", "(Lokhttp3/Headers;)V", "trailers", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkkkk", "closed", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class FramingSink implements Sink, AutoCloseable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12927Wwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Headers f12928Wwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Buffer f12929Wwwwwwwwwwwwwwwwwwwwwwww = new Buffer();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12930Wwwwwwwwwwwwwwwwwwwwwwwww;

        public FramingSink(boolean z) {
            this.f12930Wwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Kkkkkkkkkkkkkkkkkkkkkkk(boolean z) {
            this.f12927Wwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final boolean Wwwwwwwwwwwwww() {
            return this.f12930Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // okio.Sink
        public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + http2Stream);
            }
            this.f12929Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
            while (this.f12929Wwwwwwwwwwwwwwwwwwwwwwww.Kk() >= 16384) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
            }
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12927Wwwwwwwwwwwwwwwwwwwwww;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) throws IOException {
            long min;
            boolean z2;
            boolean z3;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                try {
                    http2Stream.Wwwwwwwwwwwwwwww().Wwwwwwwwwww();
                    while (http2Stream.Wwwwwwwwwwwwwwwww() >= http2Stream.Wwwwwwwwwwwwwwwwww() && !Wwwwwwwwwwwwww() && !Wwwwwwwwwwwwwwwwwwwwwwwwwww() && http2Stream.Wwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                        http2Stream.Www();
                    }
                    http2Stream.Wwwwwwwwwwwwwwww().Wwww();
                    http2Stream.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    min = Math.min(http2Stream.Wwwwwwwwwwwwwwwwww() - http2Stream.Wwwwwwwwwwwwwwwww(), this.f12929Wwwwwwwwwwwwwwwwwwwwwwww.Kk());
                    http2Stream.Wwwww(http2Stream.Wwwwwwwwwwwwwwwww() + min);
                    if (z && min == this.f12929Wwwwwwwwwwwwwwwwwwwwwwww.Kk()) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z3 = z2;
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            Http2Stream.this.Wwwwwwwwwwwwwwww().Wwwwwwwwwww();
            try {
                Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Illl(Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwww(), z3, this.f12929Wwwwwwwwwwwwwwwwwwwwwwww, min);
            } finally {
                Http2Stream.this.Wwwwwwwwwwwwwwww().Wwww();
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            boolean z;
            boolean z2;
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + http2Stream);
            }
            Http2Stream http2Stream2 = Http2Stream.this;
            synchronized (http2Stream2) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    return;
                }
                if (http2Stream2.Wwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                    z = true;
                } else {
                    z = false;
                }
                Unit unit = Unit.INSTANCE;
                if (!Http2Stream.this.Wwwwwwwwwwwwwwwwwwww().f12930Wwwwwwwwwwwwwwwwwwwwwwwww) {
                    if (this.f12929Wwwwwwwwwwwwwwwwwwwwwwww.Kk() > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (this.f12928Wwwwwwwwwwwwwwwwwwwwwww != null) {
                        while (this.f12929Wwwwwwwwwwwwwwwwwwwwwwww.Kk() > 0) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
                        }
                        Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Ill(Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwww(), z, Util.Kkkkkkkkkkkkkkkkk(this.f12928Wwwwwwwwwwwwwwwwwwwwwww));
                    } else if (z2) {
                        while (this.f12929Wwwwwwwwwwwwwwwwwwwwwwww.Kk() > 0) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
                        }
                    } else if (z) {
                        Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Illl(Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwww(), true, null, 0L);
                    }
                }
                synchronized (Http2Stream.this) {
                    Kkkkkkkkkkkkkkkkkkkkkkk(true);
                    Unit unit2 = Unit.INSTANCE;
                }
                Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().flush();
                Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + http2Stream);
            }
            Http2Stream http2Stream2 = Http2Stream.this;
            synchronized (http2Stream2) {
                http2Stream2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Unit unit = Unit.INSTANCE;
            }
            while (this.f12929Wwwwwwwwwwwwwwwwwwwwwwww.Kk() > 0) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
                Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().flush();
            }
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return Http2Stream.this.Wwwwwwwwwwwwwwww();
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010\u0005\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0017\u0010%\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010(\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b&\u0010\"\u001a\u0004\b'\u0010$R$\u00100\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00104\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b1\u0010\u001c\u001a\u0004\b2\u0010\u001e\"\u0004\b3\u0010 ¨\u00065"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSource;", "Lokio/Source;", "", "maxByteCount", "", "finished", "<init>", "(Lokhttp3/internal/http2/Http2Stream;JZ)V", "Lokio/Buffer;", "sink", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/BufferedSource;", "source", "", "Kkkkkkkkkkkkkkkkkkkkkk", "(Lokio/BufferedSource;J)V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "close", "()V", "Kkkkkkkkkkkkkkkkkk", "(J)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Kkkkkkkkkkkkkkkkkkkk", "(Z)V", "Wwwwwwwwwwwwwwwwwwwwwww", "Lokio/Buffer;", "Kkkkkkkkkkkkkkkkkkkkkkk", "()Lokio/Buffer;", "receiveBuffer", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "readBuffer", "Lokhttp3/Headers;", "Wwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "getTrailers", "()Lokhttp3/Headers;", "Kkkkkkkkkkkkkkkkkkk", "(Lokhttp3/Headers;)V", "trailers", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkk", "closed", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class FramingSource implements Source, AutoCloseable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12932Wwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Headers f12933Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12936Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f12937Wwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Buffer f12935Wwwwwwwwwwwwwwwwwwwwwww = new Buffer();
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Buffer f12934Wwwwwwwwwwwwwwwwwwwwww = new Buffer();

        public FramingSource(long j, boolean z) {
            this.f12937Wwwwwwwwwwwwwwwwwwwwwwwww = j;
            this.f12936Wwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Kkkkkkkkkkkkkkkkkk(long j) {
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + http2Stream);
            }
            Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Illll(j);
        }

        public final void Kkkkkkkkkkkkkkkkkkk(@Nullable Headers headers) {
            this.f12933Wwwwwwwwwwwwwwwwwwwww = headers;
        }

        public final void Kkkkkkkkkkkkkkkkkkkk(boolean z) {
            this.f12936Wwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Kkkkkkkkkkkkkkkkkkkkk(boolean z) {
            this.f12932Wwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Kkkkkkkkkkkkkkkkkkkkkk(@NotNull BufferedSource bufferedSource, long j) throws IOException {
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
            boolean z;
            boolean z2;
            long j2;
            Http2Stream http2Stream = Http2Stream.this;
            if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + http2Stream);
            }
            while (j > 0) {
                synchronized (Http2Stream.this) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                    z = false;
                    if (Wwwwwwwwwwwwww().Kk() + j > this.f12937Wwwwwwwwwwwwwwwwwwwwwwwww) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Unit unit = Unit.INSTANCE;
                }
                if (z2) {
                    bufferedSource.skip(j);
                    Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    bufferedSource.skip(j);
                    return;
                } else {
                    long read = bufferedSource.read(this.f12935Wwwwwwwwwwwwwwwwwwwwwww, j);
                    if (read != -1) {
                        j -= read;
                        Http2Stream http2Stream2 = Http2Stream.this;
                        synchronized (http2Stream2) {
                            try {
                                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                    j2 = Kkkkkkkkkkkkkkkkkkkkkkk().Kk();
                                    Kkkkkkkkkkkkkkkkkkkkkkk().Kkkkkkkkkkkkkkkkkkkkkkk();
                                } else {
                                    if (Wwwwwwwwwwwwww().Kk() == 0) {
                                        z = true;
                                    }
                                    Wwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkkkkkkkk());
                                    if (z) {
                                        http2Stream2.notifyAll();
                                    }
                                    j2 = 0;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (j2 > 0) {
                            Kkkkkkkkkkkkkkkkkk(j2);
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
        }

        @NotNull
        public final Buffer Kkkkkkkkkkkkkkkkkkkkkkk() {
            return this.f12935Wwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Buffer Wwwwwwwwwwwwww() {
            return this.f12934Wwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12936Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12932Wwwwwwwwwwwwwwwwwwww;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long Kk;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                Kkkkkkkkkkkkkkkkkkkkk(true);
                Kk = Wwwwwwwwwwwwww().Kk();
                Wwwwwwwwwwwwww().Kkkkkkkkkkkkkkkkkkkkkkk();
                http2Stream.notifyAll();
                Unit unit = Unit.INSTANCE;
            }
            if (Kk > 0) {
                Kkkkkkkkkkkkkkkkkk(Kk);
            }
            Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x00cd, code lost:
            throw new java.io.IOException("stream closed");
         */
        @Override // okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long read(@org.jetbrains.annotations.NotNull okio.Buffer r19, long r20) throws java.io.IOException {
            /*
                r18 = this;
                r1 = r18
                r2 = r20
                r4 = 0
                int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r0 < 0) goto Ld8
            La:
                okhttp3.internal.http2.Http2Stream r6 = okhttp3.internal.http2.Http2Stream.this
                monitor-enter(r6)
                okhttp3.internal.http2.Http2Stream$StreamTimeout r0 = r6.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> Lc4
                r0.Wwwwwwwwwww()     // Catch: java.lang.Throwable -> Lc4
                okhttp3.internal.http2.ErrorCode r0 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                if (r0 == 0) goto L33
                boolean r0 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                if (r0 != 0) goto L33
                java.io.IOException r0 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                if (r0 != 0) goto L34
                okhttp3.internal.http2.StreamResetException r0 = new okhttp3.internal.http2.StreamResetException     // Catch: java.lang.Throwable -> L30
                okhttp3.internal.http2.ErrorCode r7 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                r0.<init>(r7)     // Catch: java.lang.Throwable -> L30
                goto L34
            L30:
                r0 = move-exception
                goto Lce
            L33:
                r0 = 0
            L34:
                boolean r7 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                if (r7 != 0) goto Lc6
                okio.Buffer r7 = r1.Wwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                long r7 = r7.Kk()     // Catch: java.lang.Throwable -> L30
                int r7 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
                r8 = -1
                r10 = 0
                if (r7 <= 0) goto L99
                okio.Buffer r7 = r1.Wwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                okio.Buffer r11 = r1.Wwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                long r11 = r11.Kk()     // Catch: java.lang.Throwable -> L30
                long r11 = java.lang.Math.min(r2, r11)     // Catch: java.lang.Throwable -> L30
                r13 = r19
                long r11 = r7.read(r13, r11)     // Catch: java.lang.Throwable -> L30
                long r14 = r6.Wwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                long r14 = r14 + r11
                r6.Wwwwww(r14)     // Catch: java.lang.Throwable -> L30
                long r14 = r6.Wwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                long r16 = r6.Wwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                long r14 = r14 - r16
                if (r0 != 0) goto La8
                okhttp3.internal.http2.Http2Connection r7 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                okhttp3.internal.http2.Settings r7 = r7.Illllllllllllllllllllllllllll()     // Catch: java.lang.Throwable -> L30
                int r7 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                int r7 = r7 / 2
                long r4 = (long) r7     // Catch: java.lang.Throwable -> L30
                int r4 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
                if (r4 < 0) goto La8
                okhttp3.internal.http2.Http2Connection r4 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                int r5 = r6.Wwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                r4.IIlllllll(r5, r14)     // Catch: java.lang.Throwable -> L30
                long r4 = r6.Wwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                r6.Wwwwwww(r4)     // Catch: java.lang.Throwable -> L30
                goto La8
            L99:
                r13 = r19
                boolean r4 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
                if (r4 != 0) goto La7
                if (r0 != 0) goto La7
                r6.Www()     // Catch: java.lang.Throwable -> L30
                r10 = 1
            La7:
                r11 = r8
            La8:
                okhttp3.internal.http2.Http2Stream$StreamTimeout r4 = r6.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> Lc4
                r4.Wwww()     // Catch: java.lang.Throwable -> Lc4
                kotlin.Unit r4 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lc4
                monitor-exit(r6)
                if (r10 == 0) goto Lb8
                r4 = 0
                goto La
            Lb8:
                int r2 = (r11 > r8 ? 1 : (r11 == r8 ? 0 : -1))
                if (r2 == 0) goto Lc0
                r1.Kkkkkkkkkkkkkkkkkk(r11)
                return r11
            Lc0:
                if (r0 != 0) goto Lc3
                return r8
            Lc3:
                throw r0
            Lc4:
                r0 = move-exception
                goto Ld6
            Lc6:
                java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.Throwable -> L30
                java.lang.String r2 = "stream closed"
                r0.<init>(r2)     // Catch: java.lang.Throwable -> L30
                throw r0     // Catch: java.lang.Throwable -> L30
            Lce:
                okhttp3.internal.http2.Http2Stream$StreamTimeout r2 = r6.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> Lc4
                r2.Wwww()     // Catch: java.lang.Throwable -> Lc4
                throw r0     // Catch: java.lang.Throwable -> Lc4
            Ld6:
                monitor-exit(r6)
                throw r0
            Ld8:
                java.lang.String r0 = "byteCount < 0: "
                java.lang.Long r2 = java.lang.Long.valueOf(r2)
                java.lang.String r0 = kotlin.jvm.internal.Intrinsics.stringPlus(r0, r2)
                java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
                java.lang.String r0 = r0.toString()
                r2.<init>(r0)
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.FramingSource.read(okio.Buffer, long):long");
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwww();
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\u0006¨\u0006\f"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "Lokio/AsyncTimeout;", "<init>", "(Lokhttp3/internal/http2/Http2Stream;)V", "", "Wwwww", "()V", "Ljava/io/IOException;", "cause", "Wwwwwwwww", "(Ljava/io/IOException;)Ljava/io/IOException;", "Wwww", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class StreamTimeout extends AsyncTimeout {
        public StreamTimeout() {
        }

        public final void Wwww() throws IOException {
            if (!Wwwwwwwwww()) {
                return;
            }
            throw Wwwwwwwww(null);
        }

        @Override // okio.AsyncTimeout
        public void Wwwww() {
            Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ErrorCode.CANCEL);
            Http2Stream.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Illlllllllll();
        }

        @Override // okio.AsyncTimeout
        @NotNull
        public IOException Wwwwwwwww(@Nullable IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }
    }

    public Http2Stream(int i, @NotNull Http2Connection http2Connection, boolean z, boolean z2, @Nullable Headers headers) {
        this.f12925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f12924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = http2Connection;
        this.f12920Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = http2Connection.Illlllllllllllllllllllllllll().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        ArrayDeque<Headers> arrayDeque = new ArrayDeque<>();
        this.f12919Wwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayDeque;
        this.f12917Wwwwwwwwwwwwwwwwwwwwwwwwww = new FramingSource(http2Connection.Illllllllllllllllllllllllllll().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), z2);
        this.f12916Wwwwwwwwwwwwwwwwwwwwwwwww = new FramingSink(z);
        this.f12915Wwwwwwwwwwwwwwwwwwwwwwww = new StreamTimeout();
        this.f12914Wwwwwwwwwwwwwwwwwwwwwww = new StreamTimeout();
        if (headers != null) {
            if (!Wwwwwwwwwwwwwww()) {
                arrayDeque.add(headers);
                return;
            }
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        } else if (Wwwwwwwwwwwwwww()) {
        } else {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    @NotNull
    public final Timeout Kkkkkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f12914Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Www() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    @NotNull
    public final synchronized Headers Wwww() throws IOException {
        this.f12915Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwww();
        while (this.f12919Wwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty() && this.f12913Wwwwwwwwwwwwwwwwwwwwww == null) {
            Www();
        }
        this.f12915Wwwwwwwwwwwwwwwwwwwwwwww.Wwww();
        if (!this.f12919Wwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
        } else {
            IOException iOException = this.f12912Wwwwwwwwwwwwwwwwwwwww;
            if (iOException == null) {
                throw new StreamResetException(this.f12913Wwwwwwwwwwwwwwwwwwwwww);
            }
            throw iOException;
        }
        return this.f12919Wwwwwwwwwwwwwwwwwwwwwwwwwwww.removeFirst();
    }

    public final void Wwwww(long j) {
        this.f12921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
    }

    public final void Wwwwww(long j) {
        this.f12923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
    }

    public final void Wwwwwww(long j) {
        this.f12922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
    }

    public final void Wwwwwwww(@Nullable IOException iOException) {
        this.f12912Wwwwwwwwwwwwwwwwwwwww = iOException;
    }

    public final void Wwwwwwwww(@Nullable ErrorCode errorCode) {
        this.f12913Wwwwwwwwwwwwwwwwwwwwww = errorCode;
    }

    public final synchronized void Wwwwwwwwww(@NotNull ErrorCode errorCode) {
        if (this.f12913Wwwwwwwwwwwwwwwwwwwwww == null) {
            this.f12913Wwwwwwwwwwwwwwwwwwwwww = errorCode;
            notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004e A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:10:0x0033, B:14:0x003b, B:19:0x004e, B:20:0x0055, B:17:0x0045), top: B:27:0x0033 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Wwwwwwwwwww(@org.jetbrains.annotations.NotNull okhttp3.Headers r3, boolean r4) {
        /*
            r2 = this;
            boolean r0 = okhttp3.internal.Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww
            if (r0 == 0) goto L32
            boolean r0 = java.lang.Thread.holdsLock(r2)
            if (r0 != 0) goto Lb
            goto L32
        Lb:
            java.lang.AssertionError r3 = new java.lang.AssertionError
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r0 = "Thread "
            r4.append(r0)
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.String r0 = r0.getName()
            r4.append(r0)
            java.lang.String r0 = " MUST NOT hold lock on "
            r4.append(r0)
            r4.append(r2)
            java.lang.String r4 = r4.toString()
            r3.<init>(r4)
            throw r3
        L32:
            monitor-enter(r2)
            boolean r0 = r2.f12918Wwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L43
            r1 = 1
            if (r0 == 0) goto L45
            if (r4 != 0) goto L3b
            goto L45
        L3b:
            okhttp3.internal.http2.Http2Stream$FramingSource r0 = r2.Wwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L43
            r0.Kkkkkkkkkkkkkkkkkkk(r3)     // Catch: java.lang.Throwable -> L43
            goto L4c
        L43:
            r3 = move-exception
            goto L69
        L45:
            r2.f12918Wwwwwwwwwwwwwwwwwwwwwwwwwww = r1     // Catch: java.lang.Throwable -> L43
            java.util.ArrayDeque<okhttp3.Headers> r0 = r2.f12919Wwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L43
            r0.add(r3)     // Catch: java.lang.Throwable -> L43
        L4c:
            if (r4 == 0) goto L55
            okhttp3.internal.http2.Http2Stream$FramingSource r3 = r2.Wwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L43
            r3.Kkkkkkkkkkkkkkkkkkkk(r1)     // Catch: java.lang.Throwable -> L43
        L55:
            boolean r3 = r2.Wwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L43
            r2.notifyAll()     // Catch: java.lang.Throwable -> L43
            kotlin.Unit r4 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L43
            monitor-exit(r2)
            if (r3 != 0) goto L68
            okhttp3.internal.http2.Http2Connection r3 = r2.f12924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r4 = r2.f12925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            r3.Illllllllllll(r4)
        L68:
            return
        L69:
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.Wwwwwwwwwww(okhttp3.Headers, boolean):void");
    }

    public final void Wwwwwwwwwwww(@NotNull BufferedSource bufferedSource, int i) throws IOException {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        this.f12917Wwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkk(bufferedSource, i);
    }

    @NotNull
    public final Timeout Wwwwwwwwwwwww() {
        return this.f12915Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final synchronized boolean Wwwwwwwwwwwwww() {
        try {
            if (this.f12913Wwwwwwwwwwwwwwwwwwwwww != null) {
                return false;
            }
            if (!this.f12917Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (this.f12917Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                }
                return true;
            }
            if (this.f12916Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww() || this.f12916Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (this.f12918Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean Wwwwwwwwwwwwwww() {
        boolean z;
        if ((this.f12925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (this.f12924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkk() == z) {
            return true;
        }
        return false;
    }

    @NotNull
    public final StreamTimeout Wwwwwwwwwwwwwwww() {
        return this.f12914Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwww() {
        return this.f12921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwww() {
        return this.f12920Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final FramingSource Wwwwwwwwwwwwwwwwwww() {
        return this.f12917Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final FramingSink Wwwwwwwwwwwwwwwwwwww() {
        return this.f12916Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Sink Wwwwwwwwwwwwwwwwwwwww() {
        synchronized (this) {
            try {
                if (!this.f12918Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Wwwwwwwwwwwwwww()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f12916Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final StreamTimeout Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f12915Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final IOException Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12912Wwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final synchronized ErrorCode Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12913Wwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Http2Connection Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ErrorCode errorCode) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(errorCode, null)) {
            return;
        }
        this.f12924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.IIllllllll(this.f12925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, errorCode);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ErrorCode errorCode, IOException iOException) {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                return false;
            }
            if (Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww() && Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww()) {
                return false;
            }
            Wwwwwwwww(errorCode);
            Wwwwwwww(iOException);
            notifyAll();
            Unit unit = Unit.INSTANCE;
            this.f12924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Illllllllllll(this.f12925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            return true;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ErrorCode errorCode, @Nullable IOException iOException) throws IOException {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(errorCode, iOException)) {
            return;
        }
        this.f12924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.IIlllllllll(this.f12925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, errorCode);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        if (!this.f12916Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            if (!this.f12916Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww()) {
                if (this.f12913Wwwwwwwwwwwwwwwwwwwwww != null) {
                    IOException iOException = this.f12912Wwwwwwwwwwwwwwwwwwwww;
                    if (iOException == null) {
                        throw new StreamResetException(this.f12913Wwwwwwwwwwwwwwwwwwwwww);
                    }
                    throw iOException;
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        boolean z;
        boolean Wwwwwwwwwwwwww2;
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            try {
                if (Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww() || !Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() || (!Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww() && !Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                    z = false;
                    Wwwwwwwwwwwwww2 = Wwwwwwwwwwwwww();
                    Unit unit = Unit.INSTANCE;
                }
                z = true;
                Wwwwwwwwwwwwww2 = Wwwwwwwwwwwwww();
                Unit unit2 = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ErrorCode.CANCEL, null);
        } else if (!Wwwwwwwwwwwwww2) {
            this.f12924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Illllllllllll(this.f12925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        this.f12920Wwwwwwwwwwwwwwwwwwwwwwwwwwwww += j;
        if (j > 0) {
            notifyAll();
        }
    }
}
