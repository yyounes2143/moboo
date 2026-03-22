package okhttp3.internal.authenticator;

import com.google.common.net.HttpHeaders;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.SocketAddress;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.Address;
import okhttp3.Authenticator;
import okhttp3.Challenge;
import okhttp3.Credentials;
import okhttp3.Dns;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J#\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0012\u001a\u00020\u0011*\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/authenticator/JavaNetAuthenticator;", "Lokhttp3/Authenticator;", "Lokhttp3/Dns;", "defaultDns", "<init>", "(Lokhttp3/Dns;)V", "Lokhttp3/Route;", "route", "Lokhttp3/Response;", "response", "Lokhttp3/Request;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;", "Ljava/net/Proxy;", "Lokhttp3/HttpUrl;", "url", "dns", "Ljava/net/InetAddress;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Dns;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class JavaNetAuthenticator implements Authenticator {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Dns f12496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public JavaNetAuthenticator() {
        this(null, 1, null);
    }

    public final InetAddress Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Proxy proxy, HttpUrl httpUrl, Dns dns) throws IOException {
        int i;
        Proxy.Type type = proxy.type();
        if (type == null) {
            i = -1;
        } else {
            i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i == 1) {
            return (InetAddress) CollectionsKt.first((List<? extends Object>) dns.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwww()));
        }
        SocketAddress address = proxy.address();
        if (address != null) {
            return ((InetSocketAddress) address).getAddress();
        }
        throw new NullPointerException("null cannot be cast to non-null type java.net.InetSocketAddress");
    }

    @Override // okhttp3.Authenticator
    @Nullable
    public Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Route route, @NotNull Response response) throws IOException {
        boolean z;
        Proxy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Address Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Dns Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        PasswordAuthentication requestPasswordAuthentication;
        String str;
        List<Challenge> Kkkkkkkkkkkkkkkkkkkkkkk2 = response.Kkkkkkkkkkkkkkkkkkkkkkk();
        Request Kkkkkkkk2 = response.Kkkkkkkk();
        HttpUrl Wwwwwwwwwwwwwwwwwwwwwwww2 = Kkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwww();
        if (response.Kkkkkkkkkkkkkkkkkkkkkk() == 407) {
            z = true;
        } else {
            z = false;
        }
        if (route == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = route.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Proxy.NO_PROXY;
        }
        for (Challenge challenge : Kkkkkkkkkkkkkkkkkkkkkkk2) {
            if (StringsKt.equals("Basic", challenge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), true)) {
                if (route == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = route.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                if (z) {
                    SocketAddress address = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.address();
                    if (address != null) {
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                        requestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(inetSocketAddress.getHostName(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), inetSocketAddress.getPort(), Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwww(), challenge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), challenge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwww(), Authenticator.RequestorType.PROXY);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.net.InetSocketAddress");
                    }
                } else {
                    requestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwww(), challenge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), challenge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwww(), Authenticator.RequestorType.SERVER);
                }
                if (requestPasswordAuthentication != null) {
                    if (z) {
                        str = HttpHeaders.PROXY_AUTHORIZATION;
                    } else {
                        str = "Authorization";
                    }
                    return Kkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Credentials.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(requestPasswordAuthentication.getUserName(), new String(requestPasswordAuthentication.getPassword()), challenge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }
        }
        return null;
    }

    public JavaNetAuthenticator(@NotNull Dns dns) {
        this.f12496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dns;
    }

    public /* synthetic */ JavaNetAuthenticator(Dns dns, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Dns.f12299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww : dns);
    }
}
