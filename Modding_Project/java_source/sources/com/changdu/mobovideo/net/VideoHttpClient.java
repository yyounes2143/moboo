package com.changdu.mobovideo.net;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.core.app.NotificationCompat;
import com.changdu.component.http.CDHttpDetailLoggingInterceptor;
import com.changdu.component.http.HttpRequest;
import com.changdu.component.http.SslHelper;
import com.changdu.mobovideo.googleengage.UserRequestCache;
import com.changdu.mobovideo.plugins.CDNetwork;
import com.google.firebase.analytics.FirebaseAnalytics;
import j$.util.Objects;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJA\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\r2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J>\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\f\u001a\u00020\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\r2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014H\u0086@¢\u0006\u0004\b\u0017\u0010\u0018J4\u0010\u001a\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\rH\u0086@¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001c\u0010\u0003J3\u0010\u001d\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ;\u0010\u001f\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\r2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001f\u0010 J<\u0010&\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010#\u001a\u00020\"2\b\b\u0002\u0010$\u001a\u00020\u00042\b\b\u0002\u0010%\u001a\u00020\u0004H\u0082@¢\u0006\u0004\b&\u0010'J2\u0010(\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010#\u001a\u00020\"2\b\b\u0002\u0010%\u001a\u00020\u0004H\u0082@¢\u0006\u0004\b(\u0010)R\u0017\u0010/\u001a\u00020*8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u00100\u001a\u0004\b5\u00102\"\u0004\b6\u00104R\u0018\u00109\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u00108¨\u0006:"}, d2 = {"Lcom/changdu/mobovideo/net/VideoHttpClient;", "", "<init>", "()V", "", "enableProxy", "debug", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZZ)V", "", FirebaseAnalytics.Param.METHOD, "url", "", "headers", "args", "Lokhttp3/Callback;", "callBack", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lokhttp3/Callback;)V", "Lcom/changdu/mobovideo/googleengage/UserRequestCache;", "userCache", "Lokhttp3/Response;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/changdu/mobovideo/googleengage/UserRequestCache;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "savedFilePath", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/Map;Lokhttp3/Callback;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lokhttp3/Callback;)V", "downloadUrl", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "force", "needReport", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lokhttp3/MediaType;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/MediaType;", "getMEDIA_JSON", "()Lokhttp3/MediaType;", "MEDIA_JSON", "Z", "getDebug", "()Z", "setDebug", "(Z)V", "getEnableProxy", "setEnableProxy", "Lokhttp3/OkHttpClient;", "Lokhttp3/OkHttpClient;", "okHttpClient", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nVideoHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoHttpClient.kt\ncom/changdu/mobovideo/net/VideoHttpClient\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,542:1\n216#2,2:543\n216#2,2:545\n216#2,2:547\n216#2,2:549\n*S KotlinDebug\n*F\n+ 1 VideoHttpClient.kt\ncom/changdu/mobovideo/net/VideoHttpClient\n*L\n152#1:543,2\n166#1:545,2\n186#1:547,2\n203#1:549,2\n*E\n"})
/* loaded from: classes3.dex */
public final class VideoHttpClient {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static OkHttpClient f5553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5554Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5555Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final VideoHttpClient INSTANCE = new VideoHttpClient();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final MediaType f5556Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MediaType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("application/json; charset=utf-8");

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2, @NotNull Map<String, String> map, @NotNull String str3, @NotNull Callback callback) {
        if (Intrinsics.areEqual(str, "GET")) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, map, callback);
        } else if (Intrinsics.areEqual(str, ShareTarget.METHOD_POST)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(str2, map, str3, callback);
        } else {
            throw new Exception();
        }
    }

    @Nullable
    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Map<String, String> map, @NotNull String str2, @NotNull UserRequestCache userRequestCache, @NotNull Continuation<? super Response> continuation) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Dispatchers.getIO();
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(entry.getKey(), entry.getValue());
        }
        RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RequestBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, f5556Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Objects.toString(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        return f5553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VideoHttpClientKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Request.Builder().Wwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwwwwwww(builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), userRequestCache)).execute();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Map<String, String> map, String str2, Callback callback) {
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(entry.getKey(), entry.getValue());
        }
        builder.Wwwwwwwwwwwwwwwwwwwwwwwww("content-length");
        f5553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Request.Builder().Wwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwwwwwww(builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwww(RequestBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, f5556Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwww(callback);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Map<String, String> map, Callback callback) {
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(entry.getKey(), entry.getValue());
        }
        builder.Wwwwwwwwwwwwwwwwwwwwwwwww("content-length");
        f5553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Request.Builder().Wwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwwwwwww(builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwww(callback);
    }

    @Nullable
    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2, @NotNull Map<String, String> map, @NotNull Continuation<? super Boolean> continuation) {
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(entry.getKey(), entry.getValue());
        }
        if (!StringsKt.isBlank(str2)) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2, f5553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Request.Builder().Wwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwwwwwww(builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), true, CDNetwork.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), continuation);
        }
        throw new Exception();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, boolean z2) {
        f5554Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        f5555Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, Call call, boolean z, boolean z2, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VideoHttpClient$downloadFileSafe$2(str2, z, str, call, z2, null), continuation);
    }

    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, Call call, boolean z, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VideoHttpClient$downloadFile$2(str2, call, z, str, null), continuation);
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        SSLSocketFactory sSLSocketFactory;
        X509TrustManager x509TrustManager;
        try {
            if (f5553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return;
            }
            OkHttpClient.Builder createNewOkHttpClientBuilder = HttpRequest.Companion.createNewOkHttpClientBuilder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            createNewOkHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(15L, timeUnit);
            createNewOkHttpClientBuilder.Kkkkkkkkkkkkkkkk(15L, timeUnit);
            createNewOkHttpClientBuilder.Illllllllllllllllllllllll(15L, timeUnit);
            createNewOkHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new VideoHttpDns());
            createNewOkHttpClientBuilder.Kkkkkkkkkkkkkkk(false);
            createNewOkHttpClientBuilder.Kkkkkkkkkkkkkkkkkk(SslHelper.UnSafeHostnameVerifier);
            SslHelper.SSLParams sslSocketFactory = SslHelper.getSslSocketFactory();
            if (sslSocketFactory != null && (sSLSocketFactory = sslSocketFactory.sSLSocketFactory) != null && (x509TrustManager = sslSocketFactory.trustManager) != null) {
                createNewOkHttpClientBuilder.Illlllllllllllllllllllllll(sSLSocketFactory, x509TrustManager);
            }
            createNewOkHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new VideoHttpErrorReportInterceptor());
            createNewOkHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new VideoHttpCustomUserAgentInterceptor());
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, null);
            if (f5555Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                httpLoggingInterceptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpLoggingInterceptor.Level.BODY);
                createNewOkHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpLoggingInterceptor);
                createNewOkHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new CDHttpDetailLoggingInterceptor());
            } else {
                httpLoggingInterceptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpLoggingInterceptor.Level.NONE);
            }
            createNewOkHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwww(VideoNetworkTraceListener.f5559Wwwwwwwwwwwwwwwww);
            if (!f5554Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                createNewOkHttpClientBuilder.Kkkkkkkkkkkkkkkkk(new ProxySelector() { // from class: com.changdu.mobovideo.net.VideoHttpClient$checkOkHttpClient$okHttpClientBuilder$1$1
                    @Override // java.net.ProxySelector
                    public List<Proxy> select(URI uri) {
                        return Collections.singletonList(Proxy.NO_PROXY);
                    }

                    @Override // java.net.ProxySelector
                    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
                    }
                });
            }
            f5553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = createNewOkHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            throw th;
        }
    }
}
