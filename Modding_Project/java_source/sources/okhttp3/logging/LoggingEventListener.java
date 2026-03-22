package okhttp3.logging;

import androidx.core.app.NotificationCompat;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\u00020\u0001:\u0001UB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J-\u0010\u0016\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0019\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ-\u0010\u001d\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0013H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ'\u0010\"\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b$\u0010\u000eJ!\u0010'\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(J1\u0010+\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00142\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,J9\u0010/\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u00142\b\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J\u001f\u00103\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00104J\u001f\u00105\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b5\u00104J\u0017\u00106\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b6\u0010\u000eJ\u001f\u00109\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00108\u001a\u000207H\u0016¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b;\u0010\u000eJ\u001f\u0010>\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b>\u0010?J\u001f\u0010@\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b@\u0010AJ\u0017\u0010B\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\bB\u0010\u000eJ\u001f\u0010E\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bE\u0010FJ\u0017\u0010G\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\bG\u0010\u000eJ\u001f\u0010H\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\bH\u0010?J\u001f\u0010I\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\bI\u0010AJ\u0017\u0010J\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\bJ\u0010\u000eJ\u001f\u0010K\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\bK\u0010AJ\u0017\u0010L\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\bL\u0010\u000eJ\u001f\u0010M\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bM\u0010FJ\u001f\u0010N\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bN\u0010FJ\u0017\u0010O\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\bO\u0010\u000eJ\u001f\u0010Q\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010P\u001a\u00020CH\u0016¢\u0006\u0004\bQ\u0010FR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010RR\u0016\u0010T\u001a\u00020<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010S¨\u0006V"}, d2 = {"Lokhttp3/logging/LoggingEventListener;", "Lokhttp3/EventListener;", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "logger", "<init>", "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "", "message", "", "Wwwww", "(Ljava/lang/String;)V", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;)V", "Lokhttp3/HttpUrl;", "url", "Wwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Lokhttp3/HttpUrl;)V", "", "Ljava/net/Proxy;", "proxies", "Wwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Lokhttp3/HttpUrl;Ljava/util/List;)V", "domainName", "Wwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/lang/String;)V", "Ljava/net/InetAddress;", "inetAddressList", "Wwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V", "Ljava/net/InetSocketAddress;", "inetSocketAddress", "proxy", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V", "Wwwwww", "Lokhttp3/Handshake;", "handshake", "Wwwwwww", "(Lokhttp3/Call;Lokhttp3/Handshake;)V", "Lokhttp3/Protocol;", "protocol", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V", "Ljava/io/IOException;", "ioe", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V", "Lokhttp3/Connection;", "connection", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Lokhttp3/Connection;)V", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "Wwwwwwwwwwwwwww", "(Lokhttp3/Call;Lokhttp3/Request;)V", "Wwwwwwwwwwwwwwwww", "", "byteCount", "Wwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;J)V", "Wwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/io/IOException;)V", "Wwwwwwwww", "Lokhttp3/Response;", "response", "Wwwwwwwwww", "(Lokhttp3/Call;Lokhttp3/Response;)V", "Wwwwwwwwwwww", "Wwwwwwwwwwwww", "Wwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "cachedResponse", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "J", "startNs", "Factory", "okhttp-logging-interceptor"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class LoggingEventListener extends EventListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13101Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HttpLoggingInterceptor.Logger f13102Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"Lokhttp3/logging/LoggingEventListener$Factory;", "Lokhttp3/EventListener$Factory;", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "logger", "<init>", "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/EventListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;)Lokhttp3/EventListener;", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "okhttp-logging-interceptor"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static class Factory implements EventListener.Factory {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final HttpLoggingInterceptor.Logger f13103Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @JvmOverloads
        public Factory() {
            this(null, 1, null);
        }

        @Override // okhttp3.EventListener.Factory
        @NotNull
        public EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call) {
            return new LoggingEventListener(this.f13103Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
        }

        @JvmOverloads
        public Factory(@NotNull HttpLoggingInterceptor.Logger logger) {
            this.f13103Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = logger;
        }

        public /* synthetic */ Factory(HttpLoggingInterceptor.Logger logger, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? HttpLoggingInterceptor.Logger.f13099Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww : logger);
        }
    }

    public /* synthetic */ LoggingEventListener(HttpLoggingInterceptor.Logger logger, DefaultConstructorMarker defaultConstructorMarker) {
        this(logger);
    }

    public final void Wwwww(String str) {
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.f13101Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        HttpLoggingInterceptor.Logger logger = this.f13102Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AbstractJsonLexerKt.BEGIN_LIST + millis + " ms] " + str);
    }

    @Override // okhttp3.EventListener
    public void Wwwwww(@NotNull Call call) {
        Wwwww("secureConnectStart");
    }

    @Override // okhttp3.EventListener
    public void Wwwwwww(@NotNull Call call, @Nullable Handshake handshake) {
        Wwwww(Intrinsics.stringPlus("secureConnectEnd: ", handshake));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwww(@NotNull Call call, @NotNull Response response) {
        Wwwww(Intrinsics.stringPlus("satisfactionFailure: ", response));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwww(@NotNull Call call) {
        Wwwww("responseHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwww(@NotNull Call call, @NotNull Response response) {
        Wwwww(Intrinsics.stringPlus("responseHeadersEnd: ", response));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwww(@NotNull Call call, @NotNull IOException iOException) {
        Wwwww(Intrinsics.stringPlus("responseFailed: ", iOException));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwww(@NotNull Call call) {
        Wwwww("responseBodyStart");
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwww(@NotNull Call call, long j) {
        Wwwww(Intrinsics.stringPlus("responseBodyEnd: byteCount=", Long.valueOf(j)));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwww(@NotNull Call call) {
        Wwwww("requestHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwww(@NotNull Call call, @NotNull Request request) {
        Wwwww("requestHeadersEnd");
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwww(@NotNull Call call, @NotNull IOException iOException) {
        Wwwww(Intrinsics.stringPlus("requestFailed: ", iOException));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwww(@NotNull Call call) {
        Wwwww("requestBodyStart");
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwww(@NotNull Call call, long j) {
        Wwwww(Intrinsics.stringPlus("requestBodyEnd: byteCount=", Long.valueOf(j)));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull HttpUrl httpUrl) {
        Wwwww(Intrinsics.stringPlus("proxySelectStart: ", httpUrl));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull HttpUrl httpUrl, @NotNull List<? extends Proxy> list) {
        Wwwww(Intrinsics.stringPlus("proxySelectEnd: ", list));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull String str) {
        Wwwww(Intrinsics.stringPlus("dnsStart: ", str));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull String str, @NotNull List<? extends InetAddress> list) {
        Wwwww(Intrinsics.stringPlus("dnsEnd: ", list));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull Connection connection) {
        Wwwww("connectionReleased");
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull Connection connection) {
        Wwwww(Intrinsics.stringPlus("connectionAcquired: ", connection));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy) {
        Wwwww("connectStart: " + inetSocketAddress + ' ' + proxy);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol, @NotNull IOException iOException) {
        Wwwww("connectFailed: " + protocol + ' ' + iOException);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol) {
        Wwwww(Intrinsics.stringPlus("connectEnd: ", protocol));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call) {
        Wwwww("canceled");
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call) {
        this.f13101Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = System.nanoTime();
        Wwwww(Intrinsics.stringPlus("callStart: ", call.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull IOException iOException) {
        Wwwww(Intrinsics.stringPlus("callFailed: ", iOException));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call) {
        Wwwww("callEnd");
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call) {
        Wwwww("cacheMiss");
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull Response response) {
        Wwwww(Intrinsics.stringPlus("cacheHit: ", response));
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull Response response) {
        Wwwww(Intrinsics.stringPlus("cacheConditionalHit: ", response));
    }

    public LoggingEventListener(HttpLoggingInterceptor.Logger logger) {
        this.f13102Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = logger;
    }
}
