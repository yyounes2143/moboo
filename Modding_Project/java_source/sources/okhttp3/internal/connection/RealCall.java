package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.CertificatePinner;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;
import okio.AsyncTimeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u009f\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013*\u0001W\u0018\u00002\u00020\u0001:\u0002rsB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0010\u001a\u00028\u0000\"\n\b\u0000\u0010\u000e*\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0013\u001a\u00028\u0000\"\n\b\u0000\u0010\u000e*\u0004\u0018\u00010\r2\u0006\u0010\u0012\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0013\u0010\u0011J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\nH\u0016¢\u0006\u0004\b \u0010\fJ\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\n2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020#H\u0000¢\u0006\u0004\b*\u0010%J\u001d\u0010-\u001a\u00020\n2\u0006\u0010+\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0006¢\u0006\u0004\b-\u0010.J\u0017\u00102\u001a\u0002012\u0006\u00100\u001a\u00020/H\u0000¢\u0006\u0004\b2\u00103J\u0015\u00106\u001a\u00020\n2\u0006\u00105\u001a\u000204¢\u0006\u0004\b6\u00107J;\u0010;\u001a\u00028\u0000\"\n\b\u0000\u0010\u000e*\u0004\u0018\u00010\r2\u0006\u00108\u001a\u0002012\u0006\u00109\u001a\u00020\u00062\u0006\u0010:\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00028\u0000H\u0000¢\u0006\u0004\b;\u0010<J\u001b\u0010=\u001a\u0004\u0018\u00010\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\rH\u0000¢\u0006\u0004\b=\u0010\u0011J\u0011\u0010?\u001a\u0004\u0018\u00010>H\u0000¢\u0006\u0004\b?\u0010@J\r\u0010A\u001a\u00020\n¢\u0006\u0004\bA\u0010\fJ\u0017\u0010C\u001a\u00020\n2\u0006\u0010B\u001a\u00020\u0006H\u0000¢\u0006\u0004\bC\u0010DJ\r\u0010E\u001a\u00020\u0006¢\u0006\u0004\bE\u0010\"J\u000f\u0010F\u001a\u00020\u0019H\u0000¢\u0006\u0004\bF\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b-\u0010G\u001a\u0004\bH\u0010IR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\bC\u0010J\u001a\u0004\bK\u0010\u001fR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\bH\u0010L\u001a\u0004\bM\u0010\"R\u0014\u0010Q\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010PR\u001a\u0010V\u001a\u00020R8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bS\u0010UR\u0014\u0010Y\u001a\u00020W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010XR\u0014\u0010]\u001a\u00020Z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010\\R\u0018\u0010`\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010_R\u0018\u0010c\u001a\u0004\u0018\u00010a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010bR(\u00105\u001a\u0004\u0018\u0001042\b\u0010d\u001a\u0004\u0018\u0001048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b2\u0010e\u001a\u0004\bO\u0010fR\u0016\u0010g\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010LR(\u0010j\u001a\u0004\u0018\u0001012\b\u0010d\u001a\u0004\u0018\u0001018\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b(\u0010h\u001a\u0004\b[\u0010iR\u0016\u0010k\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010LR\u0016\u0010l\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010LR\u0016\u0010m\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010LR\u0016\u0010n\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010LR\u0018\u00108\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010hR$\u0010q\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010e\u001a\u0004\bp\u0010f\"\u0004\bo\u00107¨\u0006t"}, d2 = {"Lokhttp3/internal/connection/RealCall;", "Lokhttp3/Call;", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/Request;", "originalRequest", "", "forWebSocket", "<init>", "(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Ljava/io/IOException;", ExifInterface.LONGITUDE_EAST, "e", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/IOException;)Ljava/io/IOException;", "cause", "Wwwwwww", "Lokhttp3/HttpUrl;", "url", "Lokhttp3/Address;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;)Lokhttp3/Address;", "", "Wwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/connection/RealCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Request;", "cancel", "isCanceled", "()Z", "Lokhttp3/Response;", "execute", "()Lokhttp3/Response;", "Lokhttp3/Callback;", "responseCallback", "Wwwwwwwwwwwwww", "(Lokhttp3/Callback;)V", "Wwwwwwwwwwwwwwwww", AdActivity.REQUEST_KEY_EXTRA, "newExchangeFinder", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Z)V", "Lokhttp3/internal/http/RealInterceptorChain;", "chain", "Lokhttp3/internal/connection/Exchange;", "Wwwwwwwwwwwwwwww", "(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/connection/Exchange;", "Lokhttp3/internal/connection/RealConnection;", "connection", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/connection/RealConnection;)V", "exchange", "requestDone", "responseDone", "Wwwwwwwwwwwwwww", "(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;", "Wwwwwwwwwwwww", "Ljava/net/Socket;", "Wwwwwwwwwww", "()Ljava/net/Socket;", "Wwwwwwww", "closeExchange", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "Wwwwwwwwww", "Wwwwwwwwwwww", "Lokhttp3/OkHttpClient;", "Wwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/OkHttpClient;", "Lokhttp3/Request;", "Wwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/connection/RealConnectionPool;", "Wwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionPool", "Lokhttp3/EventListener;", "Wwwwwwwwwwwwwwwwwwwww", "Lokhttp3/EventListener;", "()Lokhttp3/EventListener;", "eventListener", "okhttp3/internal/connection/RealCall$timeout$1", "Lokhttp3/internal/connection/RealCall$timeout$1;", "timeout", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "executed", "", "Ljava/lang/Object;", "callStackTrace", "Lokhttp3/internal/connection/ExchangeFinder;", "Lokhttp3/internal/connection/ExchangeFinder;", "exchangeFinder", "<set-?>", "Lokhttp3/internal/connection/RealConnection;", "()Lokhttp3/internal/connection/RealConnection;", "timeoutEarlyExit", "Lokhttp3/internal/connection/Exchange;", "()Lokhttp3/internal/connection/Exchange;", "interceptorScopedExchange", "requestBodyOpen", "responseBodyOpen", "expectMoreExchanges", "canceled", "Wwwwwwwww", "getConnectionToCancel", "connectionToCancel", "AsyncCall", "CallReference", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class RealCall implements Call {
    @Nullable

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public volatile RealConnection f12652Wwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public volatile Exchange f12653Wwwwwwwww;

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public volatile boolean f12654Wwwwwwwwww;

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public boolean f12655Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public boolean f12656Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12657Wwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public Exchange f12658Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12659Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public RealConnection f12660Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ExchangeFinder f12661Wwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Object f12662Wwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicBoolean f12663Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealCall$timeout$1 f12664Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EventListener f12665Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealConnectionPool f12666Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12667Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Request f12668Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final OkHttpClient f12669Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0080\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\n\u0010\u0007\u001a\u00060\u0000R\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R$\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00138\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u001d\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010 \u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lokhttp3/internal/connection/RealCall$AsyncCall;", "Ljava/lang/Runnable;", "Lokhttp3/Callback;", "responseCallback", "<init>", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/Callback;)V", "Lokhttp3/internal/connection/RealCall;", "other", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/connection/RealCall$AsyncCall;)V", "Ljava/util/concurrent/ExecutorService;", "executorService", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/concurrent/ExecutorService;)V", "run", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Callback;", "Ljava/util/concurrent/atomic/AtomicInteger;", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicInteger;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/atomic/AtomicInteger;", "callsPerHost", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "host", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class AsyncCall implements Runnable {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile AtomicInteger f12671Wwwwwwwwwwwwwwwwwwwwwwww = new AtomicInteger(0);
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Callback f12672Wwwwwwwwwwwwwwwwwwwwwwwww;

        public AsyncCall(@NotNull Callback callback) {
            this.f12672Wwwwwwwwwwwwwwwwwwwwwwwww = callback;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AsyncCall asyncCall) {
            this.f12671Wwwwwwwwwwwwwwwwwwwwwwww = asyncCall.f12671Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return RealCall.this.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @NotNull
        public final AtomicInteger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12671Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final RealCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return RealCall.this;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ExecutorService executorService) {
            Dispatcher Wwwwwwwwwwwwwwwwwww2 = RealCall.this.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwww();
            if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(Wwwwwwwwwwwwwwwwwww2)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + Wwwwwwwwwwwwwwwwwww2);
            }
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e);
                    RealCall.this.Wwwwwwwwwwwww(interruptedIOException);
                    this.f12672Wwwwwwwwwwwwwwwwwwwwwwwww.onFailure(RealCall.this, interruptedIOException);
                    RealCall.this.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                }
            } catch (Throwable th) {
                RealCall.this.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                throw th;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            Throwable th;
            IOException e;
            Dispatcher Wwwwwwwwwwwwwwwwwww2;
            String stringPlus = Intrinsics.stringPlus("OkHttp ", RealCall.this.Wwwwwwwwwwww());
            RealCall realCall = RealCall.this;
            Thread currentThread = Thread.currentThread();
            String name = currentThread.getName();
            currentThread.setName(stringPlus);
            try {
                realCall.f12664Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwww();
                try {
                    z = true;
                    try {
                        this.f12672Wwwwwwwwwwwwwwwwwwwwwwwww.onResponse(realCall, realCall.Wwwwwwwwwwwwwwwww());
                        Wwwwwwwwwwwwwwwwwww2 = realCall.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwww();
                    } catch (IOException e2) {
                        e = e2;
                        if (z) {
                            Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus("Callback failure for ", realCall.Wwwwww()), 4, e);
                        } else {
                            this.f12672Wwwwwwwwwwwwwwwwwwwwwwwww.onFailure(realCall, e);
                        }
                        Wwwwwwwwwwwwwwwwwww2 = realCall.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwww();
                        Wwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                    } catch (Throwable th2) {
                        th = th2;
                        realCall.cancel();
                        if (!z) {
                            IOException iOException = new IOException(Intrinsics.stringPlus("canceled due to ", th));
                            ExceptionsKt.addSuppressed(iOException, th);
                            this.f12672Wwwwwwwwwwwwwwwwwwwwwwwww.onFailure(realCall, iOException);
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    z = false;
                    e = e3;
                } catch (Throwable th3) {
                    z = false;
                    th = th3;
                }
                Wwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            } finally {
                currentThread.setName(name);
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\n¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/connection/RealCall$CallReference;", "Ljava/lang/ref/WeakReference;", "Lokhttp3/internal/connection/RealCall;", "referent", "", "callStackTrace", "<init>", "(Lokhttp3/internal/connection/RealCall;Ljava/lang/Object;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "()Ljava/lang/Object;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class CallReference extends WeakReference<RealCall> {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f12673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public CallReference(@NotNull RealCall realCall, @Nullable Object obj) {
            super(realCall);
            this.f12673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        }

        @Nullable
        public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [okio.Timeout, okhttp3.internal.connection.RealCall$timeout$1] */
    public RealCall(@NotNull OkHttpClient okHttpClient, @NotNull Request request, boolean z) {
        this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww = okHttpClient;
        this.f12668Wwwwwwwwwwwwwwwwwwwwwwww = request;
        this.f12667Wwwwwwwwwwwwwwwwwwwwwww = z;
        this.f12666Wwwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12665Wwwwwwwwwwwwwwwwwwwww = okHttpClient.Wwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        ?? r2 = new AsyncTimeout() { // from class: okhttp3.internal.connection.RealCall$timeout$1
            @Override // okio.AsyncTimeout
            public void Wwwww() {
                RealCall.this.cancel();
            }
        };
        r2.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(), TimeUnit.MILLISECONDS);
        this.f12664Wwwwwwwwwwwwwwwwwwww = r2;
        this.f12663Wwwwwwwwwwwwwwwwwww = new AtomicBoolean();
        this.f12655Wwwwwwwwwww = true;
    }

    public final String Wwwwww() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        if (isCanceled()) {
            str = "canceled ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f12667Wwwwwwwwwwwwwwwwwwwwwww) {
            str2 = "web socket";
        } else {
            str2 = NotificationCompat.CATEGORY_CALL;
        }
        sb.append(str2);
        sb.append(" to ");
        sb.append(Wwwwwwwwwwww());
        return sb.toString();
    }

    public final <E extends IOException> E Wwwwwww(E e) {
        if (this.f12659Wwwwwwwwwwwwwww || !Wwwwwwwwww()) {
            return e;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (e != null) {
            interruptedIOException.initCause(e);
        }
        return interruptedIOException;
    }

    public final void Wwwwwwww() {
        if (!this.f12659Wwwwwwwwwwwwwww) {
            this.f12659Wwwwwwwwwwwwwww = true;
            Wwwwwwwwww();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final void Wwwwwwwww(@Nullable RealConnection realConnection) {
        this.f12652Wwwwwwww = realConnection;
    }

    public final boolean Wwwwwwwwww() {
        return this.f12661Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Nullable
    public final Socket Wwwwwwwwwww() {
        RealConnection realConnection = this.f12660Wwwwwwwwwwwwwwww;
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(realConnection)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + realConnection);
        }
        List<Reference<RealCall>> Wwwwwwwwwwwwwwwwwwww2 = realConnection.Wwwwwwwwwwwwwwwwwwww();
        Iterator<Reference<RealCall>> it = Wwwwwwwwwwwwwwwwwwww2.iterator();
        int i = 0;
        while (true) {
            if (it.hasNext()) {
                if (Intrinsics.areEqual(it.next().get(), this)) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i != -1) {
            Wwwwwwwwwwwwwwwwwwww2.remove(i);
            this.f12660Wwwwwwwwwwwwwwww = null;
            if (Wwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                realConnection.Wwwww(System.nanoTime());
                if (this.f12666Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(realConnection)) {
                    return realConnection.Www();
                }
            }
            return null;
        }
        throw new IllegalStateException("Check failed.");
    }

    @NotNull
    public final String Wwwwwwwwwwww() {
        return this.f12668Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwww();
    }

    @Nullable
    public final IOException Wwwwwwwwwwwww(@Nullable IOException iOException) {
        boolean z;
        synchronized (this) {
            try {
                z = false;
                if (this.f12655Wwwwwwwwwww) {
                    this.f12655Wwwwwwwwwww = false;
                    if (!this.f12657Wwwwwwwwwwwww && !this.f12656Wwwwwwwwwwww) {
                        z = true;
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iOException);
        }
        return iOException;
    }

    @Override // okhttp3.Call
    public void Wwwwwwwwwwwwww(@NotNull Callback callback) {
        if (this.f12663Wwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new AsyncCall(callback));
            return;
        }
        throw new IllegalStateException("Already Executed");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001c A[Catch: all -> 0x0012, TryCatch #0 {all -> 0x0012, blocks: (B:8:0x000d, B:17:0x001c, B:19:0x0020, B:20:0x0022, B:22:0x0027, B:27:0x0030, B:29:0x0034, B:34:0x003d, B:14:0x0016), top: B:47:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0020 A[Catch: all -> 0x0012, TryCatch #0 {all -> 0x0012, blocks: (B:8:0x000d, B:17:0x001c, B:19:0x0020, B:20:0x0022, B:22:0x0027, B:27:0x0030, B:29:0x0034, B:34:0x003d, B:14:0x0016), top: B:47:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <E extends java.io.IOException> E Wwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull okhttp3.internal.connection.Exchange r2, boolean r3, boolean r4, E r5) {
        /*
            r1 = this;
            okhttp3.internal.connection.Exchange r0 = r1.f12653Wwwwwwwww
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)
            if (r2 != 0) goto L9
            goto L54
        L9:
            monitor-enter(r1)
            r2 = 0
            if (r3 == 0) goto L14
            boolean r0 = r1.f12657Wwwwwwwwwwwww     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L1a
            goto L14
        L12:
            r2 = move-exception
            goto L55
        L14:
            if (r4 == 0) goto L3c
            boolean r0 = r1.f12656Wwwwwwwwwwww     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L3c
        L1a:
            if (r3 == 0) goto L1e
            r1.f12657Wwwwwwwwwwwww = r2     // Catch: java.lang.Throwable -> L12
        L1e:
            if (r4 == 0) goto L22
            r1.f12656Wwwwwwwwwwww = r2     // Catch: java.lang.Throwable -> L12
        L22:
            boolean r3 = r1.f12657Wwwwwwwwwwwww     // Catch: java.lang.Throwable -> L12
            r4 = 1
            if (r3 != 0) goto L2d
            boolean r0 = r1.f12656Wwwwwwwwwwww     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L2d
            r0 = r4
            goto L2e
        L2d:
            r0 = r2
        L2e:
            if (r3 != 0) goto L39
            boolean r3 = r1.f12656Wwwwwwwwwwww     // Catch: java.lang.Throwable -> L12
            if (r3 != 0) goto L39
            boolean r3 = r1.f12655Wwwwwwwwwww     // Catch: java.lang.Throwable -> L12
            if (r3 != 0) goto L39
            r2 = r4
        L39:
            r3 = r2
            r2 = r0
            goto L3d
        L3c:
            r3 = r2
        L3d:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L12
            monitor-exit(r1)
            if (r2 == 0) goto L4d
            r2 = 0
            r1.f12653Wwwwwwwww = r2
            okhttp3.internal.connection.RealConnection r2 = r1.f12660Wwwwwwwwwwwwwwww
            if (r2 != 0) goto L4a
            goto L4d
        L4a:
            r2.Wwwwwwwwwwwwwww()
        L4d:
            if (r3 == 0) goto L54
            java.io.IOException r2 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)
            return r2
        L54:
            return r5
        L55:
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealCall.Wwwwwwwwwwwwwww(okhttp3.internal.connection.Exchange, boolean, boolean, java.io.IOException):java.io.IOException");
    }

    @NotNull
    public final Exchange Wwwwwwwwwwwwwwww(@NotNull RealInterceptorChain realInterceptorChain) {
        synchronized (this) {
            if (this.f12655Wwwwwwwwwww) {
                if (!this.f12656Wwwwwwwwwwww) {
                    if (!this.f12657Wwwwwwwwwwwww) {
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } else {
                    throw new IllegalStateException("Check failed.");
                }
            } else {
                throw new IllegalStateException("released");
            }
        }
        ExchangeFinder exchangeFinder = this.f12661Wwwwwwwwwwwwwwwww;
        Exchange exchange = new Exchange(this, this.f12665Wwwwwwwwwwwwwwwwwwwww, exchangeFinder, exchangeFinder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww, realInterceptorChain));
        this.f12658Wwwwwwwwwwwwww = exchange;
        this.f12653Wwwwwwwww = exchange;
        synchronized (this) {
            this.f12657Wwwwwwwwwwwww = true;
            this.f12656Wwwwwwwwwwww = true;
        }
        if (!this.f12654Wwwwwwwwww) {
            return exchange;
        }
        throw new IOException("Canceled");
    }

    @NotNull
    public final Response Wwwwwwwwwwwwwwwww() throws IOException {
        ArrayList arrayList = new ArrayList();
        CollectionsKt.addAll(arrayList, this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwww());
        arrayList.add(new RetryAndFollowUpInterceptor(this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww));
        arrayList.add(new BridgeInterceptor(this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww()));
        arrayList.add(new CacheInterceptor(this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        arrayList.add(ConnectInterceptor.INSTANCE);
        if (!this.f12667Wwwwwwwwwwwwwwwwwwwwwww) {
            CollectionsKt.addAll(arrayList, this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwww());
        }
        arrayList.add(new CallServerInterceptor(this.f12667Wwwwwwwwwwwwwwwwwwwwwww));
        try {
            try {
                Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new RealInterceptorChain(this, arrayList, 0, null, this.f12668Wwwwwwwwwwwwwwwwwwwwwwww, this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(), this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkkkkk(), this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkk()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12668Wwwwwwwwwwwwwwwwwwwwwwww);
                if (!isCanceled()) {
                    Wwwwwwwwwwwww(null);
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
                Util.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                throw new IOException("Canceled");
            } catch (IOException e) {
                IOException Wwwwwwwwwwwww2 = Wwwwwwwwwwwww(e);
                if (Wwwwwwwwwwwww2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                }
                throw Wwwwwwwwwwwww2;
            }
        } catch (Throwable th) {
            if (0 == 0) {
                Wwwwwwwwwwwww(null);
            }
            throw th;
        }
    }

    @NotNull
    public final Request Wwwwwwwwwwwwwwwwww() {
        return this.f12668Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Exchange Wwwwwwwwwwwwwwwwwww() {
        return this.f12658Wwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwww() {
        return this.f12667Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final EventListener Wwwwwwwwwwwwwwwwwwwww() {
        return this.f12665Wwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final RealConnection Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f12660Wwwwwwwwwwwwwwww;
    }

    @NotNull
    public final OkHttpClient Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        Exchange exchange;
        synchronized (this) {
            if (this.f12655Wwwwwwwwwww) {
                Unit unit = Unit.INSTANCE;
            } else {
                throw new IllegalStateException("released");
            }
        }
        if (z && (exchange = this.f12653Wwwwwwwww) != null) {
            exchange.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f12658Wwwwwwwwwwwwww = null;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request, boolean z) {
        if (this.f12658Wwwwwwwwwwwwww == null) {
            synchronized (this) {
                if (!this.f12656Wwwwwwwwwwww) {
                    if (!this.f12657Wwwwwwwwwwwww) {
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } else {
                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                }
            }
            if (z) {
                this.f12661Wwwwwwwwwwwwwwwww = new ExchangeFinder(this.f12666Wwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwww()), this, this.f12665Wwwwwwwwwwwwwwwwwwwww);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final Address Wwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl httpUrl) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        CertificatePinner certificatePinner;
        if (httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwww()) {
            sSLSocketFactory = this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkk();
            hostnameVerifier = this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww();
            certificatePinner = this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            certificatePinner = null;
        }
        return new Address(httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww(), httpUrl.Wwwwwwwwwwwwwwwwwwwww(), this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(), this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkkk(), sSLSocketFactory, hostnameVerifier, certificatePinner, this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwww(), this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwww(), this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwww(), this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(), this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Www());
    }

    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public RealCall clone() {
        return new RealCall(this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww, this.f12668Wwwwwwwwwwwwwwwwwwwwwwww, this.f12667Wwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f12662Wwwwwwwwwwwwwwwwww = Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww("response.body().close()");
        this.f12665Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public final <E extends IOException> E Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(E e) {
        Socket Wwwwwwwwwww2;
        boolean z = Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (z && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        RealConnection realConnection = this.f12660Wwwwwwwwwwwwwwww;
        if (realConnection != null) {
            if (z && Thread.holdsLock(realConnection)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + realConnection);
            }
            synchronized (realConnection) {
                Wwwwwwwwwww2 = Wwwwwwwwwww();
            }
            if (this.f12660Wwwwwwwwwwwwwwww == null) {
                if (Wwwwwwwwwww2 != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwww2);
                }
                this.f12665Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(this, realConnection);
            } else if (Wwwwwwwwwww2 != null) {
                throw new IllegalStateException("Check failed.");
            }
        }
        E e2 = (E) Wwwwwww(e);
        if (e != null) {
            this.f12665Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, e2);
            return e2;
        }
        this.f12665Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        return e2;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull RealConnection realConnection) {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(realConnection)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + realConnection);
        } else if (this.f12660Wwwwwwwwwwwwwwww == null) {
            this.f12660Wwwwwwwwwwwwwwww = realConnection;
            realConnection.Wwwwwwwwwwwwwwwwwwww().add(new CallReference(this, this.f12662Wwwwwwwwwwwwwwwwww));
        } else {
            throw new IllegalStateException("Check failed.");
        }
    }

    @Override // okhttp3.Call
    @NotNull
    public Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12668Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okhttp3.Call
    public void cancel() {
        if (this.f12654Wwwwwwwwww) {
            return;
        }
        this.f12654Wwwwwwwwww = true;
        Exchange exchange = this.f12653Wwwwwwwww;
        if (exchange != null) {
            exchange.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        RealConnection realConnection = this.f12652Wwwwwwww;
        if (realConnection != null) {
            realConnection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f12665Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // okhttp3.Call
    @NotNull
    public Response execute() {
        if (this.f12663Wwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
            Wwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            try {
                this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                return Wwwwwwwwwwwwwwwww();
            } finally {
                this.f12669Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            }
        }
        throw new IllegalStateException("Already Executed");
    }

    @Override // okhttp3.Call
    public boolean isCanceled() {
        return this.f12654Wwwwwwwwww;
    }
}
