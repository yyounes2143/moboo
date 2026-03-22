package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.WebSocket;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.proxy.NullProxySelector;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000à\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000 \u008f\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u0090\u0001\u008f\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\t\b\u0016¢\u0006\u0004\b\u0006\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0017\u001a\u00020\u00128G¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001d\u001a\u00020\u00188G¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001d\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e8G¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001d\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e8G¢\u0006\f\n\u0004\b\u001b\u0010!\u001a\u0004\b%\u0010#R\u0017\u0010,\u001a\u00020'8G¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0017\u00102\u001a\u00020-8G¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0017\u00107\u001a\u0002038G¢\u0006\f\n\u0004\b\u0015\u00104\u001a\u0004\b5\u00106R\u0017\u0010:\u001a\u00020-8G¢\u0006\f\n\u0004\b8\u0010/\u001a\u0004\b9\u00101R\u0017\u0010<\u001a\u00020-8G¢\u0006\f\n\u0004\b*\u0010/\u001a\u0004\b;\u00101R\u0017\u0010@\u001a\u00020=8G¢\u0006\f\n\u0004\b9\u0010>\u001a\u0004\b.\u0010?R\u0019\u0010E\u001a\u0004\u0018\u00010A8G¢\u0006\f\n\u0004\b;\u0010B\u001a\u0004\bC\u0010DR\u0017\u0010J\u001a\u00020F8G¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\b8\u0010IR\u0019\u0010P\u001a\u0004\u0018\u00010K8G¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR\u0017\u0010V\u001a\u00020Q8G¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010UR\u0017\u0010X\u001a\u0002038G¢\u0006\f\n\u0004\b\"\u00104\u001a\u0004\bW\u00106R\u0017\u0010^\u001a\u00020Y8G¢\u0006\f\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]R\u0016\u0010a\u001a\u0004\u0018\u00010_8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010`R\u0019\u0010f\u001a\u0004\u0018\u00010b8G¢\u0006\f\n\u0004\b\u0010\u0010c\u001a\u0004\bd\u0010eR\u001d\u0010i\u001a\b\u0012\u0004\u0012\u00020g0\u001e8G¢\u0006\f\n\u0004\bh\u0010!\u001a\u0004\b(\u0010#R\u001d\u0010l\u001a\b\u0012\u0004\u0012\u00020j0\u001e8G¢\u0006\f\n\u0004\bk\u0010!\u001a\u0004\bk\u0010#R\u0017\u0010p\u001a\u00020m8G¢\u0006\f\n\u0004\bN\u0010n\u001a\u0004\bR\u0010oR\u0017\u0010t\u001a\u00020q8G¢\u0006\f\n\u0004\bW\u0010r\u001a\u0004\b\u0019\u0010sR\u0019\u0010x\u001a\u0004\u0018\u00010u8G¢\u0006\f\n\u0004\bT\u0010v\u001a\u0004\b\u0013\u0010wR\u0017\u0010~\u001a\u00020y8G¢\u0006\f\n\u0004\bz\u0010{\u001a\u0004\b|\u0010}R\u0017\u0010\u007f\u001a\u00020y8G¢\u0006\f\n\u0004\b0\u0010{\u001a\u0004\b \u0010}R\u0018\u0010\u0080\u0001\u001a\u00020y8G¢\u0006\f\n\u0004\b\\\u0010{\u001a\u0004\bz\u0010}R\u001a\u0010\u0083\u0001\u001a\u00020y8G¢\u0006\u000e\n\u0005\b\u0081\u0001\u0010{\u001a\u0005\b\u0082\u0001\u0010}R\u0018\u0010\u0084\u0001\u001a\u00020y8G¢\u0006\f\n\u0004\b\n\u0010{\u001a\u0004\bh\u0010}R\u001c\u0010\u0088\u0001\u001a\u00030\u0085\u00018G¢\u0006\u000f\n\u0006\b\u0082\u0001\u0010\u0086\u0001\u001a\u0005\bZ\u0010\u0087\u0001R\u001b\u0010\u008c\u0001\u001a\u00030\u0089\u00018\u0006¢\u0006\u000e\n\u0005\bd\u0010\u008a\u0001\u001a\u0005\bL\u0010\u008b\u0001R\u0014\u0010\u008e\u0001\u001a\u00020_8G¢\u0006\b\u001a\u0006\b\u0081\u0001\u0010\u008d\u0001¨\u0006\u0091\u0001"}, d2 = {"Lokhttp3/OkHttpClient;", "", "Lokhttp3/Call$Factory;", "Lokhttp3/WebSocket$Factory;", "Lokhttp3/OkHttpClient$Builder;", "builder", "<init>", "(Lokhttp3/OkHttpClient$Builder;)V", "()V", "", "Kkkkkkkkkkkkkkkkkkkkkk", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "Lokhttp3/Call;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;)Lokhttp3/Call;", "Wwwwwwww", "()Lokhttp3/OkHttpClient$Builder;", "Lokhttp3/Dispatcher;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Dispatcher;", "Wwwwwwwwwwwwwwwwwww", "()Lokhttp3/Dispatcher;", "dispatcher", "Lokhttp3/ConnectionPool;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/ConnectionPool;", "Wwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/ConnectionPool;", "connectionPool", "", "Lokhttp3/Interceptor;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwww", "()Ljava/util/List;", "interceptors", "Wwwwwwwww", "networkInterceptors", "Lokhttp3/EventListener$Factory;", "Wwwwwwwwwwwwwwwwwwwww", "Lokhttp3/EventListener$Factory;", "Wwwwwwwwwwwwwwwww", "()Lokhttp3/EventListener$Factory;", "eventListenerFactory", "", "Wwwwwwwwwwwwwwwwwwww", "Z", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "()Z", "retryOnConnectionFailure", "Lokhttp3/Authenticator;", "Lokhttp3/Authenticator;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Authenticator;", "authenticator", "Wwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "followRedirects", "Wwwwwwwwwwwwwww", "followSslRedirects", "Lokhttp3/CookieJar;", "Lokhttp3/CookieJar;", "()Lokhttp3/CookieJar;", "cookieJar", "Lokhttp3/Cache;", "Lokhttp3/Cache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Cache;", "cache", "Lokhttp3/Dns;", "Wwwwwwwwwwwwww", "Lokhttp3/Dns;", "()Lokhttp3/Dns;", "dns", "Ljava/net/Proxy;", "Wwwwwwwwwwwww", "Ljava/net/Proxy;", "Wwwww", "()Ljava/net/Proxy;", "proxy", "Ljava/net/ProxySelector;", "Wwwwwwwwwwww", "Ljava/net/ProxySelector;", "Www", "()Ljava/net/ProxySelector;", "proxySelector", "Wwww", "proxyAuthenticator", "Ljavax/net/SocketFactory;", "Wwwwwwwwww", "Ljavax/net/SocketFactory;", "Kkkkkkkkkkkkkkkkkkkkkkkk", "()Ljavax/net/SocketFactory;", "socketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactoryOrNull", "Ljavax/net/ssl/X509TrustManager;", "Ljavax/net/ssl/X509TrustManager;", "Kkkkkkkkkkkkkkkkkkkk", "()Ljavax/net/ssl/X509TrustManager;", "x509TrustManager", "Lokhttp3/ConnectionSpec;", "Wwwwwww", "connectionSpecs", "Lokhttp3/Protocol;", "Wwwwww", "protocols", "Ljavax/net/ssl/HostnameVerifier;", "Ljavax/net/ssl/HostnameVerifier;", "()Ljavax/net/ssl/HostnameVerifier;", "hostnameVerifier", "Lokhttp3/CertificatePinner;", "Lokhttp3/CertificatePinner;", "()Lokhttp3/CertificatePinner;", "certificatePinner", "Lokhttp3/internal/tls/CertificateChainCleaner;", "Lokhttp3/internal/tls/CertificateChainCleaner;", "()Lokhttp3/internal/tls/CertificateChainCleaner;", "certificateChainCleaner", "", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "callTimeoutMillis", "connectTimeoutMillis", "readTimeoutMillis", "Kkkkkkkkkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkkkkkkk", "writeTimeoutMillis", "pingIntervalMillis", "", "J", "()J", "minWebSocketMessageToCompress", "Lokhttp3/internal/connection/RouteDatabase;", "Lokhttp3/internal/connection/RouteDatabase;", "()Lokhttp3/internal/connection/RouteDatabase;", "routeDatabase", "()Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactory", "Companion", "Builder", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public class OkHttpClient implements Cloneable, Call.Factory, WebSocket.Factory {
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final RouteDatabase f12369Kkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final long f12370Kkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final int f12371Kkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final int f12372Kkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final int f12373Kkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final int f12374Kkkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public final int f12375Kkkkkkkkkkkkkkkkkkkkkkkkkk;
    @Nullable

    /* renamed from: Www  reason: collision with root package name */
    public final CertificateChainCleaner f12376Www;
    @NotNull

    /* renamed from: Wwww  reason: collision with root package name */
    public final CertificatePinner f12377Wwww;
    @NotNull

    /* renamed from: Wwwww  reason: collision with root package name */
    public final HostnameVerifier f12378Wwwww;
    @NotNull

    /* renamed from: Wwwwww  reason: collision with root package name */
    public final List<Protocol> f12379Wwwwww;
    @NotNull

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public final List<ConnectionSpec> f12380Wwwwwww;
    @Nullable

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public final X509TrustManager f12381Wwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public final SSLSocketFactory f12382Wwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public final SocketFactory f12383Wwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public final Authenticator f12384Wwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public final ProxySelector f12385Wwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public final Proxy f12386Wwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public final Dns f12387Wwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final Cache f12388Wwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CookieJar f12389Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12390Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12391Wwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Authenticator f12392Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12393Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EventListener.Factory f12394Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Interceptor> f12395Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Interceptor> f12396Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ConnectionPool f12397Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Dispatcher f12398Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public static final List<Protocol> f12368Kkkkkkkkkkkkkkkkkkk = Util.Wwwwwwwwwwww(Protocol.HTTP_2, Protocol.HTTP_1_1);
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public static final List<ConnectionSpec> f12367Kkkkkkkkkkkkkkkkkk = Util.Wwwwwwwwwwww(ConnectionSpec.f12263Wwwwwwwwwwwwwwwwwwwwwwwwwww, ConnectionSpec.f12261Wwwwwwwwwwwwwwwwwwwwwwwww);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0007\u001a\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lokhttp3/OkHttpClient$Companion;", "", "<init>", "()V", "", "Lokhttp3/Protocol;", "DEFAULT_PROTOCOLS", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "Lokhttp3/ConnectionSpec;", "DEFAULT_CONNECTION_SPECS", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<Protocol> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return OkHttpClient.f12368Kkkkkkkkkkkkkkkkkkk;
        }

        @NotNull
        public final List<ConnectionSpec> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return OkHttpClient.f12367Kkkkkkkkkkkkkkkkkk;
        }

        public Companion() {
        }
    }

    public OkHttpClient(@NotNull Builder builder) {
        ProxySelector Kkkkkkkkkkkkkkkkkkkkkkkkkk2;
        this.f12398Wwwwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwww();
        this.f12397Wwwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwww();
        this.f12396Wwwwwwwwwwwwwwwwwwwwwww = Util.Kkkkkkkkkkk(builder.Wwwwwwwww());
        this.f12395Wwwwwwwwwwwwwwwwwwwwww = Util.Kkkkkkkkkkk(builder.Wwwwwww());
        this.f12394Wwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwww();
        this.f12393Wwwwwwwwwwwwwwwwwwww = builder.Kkkkkkkkkkkkkkkkkkkkkkkk();
        this.f12392Wwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwww();
        this.f12391Wwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwww();
        this.f12390Wwwwwwwwwwwwwwwww = builder.Wwwwwwwwwww();
        this.f12389Wwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwww();
        this.f12388Wwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwww();
        this.f12387Wwwwwwwwwwwwww = builder.Wwwwwwwwwwwwww();
        this.f12386Wwwwwwwwwwwww = builder.Wwww();
        if (builder.Wwww() != null) {
            Kkkkkkkkkkkkkkkkkkkkkkkkkk2 = NullProxySelector.INSTANCE;
        } else {
            Kkkkkkkkkkkkkkkkkkkkkkkkkk2 = builder.Kkkkkkkkkkkkkkkkkkkkkkkkkk();
            Kkkkkkkkkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkkkkkkkkk2 == null ? ProxySelector.getDefault() : Kkkkkkkkkkkkkkkkkkkkkkkkkk2;
            if (Kkkkkkkkkkkkkkkkkkkkkkkkkk2 == null) {
                Kkkkkkkkkkkkkkkkkkkkkkkkkk2 = NullProxySelector.INSTANCE;
            }
        }
        this.f12385Wwwwwwwwwwww = Kkkkkkkkkkkkkkkkkkkkkkkkkk2;
        this.f12384Wwwwwwwwwww = builder.Www();
        this.f12383Wwwwwwwwww = builder.Kkkkkkkkkkkkkkkkkkkkkk();
        List<ConnectionSpec> Wwwwwwwwwwwwwwwww2 = builder.Wwwwwwwwwwwwwwwww();
        this.f12380Wwwwwww = Wwwwwwwwwwwwwwwww2;
        this.f12379Wwwwww = builder.Wwwww();
        this.f12378Wwwww = builder.Wwwwwwwwww();
        this.f12375Kkkkkkkkkkkkkkkkkkkkkkkkkk = builder.Wwwwwwwwwwwwwwwwwwwwww();
        this.f12374Kkkkkkkkkkkkkkkkkkkkkkkkk = builder.Wwwwwwwwwwwwwwwwwww();
        this.f12373Kkkkkkkkkkkkkkkkkkkkkkkk = builder.Kkkkkkkkkkkkkkkkkkkkkkkkk();
        this.f12372Kkkkkkkkkkkkkkkkkkkkkkk = builder.Kkkkkkkkkkkkkkkkkkkk();
        this.f12371Kkkkkkkkkkkkkkkkkkkkkk = builder.Wwwwww();
        this.f12370Kkkkkkkkkkkkkkkkkkkkk = builder.Wwwwwwww();
        RouteDatabase Kkkkkkkkkkkkkkkkkkkkkkk2 = builder.Kkkkkkkkkkkkkkkkkkkkkkk();
        this.f12369Kkkkkkkkkkkkkkkkkkkk = Kkkkkkkkkkkkkkkkkkkkkkk2 == null ? new RouteDatabase() : Kkkkkkkkkkkkkkkkkkkkkkk2;
        List<ConnectionSpec> list = Wwwwwwwwwwwwwwwww2;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (ConnectionSpec connectionSpec : list) {
                if (connectionSpec.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    if (builder.Kkkkkkkkkkkkkkkkkkkkk() != null) {
                        this.f12382Wwwwwwwww = builder.Kkkkkkkkkkkkkkkkkkkkk();
                        CertificateChainCleaner Wwwwwwwwwwwwwwwwwwwww2 = builder.Wwwwwwwwwwwwwwwwwwwww();
                        this.f12376Www = Wwwwwwwwwwwwwwwwwwwww2;
                        this.f12381Wwwwwwww = builder.Kkkkkkkkkkkkkkkkkkk();
                        this.f12377Wwww = builder.Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2);
                    } else {
                        Platform.Companion companion = Platform.Companion;
                        X509TrustManager Wwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwww();
                        this.f12381Wwwwwwww = Wwwwwwwwwwwwwwwwwww2;
                        this.f12382Wwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwww2);
                        CertificateChainCleaner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CertificateChainCleaner.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwww2);
                        this.f12376Www = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        this.f12377Wwww = builder.Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    }
                    Kkkkkkkkkkkkkkkkkkkkkk();
                }
            }
        }
        this.f12382Wwwwwwwww = null;
        this.f12376Www = null;
        this.f12381Wwwwwwww = null;
        this.f12377Wwww = CertificatePinner.f12200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Kkkkkkkkkkkkkkkkkkkkkk();
    }

    @JvmName(name = "x509TrustManager")
    @Nullable
    public final X509TrustManager Kkkkkkkkkkkkkkkkkkkk() {
        return this.f12381Wwwwwwww;
    }

    @JvmName(name = "writeTimeoutMillis")
    public final int Kkkkkkkkkkkkkkkkkkkkk() {
        return this.f12372Kkkkkkkkkkkkkkkkkkkkkkk;
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkk() {
        if (!this.f12396Wwwwwwwwwwwwwwwwwwwwwww.contains(null)) {
            if (!this.f12395Wwwwwwwwwwwwwwwwwwwwww.contains(null)) {
                List<ConnectionSpec> list = this.f12380Wwwwwww;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    for (ConnectionSpec connectionSpec : list) {
                        if (connectionSpec.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            if (this.f12382Wwwwwwwww != null) {
                                if (this.f12376Www != null) {
                                    if (this.f12381Wwwwwwww == null) {
                                        throw new IllegalStateException("x509TrustManager == null");
                                    }
                                    return;
                                }
                                throw new IllegalStateException("certificateChainCleaner == null");
                            }
                            throw new IllegalStateException("sslSocketFactory == null");
                        }
                    }
                }
                if (this.f12382Wwwwwwwww == null) {
                    if (this.f12376Www == null) {
                        if (this.f12381Wwwwwwww == null) {
                            if (Intrinsics.areEqual(this.f12377Wwww, CertificatePinner.f12200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                                return;
                            }
                            throw new IllegalStateException("Check failed.");
                        }
                        throw new IllegalStateException("Check failed.");
                    }
                    throw new IllegalStateException("Check failed.");
                }
                throw new IllegalStateException("Check failed.");
            }
            throw new IllegalStateException(Intrinsics.stringPlus("Null network interceptor: ", Wwwwwwwww()).toString());
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Null interceptor: ", Wwwwwwwwwww()).toString());
    }

    @JvmName(name = "sslSocketFactory")
    @NotNull
    public final SSLSocketFactory Kkkkkkkkkkkkkkkkkkkkkkk() {
        SSLSocketFactory sSLSocketFactory = this.f12382Wwwwwwwww;
        if (sSLSocketFactory != null) {
            return sSLSocketFactory;
        }
        throw new IllegalStateException("CLEARTEXT-only client");
    }

    @JvmName(name = "socketFactory")
    @NotNull
    public final SocketFactory Kkkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f12383Wwwwwwwwww;
    }

    @JvmName(name = "retryOnConnectionFailure")
    public final boolean Kkkkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f12393Wwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "readTimeoutMillis")
    public final int Kkkkkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f12373Kkkkkkkkkkkkkkkkkkkkkkkk;
    }

    @JvmName(name = "proxySelector")
    @NotNull
    public final ProxySelector Www() {
        return this.f12385Wwwwwwwwwwww;
    }

    @JvmName(name = "proxyAuthenticator")
    @NotNull
    public final Authenticator Wwww() {
        return this.f12384Wwwwwwwwwww;
    }

    @JvmName(name = "proxy")
    @Nullable
    public final Proxy Wwwww() {
        return this.f12386Wwwwwwwwwwwww;
    }

    @JvmName(name = "protocols")
    @NotNull
    public final List<Protocol> Wwwwww() {
        return this.f12379Wwwwww;
    }

    @JvmName(name = "pingIntervalMillis")
    public final int Wwwwwww() {
        return this.f12371Kkkkkkkkkkkkkkkkkkkkkk;
    }

    @NotNull
    public Builder Wwwwwwww() {
        return new Builder(this);
    }

    @JvmName(name = "networkInterceptors")
    @NotNull
    public final List<Interceptor> Wwwwwwwww() {
        return this.f12395Wwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "minWebSocketMessageToCompress")
    public final long Wwwwwwwwww() {
        return this.f12370Kkkkkkkkkkkkkkkkkkkkk;
    }

    @JvmName(name = "interceptors")
    @NotNull
    public final List<Interceptor> Wwwwwwwwwww() {
        return this.f12396Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "hostnameVerifier")
    @NotNull
    public final HostnameVerifier Wwwwwwwwwwww() {
        return this.f12378Wwwww;
    }

    @NotNull
    public final RouteDatabase Wwwwwwwwwwwww() {
        return this.f12369Kkkkkkkkkkkkkkkkkkkk;
    }

    @JvmName(name = "followSslRedirects")
    public final boolean Wwwwwwwwwwwwwww() {
        return this.f12390Wwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "followRedirects")
    public final boolean Wwwwwwwwwwwwwwww() {
        return this.f12391Wwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "eventListenerFactory")
    @NotNull
    public final EventListener.Factory Wwwwwwwwwwwwwwwww() {
        return this.f12394Wwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "dns")
    @NotNull
    public final Dns Wwwwwwwwwwwwwwwwww() {
        return this.f12387Wwwwwwwwwwwwww;
    }

    @JvmName(name = "dispatcher")
    @NotNull
    public final Dispatcher Wwwwwwwwwwwwwwwwwww() {
        return this.f12398Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "cookieJar")
    @NotNull
    public final CookieJar Wwwwwwwwwwwwwwwwwwww() {
        return this.f12389Wwwwwwwwwwwwwwww;
    }

    @JvmName(name = "connectionSpecs")
    @NotNull
    public final List<ConnectionSpec> Wwwwwwwwwwwwwwwwwwwww() {
        return this.f12380Wwwwwww;
    }

    @JvmName(name = "connectionPool")
    @NotNull
    public final ConnectionPool Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f12397Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "connectTimeoutMillis")
    public final int Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12374Kkkkkkkkkkkkkkkkkkkkkkkkk;
    }

    @JvmName(name = "certificatePinner")
    @NotNull
    public final CertificatePinner Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12377Wwww;
    }

    @JvmName(name = "certificateChainCleaner")
    @Nullable
    public final CertificateChainCleaner Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12376Www;
    }

    @JvmName(name = "callTimeoutMillis")
    public final int Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12375Kkkkkkkkkkkkkkkkkkkkkkkkkk;
    }

    @JvmName(name = "cache")
    @Nullable
    public final Cache Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12388Wwwwwwwwwwwwwww;
    }

    @JvmName(name = "authenticator")
    @NotNull
    public final Authenticator Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12392Wwwwwwwwwwwwwwwwwww;
    }

    @Override // okhttp3.Call.Factory
    @NotNull
    public Call Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request) {
        return new RealCall(this, request, false);
    }

    @NotNull
    public Object clone() {
        return super.clone();
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\nJ\u0015\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0013J\u0015\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0010¢\u0006\u0004\b\u0017\u0010\u0013J\u0015\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00002\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u0015\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J\u001d\u0010,\u001a\u00020\u00002\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b,\u0010-J\u0015\u00100\u001a\u00020\u00002\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b0\u00101J\u001d\u00106\u001a\u00020\u00002\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u000204¢\u0006\u0004\b6\u00107J\u001d\u00108\u001a\u00020\u00002\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u000204¢\u0006\u0004\b8\u00107J\u001d\u00109\u001a\u00020\u00002\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u000204¢\u0006\u0004\b9\u00107J\r\u0010:\u001a\u00020\u0004¢\u0006\u0004\b:\u0010;R\"\u0010B\u001a\u00020<8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\t\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\"\u0010I\u001a\u00020C8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR \u0010N\u001a\b\u0012\u0004\u0012\u00020\u00070J8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b:\u0010K\u001a\u0004\bL\u0010MR \u0010P\u001a\b\u0012\u0004\u0012\u00020\u00070J8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001e\u0010K\u001a\u0004\bO\u0010MR\"\u0010\r\u001a\u00020\f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b6\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\"\u0010\u0011\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\"\u0010a\u001a\u00020[8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\"\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\"\u0010\u0014\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010V\u001a\u0004\bb\u0010X\"\u0004\bc\u0010ZR\"\u0010f\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010V\u001a\u0004\bd\u0010X\"\u0004\be\u0010ZR\"\u0010\u0019\u001a\u00020\u00188\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010g\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR$\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b]\u0010l\u001a\u0004\bm\u0010n\"\u0004\bo\u0010pR\"\u0010!\u001a\u00020 8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bm\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR$\u0010}\u001a\u0004\u0018\u00010v8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bw\u0010x\u001a\u0004\by\u0010z\"\u0004\b{\u0010|R(\u0010%\u001a\u0004\u0018\u00010$8\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0004\b~\u0010\u007f\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001\"\u0006\b\u0082\u0001\u0010\u0083\u0001R&\u0010\u0087\u0001\u001a\u00020[8\u0000@\u0000X\u0080\u000e¢\u0006\u0015\n\u0005\b\u0084\u0001\u0010\\\u001a\u0005\b\u0085\u0001\u0010^\"\u0005\b\u0086\u0001\u0010`R*\u0010\u008f\u0001\u001a\u00030\u0088\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u0089\u0001\u0010\u008a\u0001\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u0006\b\u008d\u0001\u0010\u008e\u0001R*\u0010\u0095\u0001\u001a\u0004\u0018\u00010(8\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\bE\u0010\u0090\u0001\u001a\u0006\b\u0091\u0001\u0010\u0092\u0001\"\u0006\b\u0093\u0001\u0010\u0094\u0001R+\u0010\u009c\u0001\u001a\u0004\u0018\u00010*8\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u0096\u0001\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001\"\u0006\b\u009a\u0001\u0010\u009b\u0001R.\u0010¡\u0001\u001a\n\u0012\u0005\u0012\u00030\u009e\u00010\u009d\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0015\n\u0004\bh\u0010K\u001a\u0005\b\u0096\u0001\u0010M\"\u0006\b\u009f\u0001\u0010 \u0001R.\u0010¥\u0001\u001a\n\u0012\u0005\u0012\u00030¢\u00010\u009d\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0015\n\u0004\b>\u0010K\u001a\u0005\b£\u0001\u0010M\"\u0006\b¤\u0001\u0010 \u0001R'\u0010/\u001a\u00020.8\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\br\u0010¦\u0001\u001a\u0006\b§\u0001\u0010¨\u0001\"\u0006\b©\u0001\u0010ª\u0001R)\u0010°\u0001\u001a\u00030«\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\bR\u0010¬\u0001\u001a\u0006\b\u0084\u0001\u0010\u00ad\u0001\"\u0006\b®\u0001\u0010¯\u0001R*\u0010¶\u0001\u001a\u0005\u0018\u00010±\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0005\bb\u0010²\u0001\u001a\u0005\b~\u0010³\u0001\"\u0006\b´\u0001\u0010µ\u0001R(\u0010¼\u0001\u001a\u00030·\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0005\bd\u0010¸\u0001\u001a\u0005\bw\u0010¹\u0001\"\u0006\bº\u0001\u0010»\u0001R*\u0010¾\u0001\u001a\u00030·\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b§\u0001\u0010¸\u0001\u001a\u0006\b\u0089\u0001\u0010¹\u0001\"\u0006\b½\u0001\u0010»\u0001R)\u0010Á\u0001\u001a\u00030·\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\bL\u0010¸\u0001\u001a\u0006\b¿\u0001\u0010¹\u0001\"\u0006\bÀ\u0001\u0010»\u0001R*\u0010Å\u0001\u001a\u00030·\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\bÂ\u0001\u0010¸\u0001\u001a\u0006\bÃ\u0001\u0010¹\u0001\"\u0006\bÄ\u0001\u0010»\u0001R)\u0010È\u0001\u001a\u00030·\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0017\n\u0005\bO\u0010¸\u0001\u001a\u0006\bÆ\u0001\u0010¹\u0001\"\u0006\bÇ\u0001\u0010»\u0001R)\u0010Í\u0001\u001a\u0002028\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\bÆ\u0001\u0010É\u0001\u001a\u0006\bÂ\u0001\u0010Ê\u0001\"\u0006\bË\u0001\u0010Ì\u0001R,\u0010Ô\u0001\u001a\u0005\u0018\u00010Î\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b£\u0001\u0010Ï\u0001\u001a\u0006\bÐ\u0001\u0010Ñ\u0001\"\u0006\bÒ\u0001\u0010Ó\u0001¨\u0006Õ\u0001"}, d2 = {"Lokhttp3/OkHttpClient$Builder;", "", "<init>", "()V", "Lokhttp3/OkHttpClient;", "okHttpClient", "(Lokhttp3/OkHttpClient;)V", "Lokhttp3/Interceptor;", "interceptor", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/EventListener$Factory;", "eventListenerFactory", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;", "", "retryOnConnectionFailure", "Kkkkkkkkkkkkkkk", "(Z)Lokhttp3/OkHttpClient$Builder;", "followRedirects", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "followProtocolRedirects", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/CookieJar;", "cookieJar", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;", "Lokhttp3/Cache;", "cache", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;", "Lokhttp3/Dns;", "dns", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;", "Ljava/net/ProxySelector;", "proxySelector", "Kkkkkkkkkkkkkkkkk", "(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;", "Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactory", "Ljavax/net/ssl/X509TrustManager;", "trustManager", "Illlllllllllllllllllllllll", "(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;", "Ljavax/net/ssl/HostnameVerifier;", "hostnameVerifier", "Kkkkkkkkkkkkkkkkkk", "(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;", "", "timeout", "Ljava/util/concurrent/TimeUnit;", "unit", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;", "Kkkkkkkkkkkkkkkk", "Illllllllllllllllllllllll", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/OkHttpClient;", "Lokhttp3/Dispatcher;", "Lokhttp3/Dispatcher;", "Wwwwwwwwwwwwwww", "()Lokhttp3/Dispatcher;", "setDispatcher$okhttp", "(Lokhttp3/Dispatcher;)V", "dispatcher", "Lokhttp3/ConnectionPool;", "Lokhttp3/ConnectionPool;", "Wwwwwwwwwwwwwwwwww", "()Lokhttp3/ConnectionPool;", "setConnectionPool$okhttp", "(Lokhttp3/ConnectionPool;)V", "connectionPool", "", "Ljava/util/List;", "Wwwwwwwww", "()Ljava/util/List;", "interceptors", "Wwwwwww", "networkInterceptors", "Lokhttp3/EventListener$Factory;", "Wwwwwwwwwwwww", "()Lokhttp3/EventListener$Factory;", "Kkkkkkkkk", "(Lokhttp3/EventListener$Factory;)V", "Z", "Kkkkkkkkkkkkkkkkkkkkkkkk", "()Z", "Kkk", "(Z)V", "Lokhttp3/Authenticator;", "Lokhttp3/Authenticator;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Authenticator;", "setAuthenticator$okhttp", "(Lokhttp3/Authenticator;)V", "authenticator", "Wwwwwwwwwwww", "Kkkkkkkk", "Wwwwwwwwwww", "Kkkkkkk", "followSslRedirects", "Lokhttp3/CookieJar;", "Wwwwwwwwwwwwwwww", "()Lokhttp3/CookieJar;", "Kkkkkkkkkkk", "(Lokhttp3/CookieJar;)V", "Lokhttp3/Cache;", "Wwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Cache;", "Kkkkkkkkkkkkkk", "(Lokhttp3/Cache;)V", "Lokhttp3/Dns;", "Wwwwwwwwwwwwww", "()Lokhttp3/Dns;", "Kkkkkkkkkk", "(Lokhttp3/Dns;)V", "Ljava/net/Proxy;", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/net/Proxy;", "Wwww", "()Ljava/net/Proxy;", "setProxy$okhttp", "(Ljava/net/Proxy;)V", "proxy", "Wwwwwwwwwwwwwwwwwwwww", "Ljava/net/ProxySelector;", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "()Ljava/net/ProxySelector;", "Kkkkk", "(Ljava/net/ProxySelector;)V", "Wwwwwwwwwwwwwwwwwwww", "Www", "setProxyAuthenticator$okhttp", "proxyAuthenticator", "Ljavax/net/SocketFactory;", "Wwwwwwwwwwwwwwwwwww", "Ljavax/net/SocketFactory;", "Kkkkkkkkkkkkkkkkkkkkkk", "()Ljavax/net/SocketFactory;", "setSocketFactory$okhttp", "(Ljavax/net/SocketFactory;)V", "socketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "Kkkkkkkkkkkkkkkkkkkkk", "()Ljavax/net/ssl/SSLSocketFactory;", "Illllllllllllllllllllllllllll", "(Ljavax/net/ssl/SSLSocketFactory;)V", "sslSocketFactoryOrNull", "Wwwwwwwwwwwwwwwww", "Ljavax/net/ssl/X509TrustManager;", "Kkkkkkkkkkkkkkkkkkk", "()Ljavax/net/ssl/X509TrustManager;", "Illllllllllllllllllllllllll", "(Ljavax/net/ssl/X509TrustManager;)V", "x509TrustManagerOrNull", "", "Lokhttp3/ConnectionSpec;", "setConnectionSpecs$okhttp", "(Ljava/util/List;)V", "connectionSpecs", "Lokhttp3/Protocol;", "Wwwww", "setProtocols$okhttp", "protocols", "Ljavax/net/ssl/HostnameVerifier;", "Wwwwwwwwww", "()Ljavax/net/ssl/HostnameVerifier;", "Kkkkkk", "(Ljavax/net/ssl/HostnameVerifier;)V", "Lokhttp3/CertificatePinner;", "Lokhttp3/CertificatePinner;", "()Lokhttp3/CertificatePinner;", "setCertificatePinner$okhttp", "(Lokhttp3/CertificatePinner;)V", "certificatePinner", "Lokhttp3/internal/tls/CertificateChainCleaner;", "Lokhttp3/internal/tls/CertificateChainCleaner;", "()Lokhttp3/internal/tls/CertificateChainCleaner;", "Kkkkkkkkkkkkk", "(Lokhttp3/internal/tls/CertificateChainCleaner;)V", "certificateChainCleaner", "", "I", "()I", "setCallTimeout$okhttp", "(I)V", "callTimeout", "Kkkkkkkkkkkk", "connectTimeout", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "Kkkk", "readTimeout", "Wwwwwwww", "Kkkkkkkkkkkkkkkkkkkk", "Illlllllllllllllllllllllllll", "writeTimeout", "Wwwwww", "setPingInterval$okhttp", "pingInterval", "J", "()J", "setMinWebSocketMessageToCompress$okhttp", "(J)V", "minWebSocketMessageToCompress", "Lokhttp3/internal/connection/RouteDatabase;", "Lokhttp3/internal/connection/RouteDatabase;", "Kkkkkkkkkkkkkkkkkkkkkkk", "()Lokhttp3/internal/connection/RouteDatabase;", "Kk", "(Lokhttp3/internal/connection/RouteDatabase;)V", "routeDatabase", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Builder {
        @Nullable

        /* renamed from: Wwwww  reason: collision with root package name */
        public RouteDatabase f12399Wwwww;

        /* renamed from: Wwwwww  reason: collision with root package name */
        public long f12400Wwwwww;

        /* renamed from: Wwwwwww  reason: collision with root package name */
        public int f12401Wwwwwww;

        /* renamed from: Wwwwwwww  reason: collision with root package name */
        public int f12402Wwwwwwww;

        /* renamed from: Wwwwwwwww  reason: collision with root package name */
        public int f12403Wwwwwwwww;

        /* renamed from: Wwwwwwwwww  reason: collision with root package name */
        public int f12404Wwwwwwwwww;

        /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
        public int f12405Wwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
        public CertificateChainCleaner f12406Wwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
        public CertificatePinner f12407Wwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
        public HostnameVerifier f12408Wwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
        public List<? extends Protocol> f12409Wwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<ConnectionSpec> f12410Wwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
        public X509TrustManager f12411Wwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public SSLSocketFactory f12412Wwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public SocketFactory f12413Wwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Authenticator f12414Wwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ProxySelector f12415Wwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Proxy f12416Wwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Dns f12417Wwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Cache f12418Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public CookieJar f12419Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12420Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12421Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Authenticator f12422Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12423Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public EventListener.Factory f12424Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Interceptor> f12425Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Interceptor> f12426Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ConnectionPool f12427Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Dispatcher f12428Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            this.f12428Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Dispatcher();
            this.f12427Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConnectionPool();
            this.f12426Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f12425Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f12424Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(EventListener.f12301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f12423Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            Authenticator authenticator = Authenticator.f12141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f12422Wwwwwwwwwwwwwwwwwwwwwwwwwwww = authenticator;
            this.f12421Wwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            this.f12420Wwwwwwwwwwwwwwwwwwwwwwwwww = true;
            this.f12419Wwwwwwwwwwwwwwwwwwwwwwwww = CookieJar.f12290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f12417Wwwwwwwwwwwwwwwwwwwwwww = Dns.f12299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f12414Wwwwwwwwwwwwwwwwwwww = authenticator;
            this.f12413Wwwwwwwwwwwwwwwwwww = SocketFactory.getDefault();
            Companion companion = OkHttpClient.Companion;
            this.f12410Wwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12409Wwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12408Wwwwwwwwwwwwww = OkHostnameVerifier.INSTANCE;
            this.f12407Wwwwwwwwwwwww = CertificatePinner.f12200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f12404Wwwwwwwwww = 10000;
            this.f12403Wwwwwwwww = 10000;
            this.f12402Wwwwwwww = 10000;
            this.f12400Wwwwww = 1024L;
        }

        @NotNull
        public final Builder Illllllllllllllllllllllll(long j, @NotNull TimeUnit timeUnit) {
            Illlllllllllllllllllllllllll(Util.Wwwwwwwwwwwwwwwwwwwwwwww("timeout", j, timeUnit));
            return this;
        }

        @NotNull
        public final Builder Illlllllllllllllllllllllll(@NotNull SSLSocketFactory sSLSocketFactory, @NotNull X509TrustManager x509TrustManager) {
            if (!Intrinsics.areEqual(sSLSocketFactory, Kkkkkkkkkkkkkkkkkkkkk()) || !Intrinsics.areEqual(x509TrustManager, Kkkkkkkkkkkkkkkkkkk())) {
                Kk(null);
            }
            Illllllllllllllllllllllllllll(sSLSocketFactory);
            Kkkkkkkkkkkkk(CertificateChainCleaner.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509TrustManager));
            Illllllllllllllllllllllllll(x509TrustManager);
            return this;
        }

        public final void Illllllllllllllllllllllllll(@Nullable X509TrustManager x509TrustManager) {
            this.f12411Wwwwwwwwwwwwwwwww = x509TrustManager;
        }

        public final void Illlllllllllllllllllllllllll(int i) {
            this.f12402Wwwwwwww = i;
        }

        public final void Illllllllllllllllllllllllllll(@Nullable SSLSocketFactory sSLSocketFactory) {
            this.f12412Wwwwwwwwwwwwwwwwww = sSLSocketFactory;
        }

        public final void Kk(@Nullable RouteDatabase routeDatabase) {
            this.f12399Wwwww = routeDatabase;
        }

        public final void Kkk(boolean z) {
            this.f12423Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Kkkk(int i) {
            this.f12403Wwwwwwwww = i;
        }

        public final void Kkkkk(@Nullable ProxySelector proxySelector) {
            this.f12415Wwwwwwwwwwwwwwwwwwwww = proxySelector;
        }

        public final void Kkkkkk(@NotNull HostnameVerifier hostnameVerifier) {
            this.f12408Wwwwwwwwwwwwww = hostnameVerifier;
        }

        public final void Kkkkkkk(boolean z) {
            this.f12420Wwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Kkkkkkkk(boolean z) {
            this.f12421Wwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Kkkkkkkkk(@NotNull EventListener.Factory factory) {
            this.f12424Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = factory;
        }

        public final void Kkkkkkkkkk(@NotNull Dns dns) {
            this.f12417Wwwwwwwwwwwwwwwwwwwwwww = dns;
        }

        public final void Kkkkkkkkkkk(@NotNull CookieJar cookieJar) {
            this.f12419Wwwwwwwwwwwwwwwwwwwwwwwww = cookieJar;
        }

        public final void Kkkkkkkkkkkk(int i) {
            this.f12404Wwwwwwwwww = i;
        }

        public final void Kkkkkkkkkkkkk(@Nullable CertificateChainCleaner certificateChainCleaner) {
            this.f12406Wwwwwwwwwwww = certificateChainCleaner;
        }

        public final void Kkkkkkkkkkkkkk(@Nullable Cache cache) {
            this.f12418Wwwwwwwwwwwwwwwwwwwwwwww = cache;
        }

        @NotNull
        public final Builder Kkkkkkkkkkkkkkk(boolean z) {
            Kkk(z);
            return this;
        }

        @NotNull
        public final Builder Kkkkkkkkkkkkkkkk(long j, @NotNull TimeUnit timeUnit) {
            Kkkk(Util.Wwwwwwwwwwwwwwwwwwwwwwww("timeout", j, timeUnit));
            return this;
        }

        @NotNull
        public final Builder Kkkkkkkkkkkkkkkkk(@NotNull ProxySelector proxySelector) {
            if (!Intrinsics.areEqual(proxySelector, Kkkkkkkkkkkkkkkkkkkkkkkkkk())) {
                Kk(null);
            }
            Kkkkk(proxySelector);
            return this;
        }

        @NotNull
        public final Builder Kkkkkkkkkkkkkkkkkk(@NotNull HostnameVerifier hostnameVerifier) {
            if (!Intrinsics.areEqual(hostnameVerifier, Wwwwwwwwww())) {
                Kk(null);
            }
            Kkkkkk(hostnameVerifier);
            return this;
        }

        @Nullable
        public final X509TrustManager Kkkkkkkkkkkkkkkkkkk() {
            return this.f12411Wwwwwwwwwwwwwwwww;
        }

        public final int Kkkkkkkkkkkkkkkkkkkk() {
            return this.f12402Wwwwwwww;
        }

        @Nullable
        public final SSLSocketFactory Kkkkkkkkkkkkkkkkkkkkk() {
            return this.f12412Wwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final SocketFactory Kkkkkkkkkkkkkkkkkkkkkk() {
            return this.f12413Wwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final RouteDatabase Kkkkkkkkkkkkkkkkkkkkkkk() {
            return this.f12399Wwwww;
        }

        public final boolean Kkkkkkkkkkkkkkkkkkkkkkkk() {
            return this.f12423Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Kkkkkkkkkkkkkkkkkkkkkkkkk() {
            return this.f12403Wwwwwwwww;
        }

        @Nullable
        public final ProxySelector Kkkkkkkkkkkkkkkkkkkkkkkkkk() {
            return this.f12415Wwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Authenticator Www() {
            return this.f12414Wwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Proxy Wwww() {
            return this.f12416Wwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<Protocol> Wwwww() {
            return this.f12409Wwwwwwwwwwwwwww;
        }

        public final int Wwwwww() {
            return this.f12401Wwwwwww;
        }

        @NotNull
        public final List<Interceptor> Wwwwwww() {
            return this.f12425Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final long Wwwwwwww() {
            return this.f12400Wwwwww;
        }

        @NotNull
        public final List<Interceptor> Wwwwwwwww() {
            return this.f12426Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final HostnameVerifier Wwwwwwwwww() {
            return this.f12408Wwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwww() {
            return this.f12420Wwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwww() {
            return this.f12421Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final EventListener.Factory Wwwwwwwwwwwww() {
            return this.f12424Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Dns Wwwwwwwwwwwwww() {
            return this.f12417Wwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Dispatcher Wwwwwwwwwwwwwww() {
            return this.f12428Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final CookieJar Wwwwwwwwwwwwwwww() {
            return this.f12419Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<ConnectionSpec> Wwwwwwwwwwwwwwwww() {
            return this.f12410Wwwwwwwwwwwwwwww;
        }

        @NotNull
        public final ConnectionPool Wwwwwwwwwwwwwwwwww() {
            return this.f12427Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwww() {
            return this.f12404Wwwwwwwwww;
        }

        @NotNull
        public final CertificatePinner Wwwwwwwwwwwwwwwwwwww() {
            return this.f12407Wwwwwwwwwwwww;
        }

        @Nullable
        public final CertificateChainCleaner Wwwwwwwwwwwwwwwwwwwww() {
            return this.f12406Wwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwww() {
            return this.f12405Wwwwwwwwwww;
        }

        @Nullable
        public final Cache Wwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12418Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Authenticator Wwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12422Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            Kkkkkkk(z);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            Kkkkkkkk(z);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull EventListener.Factory factory) {
            Kkkkkkkkk(factory);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Dns dns) {
            if (!Intrinsics.areEqual(dns, Wwwwwwwwwwwwww())) {
                Kk(null);
            }
            Kkkkkkkkkk(dns);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull CookieJar cookieJar) {
            Kkkkkkkkkkk(cookieJar);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull TimeUnit timeUnit) {
            Kkkkkkkkkkkk(Util.Wwwwwwwwwwwwwwwwwwwwwwww("timeout", j, timeUnit));
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Cache cache) {
            Kkkkkkkkkkkkkk(cache);
            return this;
        }

        @NotNull
        public final OkHttpClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new OkHttpClient(this);
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Interceptor interceptor) {
            Wwwwwww().add(interceptor);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Interceptor interceptor) {
            Wwwwwwwww().add(interceptor);
            return this;
        }

        public Builder(@NotNull OkHttpClient okHttpClient) {
            this();
            this.f12428Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwwww();
            this.f12427Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwwwwwww();
            CollectionsKt.addAll(this.f12426Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, okHttpClient.Wwwwwwwwwww());
            CollectionsKt.addAll(this.f12425Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, okHttpClient.Wwwwwwwww());
            this.f12424Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwww();
            this.f12423Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = okHttpClient.Kkkkkkkkkkkkkkkkkkkkkkkkk();
            this.f12422Wwwwwwwwwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12421Wwwwwwwwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwww();
            this.f12420Wwwwwwwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwww();
            this.f12419Wwwwwwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwwwww();
            this.f12418Wwwwwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12417Wwwwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwww();
            this.f12416Wwwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwww();
            this.f12415Wwwwwwwwwwwwwwwwwwwww = okHttpClient.Www();
            this.f12414Wwwwwwwwwwwwwwwwwwww = okHttpClient.Wwww();
            this.f12413Wwwwwwwwwwwwwwwwwww = okHttpClient.Kkkkkkkkkkkkkkkkkkkkkkkk();
            this.f12412Wwwwwwwwwwwwwwwwww = okHttpClient.f12382Wwwwwwwww;
            this.f12411Wwwwwwwwwwwwwwwww = okHttpClient.Kkkkkkkkkkkkkkkkkkkk();
            this.f12410Wwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwwwwww();
            this.f12409Wwwwwwwwwwwwwww = okHttpClient.Wwwwww();
            this.f12408Wwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwww();
            this.f12407Wwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwww();
            this.f12406Wwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12405Wwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12404Wwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwwwwwwww();
            this.f12403Wwwwwwwww = okHttpClient.Kkkkkkkkkkkkkkkkkkkkkkkkkk();
            this.f12402Wwwwwwww = okHttpClient.Kkkkkkkkkkkkkkkkkkkkk();
            this.f12401Wwwwwww = okHttpClient.Wwwwwww();
            this.f12400Wwwwww = okHttpClient.Wwwwwwwwww();
            this.f12399Wwwww = okHttpClient.Wwwwwwwwwwwww();
        }
    }

    public OkHttpClient() {
        this(new Builder());
    }
}
