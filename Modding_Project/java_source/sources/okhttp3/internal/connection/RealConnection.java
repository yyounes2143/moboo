package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import com.google.common.net.HttpHeaders;
import com.tencent.thumbplayer.tcmedia.core.player.TPNativePlayerInitConfig;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.CipherSuite;
import okhttp3.Connection;
import okhttp3.ConnectionSpec;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000î\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\u0018\u0000 \u009f\u00012\u00020\u00012\u00020\u0002:\u0002\u009f\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ7\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J/\u0010\u0014\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J/\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ1\u0010#\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u001fH\u0002¢\u0006\u0004\b%\u0010&J\u001d\u0010*\u001a\u00020)2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00050'H\u0002¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\u00020)2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b,\u0010-J\u001f\u00100\u001a\u00020)2\u0006\u0010\"\u001a\u00020!2\u0006\u0010/\u001a\u00020.H\u0002¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0011H\u0000¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0011H\u0000¢\u0006\u0004\b4\u00103J\u000f\u00105\u001a\u00020\u0011H\u0000¢\u0006\u0004\b5\u00103JE\u00107\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u00106\u001a\u00020)2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b7\u00108J'\u0010<\u001a\u00020)2\u0006\u0010:\u001a\u0002092\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010'H\u0000¢\u0006\u0004\b<\u0010=J\u001f\u0010C\u001a\u00020B2\u0006\u0010?\u001a\u00020>2\u0006\u0010A\u001a\u00020@H\u0000¢\u0006\u0004\bC\u0010DJ\u0017\u0010H\u001a\u00020G2\u0006\u0010F\u001a\u00020EH\u0000¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020\u0005H\u0016¢\u0006\u0004\bJ\u0010KJ\r\u0010L\u001a\u00020\u0011¢\u0006\u0004\bL\u00103J\u000f\u0010N\u001a\u00020MH\u0016¢\u0006\u0004\bN\u0010OJ\u0015\u0010Q\u001a\u00020)2\u0006\u0010P\u001a\u00020)¢\u0006\u0004\bQ\u0010RJ\u0017\u0010U\u001a\u00020\u00112\u0006\u0010T\u001a\u00020SH\u0016¢\u0006\u0004\bU\u0010VJ\u001f\u0010[\u001a\u00020\u00112\u0006\u0010X\u001a\u00020W2\u0006\u0010Z\u001a\u00020YH\u0016¢\u0006\u0004\b[\u0010\\J\u0011\u0010]\u001a\u0004\u0018\u00010.H\u0016¢\u0006\u0004\b]\u0010^J'\u0010b\u001a\u00020\u00112\u0006\u0010?\u001a\u00020>2\u0006\u0010_\u001a\u00020\u00052\u0006\u0010a\u001a\u00020`H\u0000¢\u0006\u0004\bb\u0010cJ!\u0010f\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020d2\b\u0010e\u001a\u0004\u0018\u00010`H\u0000¢\u0006\u0004\bf\u0010gJ\u000f\u0010i\u001a\u00020hH\u0016¢\u0006\u0004\bi\u0010jJ\u000f\u0010l\u001a\u00020kH\u0016¢\u0006\u0004\bl\u0010mR\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b[\u0010n\u001a\u0004\bo\u0010pR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010qR\u0018\u0010t\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0018\u0010u\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010sR\u0018\u0010/\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010vR\u0018\u0010x\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u0010wR\u0018\u0010z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010yR\u0018\u0010}\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010|R\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u007fR(\u0010\u0086\u0001\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0012\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0018\u0010\u0087\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b#\u0010\u0081\u0001R'\u0010\u008c\u0001\u001a\u00020\t8\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0005\b%\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001\"\u0005\b\u008b\u0001\u0010\u001cR\u0018\u0010\u008d\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0019\u0010\u0088\u0001R\u0019\u0010\u008f\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u0088\u0001R\u0019\u0010\u0091\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0088\u0001R*\u0010\u0096\u0001\u001a\u0010\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020d0\u0093\u00010\u0092\u00018\u0006¢\u0006\u0010\n\u0006\b\u0082\u0001\u0010\u0094\u0001\u001a\u0006\b\u008e\u0001\u0010\u0095\u0001R*\u0010\u009c\u0001\u001a\u00030\u0097\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u0089\u0001\u0010\u0098\u0001\u001a\u0006\b\u0090\u0001\u0010\u0099\u0001\"\u0006\b\u009a\u0001\u0010\u009b\u0001R\u0017\u0010\u009e\u0001\u001a\u00020)8@X\u0080\u0004¢\u0006\b\u001a\u0006\b\u009d\u0001\u0010\u0083\u0001¨\u0006 \u0001"}, d2 = {"Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/internal/http2/Http2Connection$Listener;", "Lokhttp3/Connection;", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionPool", "Lokhttp3/Route;", "route", "<init>", "(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V", "", "connectTimeout", "readTimeout", "writeTimeout", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/EventListener;", "eventListener", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(IIILokhttp3/Call;Lokhttp3/EventListener;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(IILokhttp3/Call;Lokhttp3/EventListener;)V", "Lokhttp3/internal/connection/ConnectionSpecSelector;", "connectionSpecSelector", "pingIntervalMillis", "Wwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/Call;Lokhttp3/EventListener;)V", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "(I)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/connection/ConnectionSpecSelector;)V", "Lokhttp3/Request;", "tunnelRequest", "Lokhttp3/HttpUrl;", "url", "Wwwwwwwwwwwwwwwwwwwwwww", "(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;", "Wwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Request;", "", "candidates", "", "Wwwwww", "(Ljava/util/List;)Z", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "(Lokhttp3/HttpUrl;)Z", "Lokhttp3/Handshake;", "handshake", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;Lokhttp3/Handshake;)Z", "Wwwwwwww", "()V", "Wwwwwwwww", "Wwwwwwwwwwwwwww", "connectionRetryEnabled", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V", "Lokhttp3/Address;", "address", "routes", "Wwwwwwwwwwwwww", "(Lokhttp3/Address;Ljava/util/List;)Z", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/internal/http/RealInterceptorChain;", "chain", "Lokhttp3/internal/http/ExchangeCodec;", "Wwwwwwwwwww", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/ExchangeCodec;", "Lokhttp3/internal/connection/Exchange;", "exchange", "Lokhttp3/internal/ws/RealWebSocket$Streams;", "Wwwwwwwwww", "(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/ws/RealWebSocket$Streams;", "Wwwwwww", "()Lokhttp3/Route;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/net/Socket;", "Www", "()Ljava/net/Socket;", "doExtensiveChecks", "Wwwwwwwwwwwww", "(Z)Z", "Lokhttp3/internal/http2/Http2Stream;", "stream", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/Http2Stream;)V", "Lokhttp3/internal/http2/Http2Connection;", "connection", "Lokhttp3/internal/http2/Settings;", "settings", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V", "Wwwwwwwwwwwwwwww", "()Lokhttp3/Handshake;", "failedRoute", "Ljava/io/IOException;", "failure", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V", "Lokhttp3/internal/connection/RealCall;", "e", "Kkkkkkkkkkkkkkkkkkkkkkkk", "(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V", "Lokhttp3/Protocol;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Protocol;", "", "toString", "()Ljava/lang/String;", "Lokhttp3/internal/connection/RealConnectionPool;", "getConnectionPool", "()Lokhttp3/internal/connection/RealConnectionPool;", "Lokhttp3/Route;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/net/Socket;", "rawSocket", "socket", "Lokhttp3/Handshake;", "Lokhttp3/Protocol;", "protocol", "Lokhttp3/internal/http2/Http2Connection;", "http2Connection", "Lokio/BufferedSource;", "Lokio/BufferedSource;", "source", "Lokio/BufferedSink;", "Lokio/BufferedSink;", "sink", "Z", "Wwwwwwwwwwwwwwwwww", "()Z", "Wwww", "(Z)V", "noNewExchanges", "noCoalescedConnections", "I", "Wwwwwwwwwwwwwwwww", "()I", "setRouteFailureCount$okhttp", "routeFailureCount", "successCount", "Wwwwwwwwwwwwwwwwwwww", "refusedStreamCount", "Wwwwwwwwwwwwwwwwwww", "allocationLimit", "", "Ljava/lang/ref/Reference;", "Ljava/util/List;", "()Ljava/util/List;", "calls", "", "J", "()J", "Wwwww", "(J)V", "idleAtNs", "Wwwwwwwwwwww", "isMultiplexed", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class RealConnection extends Http2Connection.Listener implements Connection {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12678Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12679Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12680Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12681Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12682Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public BufferedSink f12683Wwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public BufferedSource f12684Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Http2Connection f12685Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Protocol f12686Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Handshake f12687Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Socket f12688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Socket f12689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Route f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealConnectionPool f12691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12677Wwwwwwwwwwwwwwwwwww = 1;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Reference<RealCall>> f12676Wwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f12675Wwwwwwwwwwwwwwwww = Long.MAX_VALUE;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lokhttp3/internal/connection/RealConnection$Companion;", "", "<init>", "()V", "", "IDLE_CONNECTION_HEALTHY_NS", "J", "", "MAX_TUNNEL_ATTEMPTS", "I", "", "NPE_THROW_WITH_NULL", "Ljava/lang/String;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            iArr[Proxy.Type.HTTP.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public RealConnection(@NotNull RealConnectionPool realConnectionPool, @NotNull Route route) {
        this.f12691Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = realConnectionPool;
        this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = route;
    }

    public final synchronized void Kkkkkkkkkkkkkkkkkkkkkkkk(@NotNull RealCall realCall, @Nullable IOException iOException) {
        try {
            if (iOException instanceof StreamResetException) {
                if (((StreamResetException) iOException).errorCode == ErrorCode.REFUSED_STREAM) {
                    int i = this.f12678Wwwwwwwwwwwwwwwwwwww + 1;
                    this.f12678Wwwwwwwwwwwwwwwwwwww = i;
                    if (i > 1) {
                        this.f12682Wwwwwwwwwwwwwwwwwwwwwwww = true;
                        this.f12680Wwwwwwwwwwwwwwwwwwwwww++;
                    }
                } else if (((StreamResetException) iOException).errorCode != ErrorCode.CANCEL || !realCall.isCanceled()) {
                    this.f12682Wwwwwwwwwwwwwwwwwwwwwwww = true;
                    this.f12680Wwwwwwwwwwwwwwwwwwwwww++;
                }
            } else if (!Wwwwwwwwwwww() || (iOException instanceof ConnectionShutdownException)) {
                this.f12682Wwwwwwwwwwwwwwwwwwwwwwww = true;
                if (this.f12679Wwwwwwwwwwwwwwwwwwwww == 0) {
                    if (iOException != null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww(realCall.Wwwwwwwwwwwwwwwwwwwwwww(), this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, iOException);
                    }
                    this.f12680Wwwwwwwwwwwwwwwwwwwwww++;
                }
            }
        } finally {
        }
    }

    public final boolean Kkkkkkkkkkkkkkkkkkkkkkkkk(HttpUrl httpUrl) {
        Handshake handshake;
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        HttpUrl Wwwwwwwwwwwwwwwwwwwwwww2 = this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww();
        if (httpUrl.Wwwwwwwwwwwwwwwwwwwww() != Wwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww()) {
            return false;
        }
        if (Intrinsics.areEqual(httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww())) {
            return true;
        }
        if (this.f12681Wwwwwwwwwwwwwwwwwwwwwww || (handshake = this.f12687Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) == null || !Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpUrl, handshake)) {
            return false;
        }
        return true;
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkkkkk(int i) throws IOException {
        Socket socket = this.f12688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        BufferedSource bufferedSource = this.f12684Wwwwwwwwwwwwwwwwwwwwwwwwww;
        BufferedSink bufferedSink = this.f12683Wwwwwwwwwwwwwwwwwwwwwwwww;
        socket.setSoTimeout(0);
        Http2Connection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Http2Connection.Builder(true, TaskRunner.INSTANCE).Wwwwwwwwwwwwwwww(socket, this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(), bufferedSource, bufferedSink).Wwwwwwwwwwwwwwwwwwwwwwww(this).Wwwwwwwwwwwwwwwwwwwwwww(i).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12685Wwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f12677Wwwwwwwwwwwwwwwwwww = Http2Connection.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Http2Connection.Illlll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, false, null, 3, null);
    }

    @NotNull
    public Socket Www() {
        return this.f12688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwww(boolean z) {
        this.f12682Wwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final void Wwwww(long j) {
        this.f12675Wwwwwwwwwwwwwwwww = j;
    }

    public final boolean Wwwwww(List<Route> list) {
        List<Route> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        for (Route route : list2) {
            Proxy.Type type = route.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().type();
            Proxy.Type type2 = Proxy.Type.DIRECT;
            if (type == type2 && this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().type() == type2 && Intrinsics.areEqual(this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), route.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public Route Wwwwwww() {
        return this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final synchronized void Wwwwwwww() {
        this.f12682Wwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public final synchronized void Wwwwwwwww() {
        this.f12681Wwwwwwwwwwwwwwwwwwwwwww = true;
    }

    @NotNull
    public final RealWebSocket.Streams Wwwwwwwwww(@NotNull final Exchange exchange) throws SocketException {
        Socket socket = this.f12688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        final BufferedSource bufferedSource = this.f12684Wwwwwwwwwwwwwwwwwwwwwwwwww;
        final BufferedSink bufferedSink = this.f12683Wwwwwwwwwwwwwwwwwwwwwwwww;
        socket.setSoTimeout(0);
        Wwwwwwww();
        return new RealWebSocket.Streams(bufferedSink, exchange) { // from class: okhttp3.internal.connection.RealConnection$newWebSocketStreams$1

            /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Exchange f12692Wwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ BufferedSink f12693Wwwwwwwwwwwwwwwwwwwww;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(true, BufferedSource.this, bufferedSink);
                this.f12693Wwwwwwwwwwwwwwwwwwwww = bufferedSink;
                this.f12692Wwwwwwwwwwwwwwwwwwww = exchange;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                this.f12692Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(-1L, true, true, null);
            }
        };
    }

    @NotNull
    public final ExchangeCodec Wwwwwwwwwww(@NotNull OkHttpClient okHttpClient, @NotNull RealInterceptorChain realInterceptorChain) throws SocketException {
        Socket socket = this.f12688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        BufferedSource bufferedSource = this.f12684Wwwwwwwwwwwwwwwwwwwwwwwwww;
        BufferedSink bufferedSink = this.f12683Wwwwwwwwwwwwwwwwwwwwwwwww;
        Http2Connection http2Connection = this.f12685Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (http2Connection != null) {
            return new Http2ExchangeCodec(okHttpClient, this, realInterceptorChain, http2Connection);
        }
        socket.setSoTimeout(realInterceptorChain.Wwwwwwwwwwwwwwwwwwwwwww());
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        bufferedSource.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwww(realInterceptorChain.Wwwwwwwwwwwwwwwwwwwwwwwwww(), timeUnit);
        bufferedSink.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwww(realInterceptorChain.Wwwwwwwwwwwwwwwwwwwwwwww(), timeUnit);
        return new Http1ExchangeCodec(okHttpClient, this, bufferedSource, bufferedSink);
    }

    public final boolean Wwwwwwwwwwww() {
        if (this.f12685Wwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwww(boolean z) {
        long Wwwwwwwwwwwwwwwwwww2;
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        long nanoTime = System.nanoTime();
        Socket socket = this.f12689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Socket socket2 = this.f12688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        BufferedSource bufferedSource = this.f12684Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (!socket.isClosed() && !socket2.isClosed() && !socket2.isInputShutdown() && !socket2.isOutputShutdown()) {
            Http2Connection http2Connection = this.f12685Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (http2Connection != null) {
                return http2Connection.Illllllllllllllllllll(nanoTime);
            }
            synchronized (this) {
                Wwwwwwwwwwwwwwwwwww2 = nanoTime - Wwwwwwwwwwwwwwwwwww();
            }
            if (Wwwwwwwwwwwwwwwwwww2 >= 10000000000L && z) {
                return Util.Kkkkkkkkkkkkkkkkkkkkkkkkkk(socket2, bufferedSource);
            }
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwww(@NotNull Address address, @Nullable List<Route> list) {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        } else if (this.f12676Wwwwwwwwwwwwwwwwww.size() >= this.f12677Wwwwwwwwwwwwwwwwwww || this.f12682Wwwwwwwwwwwwwwwwwwwwwwww || !this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(address)) {
            return false;
        } else {
            if (Intrinsics.areEqual(address.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww())) {
                return true;
            }
            if (this.f12685Wwwwwwwwwwwwwwwwwwwwwwwwwww == null || list == null || !Wwwwww(list) || address.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != OkHostnameVerifier.INSTANCE || !Kkkkkkkkkkkkkkkkkkkkkkkkk(address.Wwwwwwwwwwwwwwwwwwwwwww())) {
                return false;
            }
            try {
                address.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(address.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                return true;
            } catch (SSLPeerUnverifiedException unused) {
                return false;
            }
        }
    }

    public final synchronized void Wwwwwwwwwwwwwww() {
        this.f12679Wwwwwwwwwwwwwwwwwwwww++;
    }

    @Nullable
    public Handshake Wwwwwwwwwwwwwwww() {
        return this.f12687Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwww() {
        return this.f12680Wwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwww() {
        return this.f12682Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwww() {
        return this.f12675Wwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<Reference<RealCall>> Wwwwwwwwwwwwwwwwwwww() {
        return this.f12676Wwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(ConnectionSpecSelector connectionSpecSelector, int i, Call call, EventListener eventListener) throws IOException {
        if (this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww() == null) {
            List<Protocol> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contains(protocol)) {
                this.f12688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f12689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                this.f12686Wwwwwwwwwwwwwwwwwwwwwwwwwwww = protocol;
                Kkkkkkkkkkkkkkkkkkkkkkkkkk(i);
                return;
            }
            this.f12688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f12689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f12686Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Protocol.HTTP_1_1;
            return;
        }
        eventListener.Wwwwww(call);
        Wwwwwwwwwwwwwwwwwwwwwwwww(connectionSpecSelector);
        eventListener.Wwwwwww(call, this.f12687Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (this.f12686Wwwwwwwwwwwwwwwwwwwwwwwwwwww == Protocol.HTTP_2) {
            Kkkkkkkkkkkkkkkkkkkkkkkkkk(i);
        }
    }

    public final Request Wwwwwwwwwwwwwwwwwwwwww() throws IOException {
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Request.Builder().Wwwwwwwwwwwwwwww(this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwww("CONNECT", null).Wwwwwwwwwwwwwwwwwwwwwwwwwwww("Host", Util.Kkkkkkkkkkkkk(this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(), true)).Wwwwwwwwwwwwwwwwwwwwwwwwwwww("Proxy-Connection", HttpHeaders.KEEP_ALIVE).Wwwwwwwwwwwwwwwwwwwwwwwwwwww("User-Agent", "okhttp/4.11.0").Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new Response.Builder().Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwww(Protocol.HTTP_1_1).Wwwwwwwwwwwwwwwwwwwwwwwwwwww(TPNativePlayerInitConfig.BOOL_ENABLE_COLOR_MANAGEMENT).Wwwwwwwwwwwwwwwwwwwww("Preemptive Authenticate").Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Util.f12493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwww(-1L).Wwwwwwwwwwwwwwwww(-1L).Wwwwwwwwwwwwwwwwwwwwwwww("Proxy-Authenticate", "OkHttp-Preemptive").Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final Request Wwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Request request, HttpUrl httpUrl) throws IOException {
        String str = "CONNECT " + Util.Kkkkkkkkkkkkk(httpUrl, true) + " HTTP/1.1";
        while (true) {
            BufferedSource bufferedSource = this.f12684Wwwwwwwwwwwwwwwwwwwwwwwwww;
            BufferedSink bufferedSink = this.f12683Wwwwwwwwwwwwwwwwwwwwwwwww;
            Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, bufferedSource, bufferedSink);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            bufferedSource.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwww(i, timeUnit);
            bufferedSink.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwww(i2, timeUnit);
            http1ExchangeCodec.Wwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), str);
            http1ExchangeCodec.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = http1ExchangeCodec.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(false).Wwwwwwwwwwwwwwww(request).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            http1ExchangeCodec.Wwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            int Kkkkkkkkkkkkkkkkkkkkkk2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkk();
            if (Kkkkkkkkkkkkkkkkkkkkkk2 != 200) {
                if (Kkkkkkkkkkkkkkkkkkkkkk2 == 407) {
                    Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        if (StringsKt.equals("close", Response.Kkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "Connection", null, 2, null), true)) {
                            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        }
                        request = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    } else {
                        throw new IOException("Failed to authenticate with proxy");
                    }
                } else {
                    throw new IOException(Intrinsics.stringPlus("Unexpected response code for CONNECT: ", Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkk())));
                }
            } else if (bufferedSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwww() && bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwww()) {
                return null;
            } else {
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3, Call call, EventListener eventListener) throws IOException {
        Request Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww();
        HttpUrl Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww();
        int i4 = 0;
        while (i4 < 21) {
            i4++;
            Wwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, call, eventListener);
            Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww(i2, i3, Wwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwww2);
            if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
                Socket socket = this.f12689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (socket != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwww(socket);
                }
                this.f12689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                this.f12683Wwwwwwwwwwwwwwwwwwwwwwwww = null;
                this.f12684Wwwwwwwwwwwwwwwwwwwwwwwwww = null;
                eventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwww(call, this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null);
            } else {
                return;
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(ConnectionSpecSelector connectionSpecSelector) throws IOException {
        Protocol protocol;
        final Address Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        SSLSocket sSLSocket = null;
        String str = null;
        try {
            Socket createSocket = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww().createSocket(this.f12689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww(), true);
            if (createSocket != null) {
                SSLSocket sSLSocket2 = (SSLSocket) createSocket;
                try {
                    ConnectionSpec Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = connectionSpecSelector.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket2);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    }
                    sSLSocket2.startHandshake();
                    SSLSession session = sSLSocket2.getSession();
                    final Handshake Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Handshake.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(session);
                    if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().verify(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(), session)) {
                        List<Certificate> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                            X509Certificate x509Certificate = (X509Certificate) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(0);
                            throw new SSLPeerUnverifiedException(StringsKt.trimMargin$default("\n              |Hostname " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww() + " not verified:\n              |    certificate: " + CertificatePinner.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509Certificate) + "\n              |    DN: " + ((Object) x509Certificate.getSubjectDN().getName()) + "\n              |    subjectAltNames: " + OkHostnameVerifier.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509Certificate) + "\n              ", null, 1, null));
                        }
                        throw new SSLPeerUnverifiedException("Hostname " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww() + " not verified (no certificates)");
                    }
                    final CertificatePinner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    this.f12687Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handshake(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), new Function0<List<? extends Certificate>>() { // from class: okhttp3.internal.connection.RealConnection$connectTls$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        @NotNull
                        public final List<? extends Certificate> invoke() {
                            return CertificatePinner.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww());
                        }
                    });
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(), new Function0<List<? extends X509Certificate>>() { // from class: okhttp3.internal.connection.RealConnection$connectTls$2
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        @NotNull
                        public final List<? extends X509Certificate> invoke() {
                            Handshake handshake;
                            handshake = RealConnection.this.f12687Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            List<Certificate> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = handshake.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, 10));
                            for (Certificate certificate : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                                arrayList.add((X509Certificate) certificate);
                            }
                            return arrayList;
                        }
                    });
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        str = Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket2);
                    }
                    this.f12688Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sSLSocket2;
                    this.f12684Wwwwwwwwwwwwwwwwwwwwwwwwww = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Okio.Wwwwwwwwwwwwwwwwwwwwwww(sSLSocket2));
                    this.f12683Wwwwwwwwwwwwwwwwwwwwwwwww = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket2));
                    if (str != null) {
                        protocol = Protocol.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                    } else {
                        protocol = Protocol.HTTP_1_1;
                    }
                    this.f12686Wwwwwwwwwwwwwwwwwwwwwwwwwwww = protocol;
                    Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket2);
                    return;
                } catch (Throwable th) {
                    th = th;
                    sSLSocket = sSLSocket2;
                    if (sSLSocket != null) {
                        Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket);
                    }
                    if (sSLSocket != null) {
                        Util.Wwwwwwwwwwwwwwwwwwwww(sSLSocket);
                    }
                    throw th;
                }
            }
            throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.SSLSocket");
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Call call, EventListener eventListener) throws IOException {
        int i3;
        Socket createSocket;
        Proxy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Address Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Proxy.Type type = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.type();
        if (type == null) {
            i3 = -1;
        } else {
            i3 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i3 != 1 && i3 != 2) {
            createSocket = new Socket(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } else {
            createSocket = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwww().createSocket();
        }
        this.f12689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = createSocket;
        eventListener.Wwwwwwwwwwwwwwwwwwwwwwwww(call, this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        createSocket.setSoTimeout(i2);
        try {
            Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(createSocket, this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), i);
            try {
                this.f12684Wwwwwwwwwwwwwwwwwwwwwwwwww = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Okio.Wwwwwwwwwwwwwwwwwwwwwww(createSocket));
                this.f12683Wwwwwwwwwwwwwwwwwwwwwwwww = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwww(createSocket));
            } catch (NullPointerException e) {
                if (!Intrinsics.areEqual(e.getMessage(), "throw with null exception")) {
                    return;
                }
                throw new IOException(e);
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException(Intrinsics.stringPlus("Failed to connect to ", this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            connectException.initCause(e2);
            throw connectException;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull OkHttpClient okHttpClient, @NotNull Route route, @NotNull IOException iOException) {
        if (route.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().type() != Proxy.Type.DIRECT) {
            Address Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = route.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww().connectFailed(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww(), route.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().address(), iOException);
        }
        okHttpClient.Wwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(route);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ac A[Catch: IOException -> 0x00a2, TRY_LEAVE, TryCatch #2 {IOException -> 0x00a2, blocks: (B:23:0x009a, B:32:0x00ac), top: B:73:0x009a }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013b A[EDGE_INSN: B:78:0x013b->B:64:0x013b ?: BREAK  ] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int r13, int r14, int r15, int r16, boolean r17, @org.jetbrains.annotations.NotNull okhttp3.Call r18, @org.jetbrains.annotations.NotNull okhttp3.EventListener r19) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int, int, int, int, boolean, okhttp3.Call, okhttp3.EventListener):void");
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl httpUrl, Handshake handshake) {
        List<Certificate> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = handshake.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty() || !OkHostnameVerifier.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww(), (X509Certificate) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(0))) {
            return false;
        }
        return true;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Socket socket = this.f12689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (socket == null) {
            return;
        }
        Util.Wwwwwwwwwwwwwwwwwwwww(socket);
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Http2Stream http2Stream) throws IOException {
        http2Stream.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ErrorCode.REFUSED_STREAM, null);
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Http2Connection http2Connection, @NotNull Settings settings) {
        this.f12677Wwwwwwwwwwwwwwwwwww = settings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okhttp3.Connection
    @NotNull
    public Protocol Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12686Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public String toString() {
        CipherSuite Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww());
        sb.append(AbstractJsonLexerKt.COLON);
        sb.append(this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww());
        sb.append(", proxy=");
        sb.append(this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        sb.append(" hostAddress=");
        sb.append(this.f12690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        sb.append(" cipherSuite=");
        Handshake handshake = this.f12687Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Object obj = "none";
        if (handshake != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = handshake.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
            obj = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        sb.append(obj);
        sb.append(" protocol=");
        sb.append(this.f12686Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }
}
