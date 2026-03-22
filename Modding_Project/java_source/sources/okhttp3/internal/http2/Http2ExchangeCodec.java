package okhttp3.internal.http2;

import com.google.common.net.HttpHeaders;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 32\u00020\u0001:\u00013B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0013H\u0016¢\u0006\u0004\b%\u0010\u0017R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010&\u001a\u0004\b'\u0010(R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010)R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010,R\u0014\u00100\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010/R\u0016\u00102\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u00101¨\u00064"}, d2 = {"Lokhttp3/internal/http2/Http2ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/internal/connection/RealConnection;", "connection", "Lokhttp3/internal/http/RealInterceptorChain;", "chain", "Lokhttp3/internal/http2/Http2Connection;", "http2Connection", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "", "contentLength", "Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;J)Lokio/Sink;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "expectContinue", "Lokhttp3/Response$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)Lokhttp3/Response$Builder;", "Lokhttp3/Response;", "response", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)J", "Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)Lokio/Source;", "cancel", "Lokhttp3/internal/connection/RealConnection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/internal/http/RealInterceptorChain;", "Lokhttp3/internal/http2/Http2Connection;", "Lokhttp3/internal/http2/Http2Stream;", "Lokhttp3/internal/http2/Http2Stream;", "stream", "Lokhttp3/Protocol;", "Lokhttp3/Protocol;", "protocol", "Z", "canceled", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Http2ExchangeCodec implements ExchangeCodec {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile boolean f12895Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Protocol f12896Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile Http2Stream f12897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Http2Connection f12898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealInterceptorChain f12899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealConnection f12900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<String> f12894Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwww("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<String> f12893Wwwwwwwwwwwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwww("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00110\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0013R\u0014\u0010\u001a\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0013R\u0014\u0010\u001b\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0013R\u0014\u0010\u001c\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0013R\u0014\u0010\u001d\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0013¨\u0006\u001e"}, d2 = {"Lokhttp3/internal/http2/Http2ExchangeCodec$Companion;", "", "<init>", "()V", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Lokhttp3/internal/http2/Header;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;)Ljava/util/List;", "Lokhttp3/Headers;", "headerBlock", "Lokhttp3/Protocol;", "protocol", "Lokhttp3/Response$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;Lokhttp3/Protocol;)Lokhttp3/Response$Builder;", "", "CONNECTION", "Ljava/lang/String;", "ENCODING", "HOST", "HTTP_2_SKIPPED_REQUEST_HEADERS", "Ljava/util/List;", "HTTP_2_SKIPPED_RESPONSE_HEADERS", "KEEP_ALIVE", "PROXY_CONNECTION", HttpHeaders.TE, "TRANSFER_ENCODING", "UPGRADE", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Response.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Headers headers, @NotNull Protocol protocol) {
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            StatusLine statusLine = null;
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
                String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwww(i);
                if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, ":status")) {
                    statusLine = StatusLine.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus("HTTP/1.1 ", Wwwwwwwwwwwwwwwwwwwwwwwwww2));
                } else if (!Http2ExchangeCodec.f12893Wwwwwwwwwwwwwwwwwwwwwwwwwww.contains(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                i = i2;
            }
            if (statusLine != null) {
                return new Response.Builder().Wwwwwwwwwwwwwwwwww(protocol).Wwwwwwwwwwwwwwwwwwwwwwwwwwww(statusLine.f12734Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwww(statusLine.f12733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwww(builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            throw new ProtocolException("Expected ':status' header not present");
        }

        @NotNull
        public final List<Header> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request) {
            Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            ArrayList arrayList = new ArrayList(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() + 4);
            arrayList.add(new Header(Header.f12765Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, request.Wwwwwwwwwwwwwwwwwwwwwwwwwww()));
            arrayList.add(new Header(Header.f12764Wwwwwwwwwwwwwwwwwwwwwwwwwwww, RequestLine.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwww())));
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Host");
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                arrayList.add(new Header(Header.f12762Wwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
            }
            arrayList.add(new Header(Header.f12763Wwwwwwwwwwwwwwwwwwwwwwwwwww, request.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwww()));
            int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                String lowerCase = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i).toLowerCase(Locale.US);
                if (!Http2ExchangeCodec.f12894Wwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(lowerCase) || (Intrinsics.areEqual(lowerCase, "te") && Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(i), "trailers"))) {
                    arrayList.add(new Header(lowerCase, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(i)));
                }
                i = i2;
            }
            return arrayList;
        }

        public Companion() {
        }
    }

    public Http2ExchangeCodec(@NotNull OkHttpClient okHttpClient, @NotNull RealConnection realConnection, @NotNull RealInterceptorChain realInterceptorChain, @NotNull Http2Connection http2Connection) {
        this.f12900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = realConnection;
        this.f12899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = realInterceptorChain;
        this.f12898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = http2Connection;
        List<Protocol> Wwwwww2 = okHttpClient.Wwwwww();
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        this.f12896Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwww2.contains(protocol) ? protocol : Protocol.HTTP_2;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f12898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @Nullable
    public Response.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        Http2Stream http2Stream = this.f12897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (http2Stream != null) {
            Response.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(http2Stream.Wwww(), this.f12896Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (z && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww() == 100) {
                return null;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new IOException("stream wasn't created");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request) {
        boolean z;
        if (this.f12897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return;
        }
        if (request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            z = true;
        } else {
            z = false;
        }
        this.f12897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f12898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Illllllllllllllllll(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request), z);
        if (!this.f12895Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f12897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(), timeUnit);
            this.f12897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(), timeUnit);
            return;
        }
        this.f12897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ErrorCode.CANCEL);
        throw new IOException("Canceled");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request, long j) {
        return this.f12897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response) {
        if (!okhttp3.internal.http.HttpHeaders.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response)) {
            return 0L;
        }
        return Util.Wwwwwwwwwwwww(response);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public RealConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Source Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response) {
        return this.f12897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f12897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww().close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        this.f12895Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        Http2Stream http2Stream = this.f12897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (http2Stream == null) {
            return;
        }
        http2Stream.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ErrorCode.CANCEL);
    }
}
