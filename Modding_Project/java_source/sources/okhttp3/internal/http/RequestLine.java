package okhttp3.internal.http;

import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.net.Proxy;
import kotlin.Metadata;
import okhttp3.HttpUrl;
import okhttp3.Request;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/http/RequestLine;", "", "<init>", "()V", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "Ljava/net/Proxy$Type;", "proxyType", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;", "Lokhttp3/HttpUrl;", "url", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;)Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Ljava/net/Proxy$Type;)Z", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class RequestLine {
    @NotNull
    public static final RequestLine INSTANCE = new RequestLine();

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull HttpUrl httpUrl) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = httpUrl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + '?' + ((Object) Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request, Proxy.Type type) {
        if (!request.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() && type == Proxy.Type.HTTP) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request, @NotNull Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(request.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        sb.append(' ');
        RequestLine requestLine = INSTANCE;
        if (requestLine.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, type)) {
            sb.append(request.Wwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            sb.append(requestLine.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwww()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }
}
