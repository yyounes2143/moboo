package okhttp3.internal.http1;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 Q2\u00020\u0001:\u0007RSTQUVWB)\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010#\u001a\u00020\f2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0010H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u001dH\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010'\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\u00102\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u00122\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u001dH\u0016¢\u0006\u0004\b/\u0010&J\u000f\u00100\u001a\u00020\u001dH\u0016¢\u0006\u0004\b0\u0010&J\u001d\u00105\u001a\u00020\u001d2\u0006\u00102\u001a\u0002012\u0006\u00104\u001a\u000203¢\u0006\u0004\b5\u00106J\u0019\u0010:\u001a\u0004\u0018\u0001092\u0006\u00108\u001a\u000207H\u0016¢\u0006\u0004\b:\u0010;J\u0015\u0010<\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b<\u0010=R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010>R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b-\u0010?\u001a\u0004\b@\u0010AR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010BR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010CR\u0016\u0010F\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010ER\u0014\u0010I\u001a\u00020G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010HR\u0018\u0010K\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010JR\u0018\u0010N\u001a\u000207*\u00020)8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bL\u0010MR\u0018\u0010N\u001a\u000207*\u00020 8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bO\u0010P¨\u0006X"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/internal/connection/RealConnection;", "connection", "Lokio/BufferedSource;", "source", "Lokio/BufferedSink;", "sink", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V", "Lokio/Sink;", "Wwwwwwwwwwwwww", "()Lokio/Sink;", "Wwwwwwwwwww", "", SessionDescription.ATTR_LENGTH, "Lokio/Source;", "Wwwwwwwwwwww", "(J)Lokio/Source;", "Lokhttp3/HttpUrl;", "url", "Wwwwwwwwwwwww", "(Lokhttp3/HttpUrl;)Lokio/Source;", "Wwwwwwwwww", "()Lokio/Source;", "Lokio/ForwardingTimeout;", "timeout", "", "Wwwwwwwwwwwwwwwww", "(Lokio/ForwardingTimeout;)V", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "contentLength", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;J)Lokio/Sink;", "cancel", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;)V", "Lokhttp3/Response;", "response", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "headers", "", "requestLine", "Wwwwwwww", "(Lokhttp3/Headers;Ljava/lang/String;)V", "", "expectContinue", "Lokhttp3/Response$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)Lokhttp3/Response$Builder;", "Wwwwwwwww", "(Lokhttp3/Response;)V", "Lokhttp3/OkHttpClient;", "Lokhttp3/internal/connection/RealConnection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/connection/RealConnection;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "I", "state", "Lokhttp3/internal/http1/HeadersReader;", "Lokhttp3/internal/http1/HeadersReader;", "headersReader", "Lokhttp3/Headers;", "trailers", "Wwwwwwwwwwwwwww", "(Lokhttp3/Response;)Z", "isChunked", "Wwwwwwwwwwwwwwww", "(Lokhttp3/Request;)Z", "Companion", "AbstractSource", "ChunkedSink", "ChunkedSource", "FixedLengthSource", "KnownLengthSink", "UnknownLengthSource", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Headers f12738Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HeadersReader f12739Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSink f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSource f12742Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealConnection f12743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final OkHttpClient f12744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\b¢\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u00108\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u00158\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokio/Source;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lokio/ForwardingTimeout;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/ForwardingTimeout;", "getTimeout", "()Lokio/ForwardingTimeout;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwww", "(Z)V", "closed", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public abstract class AbstractSource implements Source {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12746Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ForwardingTimeout f12747Wwwwwwwwwwwwwwwwwwwwwwwww;

        public AbstractSource() {
            this.f12747Wwwwwwwwwwwwwwwwwwwwwwwww = new ForwardingTimeout(Http1ExchangeCodec.this.f12742Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.timeout());
        }

        public final void Wwwwwwwwwwwwww(boolean z) {
            this.f12746Wwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (Http1ExchangeCodec.this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 6) {
                return;
            }
            if (Http1ExchangeCodec.this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 5) {
                Http1ExchangeCodec.this.Wwwwwwwwwwwwwwwww(this.f12747Wwwwwwwwwwwwwwwwwwwwwwwww);
                Http1ExchangeCodec.this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 6;
                return;
            }
            throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(Http1ExchangeCodec.this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww)));
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12746Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // okio.Source
        public long read(@NotNull Buffer buffer, long j) {
            try {
                return Http1ExchangeCodec.this.f12742Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.read(buffer, j);
            } catch (IOException e) {
                Http1ExchangeCodec.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                throw e;
            }
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.f12747Wwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;", "Lokio/Sink;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "close", "Lokio/ForwardingTimeout;", "Lokio/ForwardingTimeout;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "closed", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class ChunkedSink implements Sink, AutoCloseable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12749Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ForwardingTimeout f12750Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ChunkedSink() {
            this.f12750Wwwwwwwwwwwwwwwwwwwwwwwww = new ForwardingTimeout(Http1ExchangeCodec.this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.timeout());
        }

        @Override // okio.Sink
        public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) {
            if (!this.f12749Wwwwwwwwwwwwwwwwwwwwwwww) {
                if (j == 0) {
                    return;
                }
                Http1ExchangeCodec.this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwww(j);
                Http1ExchangeCodec.this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww("\r\n");
                Http1ExchangeCodec.this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
                Http1ExchangeCodec.this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww("\r\n");
                return;
            }
            throw new IllegalStateException("closed");
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.f12749Wwwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            this.f12749Wwwwwwwwwwwwwwwwwwwwwwww = true;
            Http1ExchangeCodec.this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww("0\r\n\r\n");
            Http1ExchangeCodec.this.Wwwwwwwwwwwwwwwww(this.f12750Wwwwwwwwwwwwwwwwwwwwwwwww);
            Http1ExchangeCodec.this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public synchronized void flush() {
            if (this.f12749Wwwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            Http1ExchangeCodec.this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.flush();
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return this.f12750Wwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u000fR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/HttpUrl;", "url", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "", "close", "()V", "Kkkkkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/HttpUrl;", "Wwwwwwwwwwwwwwwwwwwww", "J", "bytesRemainingInChunk", "", "Wwwwwwwwwwwwwwwwwwww", "Z", "hasMoreChunks", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class ChunkedSource extends AbstractSource {

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12752Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f12753Wwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final HttpUrl f12754Wwwwwwwwwwwwwwwwwwwwww;

        public ChunkedSource(@NotNull HttpUrl httpUrl) {
            super();
            this.f12754Wwwwwwwwwwwwwwwwwwwwww = httpUrl;
            this.f12753Wwwwwwwwwwwwwwwwwwwww = -1L;
            this.f12752Wwwwwwwwwwwwwwwwwwww = true;
        }

        public final void Kkkkkkkkkkkkkkkkkkkkkkk() {
            if (this.f12753Wwwwwwwwwwwwwwwwwwwww != -1) {
                Http1ExchangeCodec.this.f12742Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww();
            }
            try {
                this.f12753Wwwwwwwwwwwwwwwwwwwww = Http1ExchangeCodec.this.f12742Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkkkkk();
                String obj = StringsKt.trim((CharSequence) Http1ExchangeCodec.this.f12742Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww()).toString();
                if (this.f12753Wwwwwwwwwwwwwwwwwwwww >= 0 && (obj.length() <= 0 || StringsKt.startsWith$default(obj, ";", false, 2, (Object) null))) {
                    if (this.f12753Wwwwwwwwwwwwwwwwwwwww == 0) {
                        this.f12752Wwwwwwwwwwwwwwwwwwww = false;
                        Http1ExchangeCodec http1ExchangeCodec = Http1ExchangeCodec.this;
                        http1ExchangeCodec.f12738Wwwwwwwwwwwwwwwwwwwwwwwwwwww = http1ExchangeCodec.f12739Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        HttpHeaders.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Http1ExchangeCodec.this.f12744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(), this.f12754Wwwwwwwwwwwwwwwwwwwwww, Http1ExchangeCodec.this.f12738Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                        return;
                    }
                    return;
                }
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f12753Wwwwwwwwwwwwwwwwwwwww + obj + '\"');
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return;
            }
            if (this.f12752Wwwwwwwwwwwwwwwwwwww && !Util.Wwwwwwwwwwwwwwww(this, 100, TimeUnit.MILLISECONDS)) {
                Http1ExchangeCodec.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Wwwwwwwwwwwwww(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(@NotNull Buffer buffer, long j) {
            if (j >= 0) {
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    if (!this.f12752Wwwwwwwwwwwwwwwwwwww) {
                        return -1L;
                    }
                    long j2 = this.f12753Wwwwwwwwwwwwwwwwwwwww;
                    if (j2 == 0 || j2 == -1) {
                        Kkkkkkkkkkkkkkkkkkkkkkk();
                        if (!this.f12752Wwwwwwwwwwwwwwwwwwww) {
                            return -1L;
                        }
                    }
                    long read = super.read(buffer, Math.min(j, this.f12753Wwwwwwwwwwwwwwwwwwwww));
                    if (read != -1) {
                        this.f12753Wwwwwwwwwwwwwwwwwwwww -= read;
                        return read;
                    }
                    Http1ExchangeCodec.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwww();
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;", "", "()V", "NO_CHUNK_YET", "", "STATE_CLOSED", "", "STATE_IDLE", "STATE_OPEN_REQUEST_BODY", "STATE_OPEN_RESPONSE_BODY", "STATE_READING_RESPONSE_BODY", "STATE_READ_RESPONSE_HEADERS", "STATE_WRITING_REQUEST_BODY", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\n\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "", "bytesRemaining", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;J)V", "Lokio/Buffer;", "sink", "byteCount", "read", "(Lokio/Buffer;J)J", "", "close", "()V", "Wwwwwwwwwwwwwwwwwwwwww", "J", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class FixedLengthSource extends AbstractSource {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f12756Wwwwwwwwwwwwwwwwwwwwww;

        public FixedLengthSource(long j) {
            super();
            this.f12756Wwwwwwwwwwwwwwwwwwwwww = j;
            if (j == 0) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return;
            }
            if (this.f12756Wwwwwwwwwwwwwwwwwwwwww != 0 && !Util.Wwwwwwwwwwwwwwww(this, 100, TimeUnit.MILLISECONDS)) {
                Http1ExchangeCodec.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Wwwwwwwwwwwwww(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(@NotNull Buffer buffer, long j) {
            if (j >= 0) {
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    long j2 = this.f12756Wwwwwwwwwwwwwwwwwwwwww;
                    if (j2 == 0) {
                        return -1L;
                    }
                    long read = super.read(buffer, Math.min(j2, j));
                    if (read != -1) {
                        long j3 = this.f12756Wwwwwwwwwwwwwwwwwwwwww - read;
                        this.f12756Wwwwwwwwwwwwwwwwwwwwww = j3;
                        if (j3 == 0) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        return read;
                    }
                    Http1ExchangeCodec.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwww();
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;", "Lokio/Sink;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "close", "Lokio/ForwardingTimeout;", "Lokio/ForwardingTimeout;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "closed", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class KnownLengthSink implements Sink, AutoCloseable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12758Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ForwardingTimeout f12759Wwwwwwwwwwwwwwwwwwwwwwwww;

        public KnownLengthSink() {
            this.f12759Wwwwwwwwwwwwwwwwwwwwwwwww = new ForwardingTimeout(Http1ExchangeCodec.this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.timeout());
        }

        @Override // okio.Sink
        public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) {
            if (!this.f12758Wwwwwwwwwwwwwwwwwwwwwwww) {
                Util.Wwwwwwwwwwwwwwwwwwwwwww(buffer.Kk(), 0L, j);
                Http1ExchangeCodec.this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
                return;
            }
            throw new IllegalStateException("closed");
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f12758Wwwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            this.f12758Wwwwwwwwwwwwwwwwwwwwwwww = true;
            Http1ExchangeCodec.this.Wwwwwwwwwwwwwwwww(this.f12759Wwwwwwwwwwwwwwwwwwwwwwwww);
            Http1ExchangeCodec.this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            if (this.f12758Wwwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            Http1ExchangeCodec.this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.flush();
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return this.f12759Wwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "", "close", "()V", "", "Wwwwwwwwwwwwwwwwwwwwww", "Z", "inputExhausted", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class UnknownLengthSource extends AbstractSource {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12761Wwwwwwwwwwwwwwwwwwwwww;

        public UnknownLengthSource() {
            super();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return;
            }
            if (!this.f12761Wwwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Wwwwwwwwwwwwww(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(@NotNull Buffer buffer, long j) {
            if (j >= 0) {
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    if (this.f12761Wwwwwwwwwwwwwwwwwwwwww) {
                        return -1L;
                    }
                    long read = super.read(buffer, j);
                    if (read == -1) {
                        this.f12761Wwwwwwwwwwwwwwwwwwwwww = true;
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                        return -1L;
                    }
                    return read;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
    }

    public Http1ExchangeCodec(@Nullable OkHttpClient okHttpClient, @NotNull RealConnection realConnection, @NotNull BufferedSource bufferedSource, @NotNull BufferedSink bufferedSink) {
        this.f12744Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = okHttpClient;
        this.f12743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = realConnection;
        this.f12742Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bufferedSource;
        this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bufferedSink;
        this.f12739Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HeadersReader(bufferedSource);
    }

    public final void Wwwwwwww(@NotNull Headers headers, @NotNull String str) {
        int i = this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == 0) {
            this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwwwwww("\r\n");
            int size = headers.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2)).Wwwwwwwwwwwwwwwwwwwwwwwwww(": ").Wwwwwwwwwwwwwwwwwwwwwwwwww(headers.Wwwwwwwwwwwwwwwwwwwwwwwwww(i2)).Wwwwwwwwwwwwwwwwwwwwwwwwww("\r\n");
            }
            this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww("\r\n");
            this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;
            return;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i)).toString());
    }

    public final void Wwwwwwwww(@NotNull Response response) {
        long Wwwwwwwwwwwww2 = Util.Wwwwwwwwwwwww(response);
        if (Wwwwwwwwwwwww2 == -1) {
            return;
        }
        Source Wwwwwwwwwwww2 = Wwwwwwwwwwww(Wwwwwwwwwwwww2);
        Util.Kkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwww2, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        Wwwwwwwwwwww2.close();
    }

    public final Source Wwwwwwwwww() {
        int i = this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == 4) {
            this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 5;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwww();
            return new UnknownLengthSource();
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i)).toString());
    }

    public final Sink Wwwwwwwwwww() {
        int i = this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == 1) {
            this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 2;
            return new KnownLengthSink();
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i)).toString());
    }

    public final Source Wwwwwwwwwwww(long j) {
        int i = this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == 4) {
            this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 5;
            return new FixedLengthSource(j);
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i)).toString());
    }

    public final Source Wwwwwwwwwwwww(HttpUrl httpUrl) {
        int i = this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == 4) {
            this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 5;
            return new ChunkedSource(httpUrl);
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i)).toString());
    }

    public final Sink Wwwwwwwwwwwwww() {
        int i = this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == 1) {
            this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 2;
            return new ChunkedSink();
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i)).toString());
    }

    public final boolean Wwwwwwwwwwwwwww(Response response) {
        return StringsKt.equals("chunked", Response.Kkkkkkkkkkkkkkkkk(response, com.google.common.net.HttpHeaders.TRANSFER_ENCODING, null, 2, null), true);
    }

    public final boolean Wwwwwwwwwwwwwwww(Request request) {
        return StringsKt.equals("chunked", request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.common.net.HttpHeaders.TRANSFER_ENCODING), true);
    }

    public final void Wwwwwwwwwwwwwwwww(ForwardingTimeout forwardingTimeout) {
        Timeout Wwwwwwwwwwwwwwwwwwwwwwww2 = forwardingTimeout.Wwwwwwwwwwwwwwwwwwwwwwww();
        forwardingTimeout.Wwwwwwwwwwwwwwwwwwwwwww(Timeout.f13251Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @Nullable
    public Response.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        int i = this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i != 1 && i != 2 && i != 3) {
            throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i)).toString());
        }
        try {
            StatusLine Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = StatusLine.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12739Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            Response.Builder Wwwwwwwwwwwwwwwwwwwwwww2 = new Response.Builder().Wwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f12735Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f12734Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f12733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwww(this.f12739Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (z && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f12734Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 100) {
                return null;
            }
            int i2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f12734Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i2 == 100) {
                this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 3;
                return Wwwwwwwwwwwwwwwwwwwwwww2;
            } else if (102 <= i2 && i2 < 200) {
                this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 3;
                return Wwwwwwwwwwwwwwwwwwwwwww2;
            } else {
                this.f12740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 4;
                return Wwwwwwwwwwwwwwwwwwwwwww2;
            }
        } catch (EOFException e) {
            throw new IOException(Intrinsics.stringPlus("unexpected end of stream on ", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwww()), e);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request) {
        Wwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), RequestLine.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().type()));
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request, long j) {
        if (request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null && request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isDuplex()) {
            throw new ProtocolException("Duplex connections are not supported for HTTP/1");
        }
        if (Wwwwwwwwwwwwwwww(request)) {
            return Wwwwwwwwwwwwww();
        }
        if (j != -1) {
            return Wwwwwwwwwww();
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response) {
        if (!HttpHeaders.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response)) {
            return 0L;
        }
        if (Wwwwwwwwwwwwwww(response)) {
            return -1L;
        }
        return Util.Wwwwwwwwwwwww(response);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public RealConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12743Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Source Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response) {
        if (!HttpHeaders.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response)) {
            return Wwwwwwwwwwww(0L);
        }
        if (Wwwwwwwwwwwwwww(response)) {
            return Wwwwwwwwwwwww(response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwww());
        }
        long Wwwwwwwwwwwww2 = Util.Wwwwwwwwwwwww(response);
        if (Wwwwwwwwwwwww2 != -1) {
            return Wwwwwwwwwwww(Wwwwwwwwwwwww2);
        }
        return Wwwwwwwwww();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f12741Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
