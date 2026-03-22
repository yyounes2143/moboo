package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.Route;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 /2\u00020\u0001:\u0002/0B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fH\u0086\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u0086\u0002¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0019\u0010\u000eJ\u000f\u0010\u001a\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001fR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010 R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010!R\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00140\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010#R\u0016\u0010'\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010&R\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020(0\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010#R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020,0+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010#¨\u00061"}, d2 = {"Lokhttp3/internal/connection/RouteSelector;", "", "Lokhttp3/Address;", "address", "Lokhttp3/internal/connection/RouteDatabase;", "routeDatabase", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/EventListener;", "eventListener", "<init>", "(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/Call;Lokhttp3/EventListener;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Lokhttp3/internal/connection/RouteSelector$Selection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/connection/RouteSelector$Selection;", "Lokhttp3/HttpUrl;", "url", "Ljava/net/Proxy;", "proxy", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;Ljava/net/Proxy;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/net/Proxy;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/Proxy;)V", "Lokhttp3/Address;", "Lokhttp3/internal/connection/RouteDatabase;", "Lokhttp3/Call;", "Lokhttp3/EventListener;", "", "Ljava/util/List;", "proxies", "", "I", "nextProxyIndex", "Ljava/net/InetSocketAddress;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "inetSocketAddresses", "", "Lokhttp3/Route;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "postponedRoutes", "Companion", "Selection", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class RouteSelector {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12704Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EventListener f12706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Call f12707Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RouteDatabase f12708Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Address f12709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<? extends Proxy> f12705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.emptyList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<? extends InetSocketAddress> f12703Wwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.emptyList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Route> f12702Wwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0015\u0010\b\u001a\u00020\u0005*\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lokhttp3/internal/connection/RouteSelector$Companion;", "", "<init>", "()V", "Ljava/net/InetSocketAddress;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/InetSocketAddress;)Ljava/lang/String;", "socketHost", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull InetSocketAddress inetSocketAddress) {
            InetAddress address = inetSocketAddress.getAddress();
            if (address == null) {
                return inetSocketAddress.getHostName();
            }
            return address.getHostAddress();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007H\u0086\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b\n\u0010\u000bR\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\f\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u0010¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/connection/RouteSelector$Selection;", "", "", "Lokhttp3/Route;", "routes", "<init>", "(Ljava/util/List;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Route;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "()Ljava/util/List;", "", "I", "nextRouteIndex", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Selection {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12710Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Route> f12711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Selection(@NotNull List<Route> list) {
            this.f12711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        }

        @NotNull
        public final Route Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                List<Route> list = this.f12711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int i = this.f12710Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                this.f12710Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i + 1;
                return list.get(i);
            }
            throw new NoSuchElementException();
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f12710Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww < this.f12711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size()) {
                return true;
            }
            return false;
        }

        @NotNull
        public final List<Route> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12711Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public RouteSelector(@NotNull Address address, @NotNull RouteDatabase routeDatabase, @NotNull Call call, @NotNull EventListener eventListener) {
        this.f12709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = address;
        this.f12708Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = routeDatabase;
        this.f12707Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = call;
        this.f12706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = eventListener;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(address.Wwwwwwwwwwwwwwwwwwwwwww(), address.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public static final List<Proxy> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Proxy proxy, HttpUrl httpUrl, RouteSelector routeSelector) {
        if (proxy != null) {
            return CollectionsKt.listOf(proxy);
        }
        URI Wwwwwwwwwwwwww2 = httpUrl.Wwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwww2.getHost() == null) {
            return Util.Wwwwwwwwwwww(Proxy.NO_PROXY);
        }
        List<Proxy> select = routeSelector.f12709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().select(Wwwwwwwwwwwwww2);
        List<Proxy> list = select;
        if (list != null && !list.isEmpty()) {
            return Util.Kkkkkkkkkkk(select);
        }
        return Util.Wwwwwwwwwwww(Proxy.NO_PROXY);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpUrl httpUrl, Proxy proxy) {
        this.f12706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww(this.f12707Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, httpUrl);
        List<Proxy> Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(proxy, httpUrl, this);
        this.f12705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f12704Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        this.f12706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(this.f12707Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, httpUrl, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Proxy proxy) throws IOException {
        String Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        int Wwwwwwwwwwwwwwwwwwwww2;
        List<InetAddress> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        ArrayList arrayList = new ArrayList();
        this.f12703Wwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress address = proxy.address();
            if (address instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inetSocketAddress);
                Wwwwwwwwwwwwwwwwwwwww2 = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException(Intrinsics.stringPlus("Proxy.address() is not an InetSocketAddress: ", address.getClass()).toString());
            }
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwww2 = this.f12709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww();
        }
        if (1 <= Wwwwwwwwwwwwwwwwwwwww2 && Wwwwwwwwwwwwwwwwwwwww2 < 65536) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                arrayList.add(InetSocketAddress.createUnresolved(Wwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwww2));
                return;
            }
            if (Util.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CollectionsKt.listOf(InetAddress.getByName(Wwwwwwwwwwwwwwwwwwwwwwwwww2));
            } else {
                this.f12706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(this.f12707Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                    this.f12706Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(this.f12707Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } else {
                    throw new UnknownHostException(this.f12709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + " returned no addresses for " + Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
            for (InetAddress inetAddress : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                arrayList.add(new InetSocketAddress(inetAddress, Wwwwwwwwwwwwwwwwwwwww2));
            }
            return;
        }
        throw new SocketException("No route to " + Wwwwwwwwwwwwwwwwwwwwwwwwww2 + AbstractJsonLexerKt.COLON + Wwwwwwwwwwwwwwwwwwwww2 + "; port is out of range");
    }

    public final Proxy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            List<? extends Proxy> list = this.f12705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i = this.f12704Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f12704Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = i + 1;
            Proxy proxy = list.get(i);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f12709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww() + "; exhausted proxy configurations: " + this.f12705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public final Selection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            ArrayList arrayList = new ArrayList();
            while (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Proxy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                for (InetSocketAddress inetSocketAddress : this.f12703Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    Route route = new Route(this.f12709Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, inetSocketAddress);
                    if (this.f12708Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(route)) {
                        this.f12702Wwwwwwwwwwwwwwwwwwwwwwwwwww.add(route);
                    } else {
                        arrayList.add(route);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                CollectionsKt.addAll(arrayList, this.f12702Wwwwwwwwwwwwwwwwwwwwwwwwwww);
                this.f12702Wwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
            }
            return new Selection(arrayList);
        }
        throw new NoSuchElementException();
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f12704Wwwwwwwwwwwwwwwwwwwwwwwwwwwww < this.f12705Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size()) {
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && this.f12702Wwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            return false;
        }
        return true;
    }
}
