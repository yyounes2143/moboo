package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RouteSelector;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.StreamResetException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ?\u0010'\u001a\u00020&2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u0018H\u0002¢\u0006\u0004\b'\u0010(J7\u0010)\u001a\u00020&2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020\u0018H\u0002¢\u0006\u0004\b)\u0010*J\u0011\u0010,\u001a\u0004\u0018\u00010+H\u0002¢\u0006\u0004\b,\u0010-R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010.R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b)\u0010/\u001a\u0004\b0\u00101R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u00102R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00103R\u0018\u00106\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u00105R\u0018\u00109\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u00108R\u0016\u0010;\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010:R\u0016\u0010<\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010:R\u0016\u0010>\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010:R\u0018\u0010A\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006B"}, d2 = {"Lokhttp3/internal/connection/ExchangeFinder;", "", "Lokhttp3/internal/connection/RealConnectionPool;", "connectionPool", "Lokhttp3/Address;", "address", "Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/EventListener;", "eventListener", "<init>", "(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;)V", "Lokhttp3/OkHttpClient;", "client", "Lokhttp3/internal/http/RealInterceptorChain;", "chain", "Lokhttp3/internal/http/ExchangeCodec;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/ExchangeCodec;", "Ljava/io/IOException;", "e", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/IOException;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Lokhttp3/HttpUrl;", "url", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;)Z", "", "connectTimeout", "readTimeout", "writeTimeout", "pingIntervalMillis", "connectionRetryEnabled", "doExtensiveHealthChecks", "Lokhttp3/internal/connection/RealConnection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IIIIZZ)Lokhttp3/internal/connection/RealConnection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IIIIZ)Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/Route;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Route;", "Lokhttp3/internal/connection/RealConnectionPool;", "Lokhttp3/Address;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Address;", "Lokhttp3/internal/connection/RealCall;", "Lokhttp3/EventListener;", "Lokhttp3/internal/connection/RouteSelector$Selection;", "Lokhttp3/internal/connection/RouteSelector$Selection;", "routeSelection", "Lokhttp3/internal/connection/RouteSelector;", "Lokhttp3/internal/connection/RouteSelector;", "routeSelector", "I", "refusedStreamCount", "connectionShutdownCount", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "otherFailureCount", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Route;", "nextRouteToTry", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class ExchangeFinder {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Route f12642Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12643Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12644Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12645Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RouteSelector f12646Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RouteSelector.Selection f12647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EventListener f12648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealCall f12649Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Address f12650Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealConnectionPool f12651Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ExchangeFinder(@NotNull RealConnectionPool realConnectionPool, @NotNull Address address, @NotNull RealCall realCall, @NotNull EventListener eventListener) {
        this.f12651Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = realConnectionPool;
        this.f12650Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = address;
        this.f12649Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = realCall;
        this.f12648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = eventListener;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull IOException iOException) {
        this.f12642Wwwwwwwwwwwwwwwwwwwwwwwww = null;
        if ((iOException instanceof StreamResetException) && ((StreamResetException) iOException).errorCode == ErrorCode.REFUSED_STREAM) {
            this.f12645Wwwwwwwwwwwwwwwwwwwwwwwwwwww++;
        } else if (iOException instanceof ConnectionShutdownException) {
            this.f12644Wwwwwwwwwwwwwwwwwwwwwwwwwww++;
        } else {
            this.f12643Wwwwwwwwwwwwwwwwwwwwwwwwww++;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull HttpUrl httpUrl) {
        HttpUrl Wwwwwwwwwwwwwwwwwwwwwww2 = this.f12650Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww();
        if (httpUrl.Wwwwwwwwwwwwwwwwwwwww() == Wwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww() && Intrinsics.areEqual(httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww())) {
            return true;
        }
        return false;
    }

    public final Route Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        RealConnection Wwwwwwwwwwwwwwwwwwwwww2;
        if (this.f12645Wwwwwwwwwwwwwwwwwwwwwwwwwwww > 1 || this.f12644Wwwwwwwwwwwwwwwwwwwwwwwwwww > 1 || this.f12643Wwwwwwwwwwwwwwwwwwwwwwwwww > 0 || (Wwwwwwwwwwwwwwwwwwwwww2 = this.f12649Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww()) == null) {
            return null;
        }
        synchronized (Wwwwwwwwwwwwwwwwwwwwww2) {
            if (Wwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwww() != 0) {
                return null;
            }
            if (!Util.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2.Wwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww())) {
                return null;
            }
            return Wwwwwwwwwwwwwwwwwwwwww2.Wwwwwww();
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        RouteSelector routeSelector;
        if (this.f12645Wwwwwwwwwwwwwwwwwwwwwwwwwwww == 0 && this.f12644Wwwwwwwwwwwwwwwwwwwwwwwwwww == 0 && this.f12643Wwwwwwwwwwwwwwwwwwwwwwwwww == 0) {
            return false;
        }
        if (this.f12642Wwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return true;
        }
        Route Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            this.f12642Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            return true;
        }
        RouteSelector.Selection selection = this.f12647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if ((selection != null && selection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) || (routeSelector = this.f12646Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) == null) {
            return true;
        }
        return routeSelector.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @NotNull
    public final Address Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12650Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final RealConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3, int i4, boolean z, boolean z2) throws IOException {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        while (true) {
            RealConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, i3, i4, z);
            boolean z3 = z;
            int i5 = i4;
            int i6 = i3;
            int i7 = i2;
            int i8 = i;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwww(z2)) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwww();
            if (this.f12642Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
                RouteSelector.Selection selection = this.f12647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                boolean z4 = true;
                if (selection == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = true;
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = selection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    continue;
                } else {
                    RouteSelector routeSelector = this.f12646Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (routeSelector != null) {
                        z4 = routeSelector.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    if (!z4) {
                        throw new IOException("exhausted all routes");
                    }
                }
            }
            i = i8;
            i2 = i7;
            i3 = i6;
            i4 = i5;
            z = z3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.connection.RealConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int r13, int r14, int r15, int r16, boolean r17) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.ExchangeFinder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int, int, int, int, boolean):okhttp3.internal.connection.RealConnection");
    }

    @NotNull
    public final ExchangeCodec Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull OkHttpClient okHttpClient, @NotNull RealInterceptorChain realInterceptorChain) {
        try {
            try {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(realInterceptorChain.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), realInterceptorChain.Wwwwwwwwwwwwwwwwwwwwwwwwww(), realInterceptorChain.Wwwwwwwwwwwwwwwwwwwwwwww(), okHttpClient.Wwwwwww(), okHttpClient.Kkkkkkkkkkkkkkkkkkkkkkkkk(), !Intrinsics.areEqual(realInterceptorChain.Wwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(), "GET")).Wwwwwwwwwww(okHttpClient, realInterceptorChain);
            } catch (IOException e) {
                e = e;
                IOException iOException = e;
                Wwwwwwwwwwwwwwwwwwwwwwwwwww(iOException);
                throw new RouteException(iOException);
            } catch (RouteException e2) {
                e = e2;
                RouteException routeException = e;
                Wwwwwwwwwwwwwwwwwwwwwwwwwww(routeException.getLastConnectException());
                throw routeException;
            }
        } catch (IOException e3) {
            e = e3;
        } catch (RouteException e4) {
            e = e4;
        }
    }
}
