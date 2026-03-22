package okhttp3.internal.cache;

import com.google.common.net.HttpHeaders;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.Cache;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.RealResponseBody;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000e\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/cache/CacheInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/Cache;", "cache", "<init>", "(Lokhttp3/Cache;)V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "Lokhttp3/internal/cache/CacheRequest;", "cacheRequest", "response", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;", "Lokhttp3/Cache;", "getCache$okhttp", "()Lokhttp3/Cache;", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class CacheInterceptor implements Interceptor {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Cache f12497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0011¨\u0006\u0013"}, d2 = {"Lokhttp3/internal/cache/CacheInterceptor$Companion;", "", "<init>", "()V", "Lokhttp3/Response;", "response", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)Lokhttp3/Response;", "Lokhttp3/Headers;", "cachedHeaders", "networkHeaders", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;", "", "fieldName", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Response response) {
            ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            if (response == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return response.Kkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return response;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            if (!StringsKt.equals("Connection", str, true) && !StringsKt.equals(HttpHeaders.KEEP_ALIVE, str, true) && !StringsKt.equals("Proxy-Authenticate", str, true) && !StringsKt.equals(HttpHeaders.PROXY_AUTHORIZATION, str, true) && !StringsKt.equals(HttpHeaders.TE, str, true) && !StringsKt.equals("Trailers", str, true) && !StringsKt.equals(HttpHeaders.TRANSFER_ENCODING, str, true) && !StringsKt.equals(HttpHeaders.UPGRADE, str, true)) {
                return true;
            }
            return false;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            if (StringsKt.equals("Content-Length", str, true) || StringsKt.equals("Content-Encoding", str, true) || StringsKt.equals("Content-Type", str, true)) {
                return true;
            }
            return false;
        }

        public final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Headers headers, Headers headers2) {
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                int i3 = i2 + 1;
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
                String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwww(i2);
                if ((!StringsKt.equals(HttpHeaders.WARNING, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, true) || !StringsKt.startsWith$default(Wwwwwwwwwwwwwwwwwwwwwwwwww2, "1", false, 2, (Object) null)) && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) || !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) || headers2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) == null)) {
                    builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                i2 = i3;
            }
            int size2 = headers2.size();
            while (i < size2) {
                int i4 = i + 1;
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = headers2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) {
                    builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, headers2.Wwwwwwwwwwwwwwwwwwwwwwwwww(i));
                }
                i = i4;
            }
            return builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public Companion() {
        }
    }

    public CacheInterceptor(@Nullable Cache cache) {
        this.f12497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cache;
    }

    public final Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CacheRequest cacheRequest, Response response) throws IOException {
        if (cacheRequest == null) {
            return response;
        }
        CacheInterceptor$cacheWritingResponse$cacheWritingSource$1 cacheInterceptor$cacheWritingResponse$cacheWritingSource$1 = new CacheInterceptor$cacheWritingResponse$cacheWritingSource$1(response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().source(), cacheRequest, Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cacheRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        return response.Kkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new RealResponseBody(Response.Kkkkkkkkkkkkkkkkk(response, "Content-Type", null, 2, null), response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().contentLength(), Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cacheInterceptor$cacheWritingResponse$cacheWritingSource$1))).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Response Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        RealCall realCall;
        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
        Call call = chain.call();
        Cache cache = this.f12497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        EventListener eventListener = null;
        if (cache == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = cache.Wwwwwwwwwwwwwwwwwwwwwwwwwww(chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        CacheStrategy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new CacheStrategy.Factory(System.currentTimeMillis(), chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Cache cache2 = this.f12497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (cache2 != null) {
            cache2.Kkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        if (call instanceof RealCall) {
            realCall = (RealCall) call;
        } else {
            realCall = null;
        }
        if (realCall != null) {
            eventListener = realCall.Wwwwwwwwwwwwwwwwwwwww();
        }
        if (eventListener == null) {
            eventListener = EventListener.f12301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 == null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
            Util.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 == null) {
            Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Response.Builder().Wwwwwwwwwwwwwwww(chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwww(Protocol.HTTP_1_1).Wwwwwwwwwwwwwwwwwwwwwwwwwwww(504).Wwwwwwwwwwwwwwwwwwwww("Unsatisfiable Request (only-if-cached)").Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Util.f12493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwww(-1L).Wwwwwwwwwwwwwwwww(System.currentTimeMillis()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            eventListener.Wwwwwwww(call, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
            Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            eventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(call, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
        } else {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null) {
                eventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(call, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4);
            } else if (this.f12497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                eventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(call);
            }
            try {
                Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 == null && Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kkkkkkkkkkkkkkkkkkkkkk() == 304) {
                        Response.Builder Kkkkkkkkkkkk2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kkkkkkkkkkkk();
                        Companion companion = Companion;
                        Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Kkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kkkkkkkkkkkkkkkk(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kkkkkkkkkkkkkkkk())).Wwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kkkkkkk()).Wwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kkkkkkkkk()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4)).Wwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().close();
                        this.f12497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkk();
                        this.f12497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4);
                        eventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(call, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4);
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
                    }
                    ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 != null) {
                        Util.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5);
                    }
                }
                Response.Builder Kkkkkkkkkkkk3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kkkkkkkkkkkk();
                Companion companion2 = Companion;
                Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Kkkkkkkkkkkk3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4)).Wwwwwwwwwwwwwwwwwwww(companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (this.f12497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    if (okhttp3.internal.http.HttpHeaders.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5) && CacheStrategy.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) {
                        Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null) {
                            eventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(call);
                        }
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6;
                    } else if (HttpMethod.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                        try {
                            this.f12497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                        } catch (IOException unused) {
                        }
                    }
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5;
            } finally {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
        }
    }
}
