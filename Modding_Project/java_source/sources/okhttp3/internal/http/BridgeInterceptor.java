package okhttp3.internal.http;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okio.GzipSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/http/BridgeInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/CookieJar;", "cookieJar", "<init>", "(Lokhttp3/CookieJar;)V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "", "Lokhttp3/Cookie;", "cookies", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Ljava/lang/String;", "Lokhttp3/CookieJar;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class BridgeInterceptor implements Interceptor {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CookieJar f12712Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public BridgeInterceptor(@NotNull CookieJar cookieJar) {
        this.f12712Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cookieJar;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<Cookie> list) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Cookie cookie = (Cookie) obj;
            if (i > 0) {
                sb.append("; ");
            }
            sb.append(cookie.Wwwwwwwwwwwwwwwwwwwwwwwwww());
            sb.append('=');
            sb.append(cookie.Wwwwwwwwwwwwwwwwwwww());
            i = i2;
        }
        return sb.toString();
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Request.Builder Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null) {
            MediaType contentType = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.contentType();
            if (contentType != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Type", contentType.toString());
            }
            long contentLength = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.contentLength();
            if (contentLength != -1) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Length", String.valueOf(contentLength));
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww(com.google.common.net.HttpHeaders.TRANSFER_ENCODING);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.common.net.HttpHeaders.TRANSFER_ENCODING, "chunked");
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww("Content-Length");
            }
        }
        boolean z = false;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Host") == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("Host", Util.Kkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwww(), false, 1, null));
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Connection") == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("Connection", com.google.common.net.HttpHeaders.KEEP_ALIVE);
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.common.net.HttpHeaders.ACCEPT_ENCODING) == null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Range") == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.common.net.HttpHeaders.ACCEPT_ENCODING, "gzip");
            z = true;
        }
        List<Cookie> loadForRequest = this.f12712Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.loadForRequest(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwww());
        if (!loadForRequest.isEmpty()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(com.google.common.net.HttpHeaders.COOKIE, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loadForRequest));
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("User-Agent") == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("User-Agent", "okhttp/4.11.0");
        }
        Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        HttpHeaders.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12712Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkk());
        Response.Builder Wwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkk().Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        if (z && StringsKt.equals("gzip", Response.Kkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "Content-Encoding", null, 2, null), true) && HttpHeaders.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
            GzipSource gzipSource = new GzipSource(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.source());
            Wwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww("Content-Encoding").Wwwwwwwwwwwwwwwwwwwwwwwww("Content-Length").Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
            Wwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new RealResponseBody(Response.Kkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "Content-Type", null, 2, null), -1L, Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(gzipSource)));
        }
        return Wwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
