package okhttp3;

import androidx.core.app.NotificationCompat;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\b&\u0018\u0000 N2\u00020\u0001:\u0002NOB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ2\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0011\u0010\u0010\u001a\r\u0012\t\u0012\u00070\u000e¢\u0006\u0002\b\u000f0\rH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J2\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0011\u0010\u0018\u001a\r\u0012\t\u0012\u00070\u0017¢\u0006\u0002\b\u000f0\rH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ'\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b \u0010\bJ!\u0010#\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b#\u0010$J1\u0010'\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u000e2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(J9\u0010+\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u000e2\b\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u001f\u0010/\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J\u001f\u00101\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b1\u00100J\u0017\u00102\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b2\u0010\bJ\u001f\u00105\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00104\u001a\u000203H\u0016¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b7\u0010\bJ\u001f\u0010:\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J\u001f\u0010<\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010>\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b>\u0010\bJ\u001f\u0010A\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ\u0017\u0010C\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\bC\u0010\bJ\u001f\u0010D\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\bD\u0010;J\u001f\u0010E\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\bE\u0010=J\u0017\u0010F\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\bF\u0010\bJ\u001f\u0010G\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\bG\u0010=J\u0017\u0010H\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\bH\u0010\bJ\u001f\u0010I\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bI\u0010BJ\u001f\u0010J\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bJ\u0010BJ\u0017\u0010K\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\bK\u0010\bJ\u001f\u0010M\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010L\u001a\u00020?H\u0016¢\u0006\u0004\bM\u0010B¨\u0006P"}, d2 = {"Lokhttp3/EventListener;", "", "<init>", "()V", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;)V", "Lokhttp3/HttpUrl;", "url", "Wwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Lokhttp3/HttpUrl;)V", "", "Ljava/net/Proxy;", "Lkotlin/jvm/JvmSuppressWildcards;", "proxies", "Wwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Lokhttp3/HttpUrl;Ljava/util/List;)V", "", "domainName", "Wwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/lang/String;)V", "Ljava/net/InetAddress;", "inetAddressList", "Wwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V", "Ljava/net/InetSocketAddress;", "inetSocketAddress", "proxy", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V", "Wwwwww", "Lokhttp3/Handshake;", "handshake", "Wwwwwww", "(Lokhttp3/Call;Lokhttp3/Handshake;)V", "Lokhttp3/Protocol;", "protocol", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V", "Ljava/io/IOException;", "ioe", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V", "Lokhttp3/Connection;", "connection", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;Lokhttp3/Connection;)V", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "Wwwwwwwwwwwwwww", "(Lokhttp3/Call;Lokhttp3/Request;)V", "Wwwwwwwwwwwwwwwww", "", "byteCount", "Wwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;J)V", "Wwwwwwwwwwwwwwww", "(Lokhttp3/Call;Ljava/io/IOException;)V", "Wwwwwwwww", "Lokhttp3/Response;", "response", "Wwwwwwwwww", "(Lokhttp3/Call;Lokhttp3/Response;)V", "Wwwwwwwwwwww", "Wwwwwwwwwwwww", "Wwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "cachedResponse", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Companion", "Factory", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public abstract class EventListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final EventListener f12301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new EventListener() { // from class: okhttp3.EventListener$Companion$NONE$1
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lokhttp3/EventListener$Companion;", "", "()V", "NONE", "Lokhttp3/EventListener;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/EventListener$Factory;", "", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/EventListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Call;)Lokhttp3/EventListener;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public interface Factory {
        @NotNull
        EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call);
    }

    public void Wwwwww(@NotNull Call call) {
    }

    public void Wwwwwwwww(@NotNull Call call) {
    }

    public void Wwwwwwwwwwww(@NotNull Call call) {
    }

    public void Wwwwwwwwwwwwww(@NotNull Call call) {
    }

    public void Wwwwwwwwwwwwwwwww(@NotNull Call call) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call) {
    }

    public void Wwwwwww(@NotNull Call call, @Nullable Handshake handshake) {
    }

    public void Wwwwwwww(@NotNull Call call, @NotNull Response response) {
    }

    public void Wwwwwwwwww(@NotNull Call call, @NotNull Response response) {
    }

    public void Wwwwwwwwwww(@NotNull Call call, @NotNull IOException iOException) {
    }

    public void Wwwwwwwwwwwww(@NotNull Call call, long j) {
    }

    public void Wwwwwwwwwwwwwww(@NotNull Call call, @NotNull Request request) {
    }

    public void Wwwwwwwwwwwwwwww(@NotNull Call call, @NotNull IOException iOException) {
    }

    public void Wwwwwwwwwwwwwwwwww(@NotNull Call call, long j) {
    }

    public void Wwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull HttpUrl httpUrl) {
    }

    public void Wwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull String str) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull Connection connection) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull Connection connection) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull IOException iOException) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull Response response) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull Response response) {
    }

    public void Wwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull HttpUrl httpUrl, @NotNull List<Proxy> list) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull String str, @NotNull List<InetAddress> list) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol, @NotNull IOException iOException) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol) {
    }
}
