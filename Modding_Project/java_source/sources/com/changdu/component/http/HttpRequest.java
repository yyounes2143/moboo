package com.changdu.component.http;

import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.changdu.component.http.SslHelper;
import com.google.gson.GsonBuilder;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.logging.HttpLoggingInterceptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Converter;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.converter.scalars.ScalarsConverterFactory;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0016\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007¢\u0006\u0004\b+\u0010,J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0006\u0010\r\u001a\u00020\fJ\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u000fJ+\u0010\u0014\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00112\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00122\b\b\u0002\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0015J5\u0010\u0014\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00112\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00122\b\b\u0001\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0016J0\u0010\u001b\u001a\u00020\u001a2(\b\u0002\u0010\u0019\u001a\"\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0017j\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0018J\u0010\u0010\u001d\u001a\u00020\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\u0002J%\u0010!\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u001e2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0007¢\u0006\u0004\b!\u0010\"J\u001a\u0010#\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u001e2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u001fR\"\u0010*\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006."}, d2 = {"Lcom/changdu/component/http/HttpRequest;", "", "", "url", "", "setBaseUrl", "Lokhttp3/OkHttpClient$Builder;", "okHttpClientBuilder", "setOkHttpClientBuilder", "Lretrofit2/Retrofit$Builder;", "retrofitBuilder", "setRetrofitBuilder", "Lretrofit2/Retrofit;", "getRetrofit", "baseUrl", "", "needCache", ExifInterface.LATITUDE_SOUTH, "Ljava/lang/Class;", "serviceClass", "getApiService", "(Ljava/lang/Class;Z)Ljava/lang/Object;", "(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "businessParamMap", "Lokhttp3/RequestBody;", "createRequestBody", "businessParamJsonStr", "createRequestBodyFromStr", "T", "Lretrofit2/Call;", NotificationCompat.CATEGORY_CALL, "executeSync", "(Lretrofit2/Call;)Ljava/lang/Object;", "executeAsync", "a", "Z", "getDebug", "()Z", "setDebug", "(Z)V", "debug", "<init>", "()V", "Companion", "http_release"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequest.kt\ncom/changdu/component/http/HttpRequest\n*L\n1#1,295:1\n253#1,5:296\n*S KotlinDebug\n*F\n+ 1 HttpRequest.kt\ncom/changdu/component/http/HttpRequest\n*L\n236#1:296,5\n*E\n"})
/* loaded from: classes3.dex */
public class HttpRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final MediaType g = MediaType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("application/json;charset=UTF-8");
    public static final HashMap h = new HashMap();
    public static final OkHttpClient i = new OkHttpClient();

    /* renamed from: a */
    public boolean f5330a;
    public String b = "https://api.cdreader.com/";
    public final ConcurrentHashMap c = new ConcurrentHashMap();
    public final ConcurrentHashMap d = new ConcurrentHashMap();
    public OkHttpClient e;
    public Retrofit f;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001J,\u0010\u0007\u001a\u00020\u00062\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\u0004H\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\b\u001a\u00020\u0003H\u0007J\b\u0010\u000b\u001a\u00020\nH\u0007R \u0010\r\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0014\u001a\u00020\u00138\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u0012\u0004\b\u0016\u0010\u0012R0\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/changdu/component/http/HttpRequest$Companion;", "", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "map", "", "setRetryHostMap", "key", "getRetryHost", "Lokhttp3/OkHttpClient$Builder;", "createNewOkHttpClientBuilder", "Lokhttp3/MediaType;", "JSON_CONTENT_TYPE", "Lokhttp3/MediaType;", "getJSON_CONTENT_TYPE", "()Lokhttp3/MediaType;", "getJSON_CONTENT_TYPE$annotations", "()V", "Lokhttp3/OkHttpClient;", "defaultOkHttpClient", "Lokhttp3/OkHttpClient;", "getDefaultOkHttpClient$annotations", "retryHostMap", "Ljava/util/HashMap;", "http_release"}, k = 1, mv = {1, 9, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final OkHttpClient.Builder createNewOkHttpClientBuilder() {
            return HttpRequest.i.Wwwwwwww();
        }

        @NotNull
        public final MediaType getJSON_CONTENT_TYPE() {
            return HttpRequest.g;
        }

        @JvmStatic
        @Nullable
        public final String getRetryHost(@NotNull String str) {
            return (String) HttpRequest.h.get(str);
        }

        @JvmStatic
        public final void setRetryHostMap(@NotNull HashMap<String, String> hashMap) {
            HttpRequest.h.clear();
            HttpRequest.h.putAll(hashMap);
        }

        public Companion() {
        }

        @JvmStatic
        public static /* synthetic */ void getJSON_CONTENT_TYPE$annotations() {
        }
    }

    @JvmStatic
    @NotNull
    public static final OkHttpClient.Builder createNewOkHttpClientBuilder() {
        return Companion.createNewOkHttpClientBuilder();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RequestBody createRequestBody$default(HttpRequest httpRequest, HashMap hashMap, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                hashMap = null;
            }
            return httpRequest.createRequestBody(hashMap);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createRequestBody");
    }

    public static /* synthetic */ RequestBody createRequestBodyFromStr$default(HttpRequest httpRequest, String str, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                str = "";
            }
            return httpRequest.createRequestBodyFromStr(str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createRequestBodyFromStr");
    }

    public static /* synthetic */ Object getApiService$default(HttpRequest httpRequest, Class cls, boolean z, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                z = true;
            }
            return httpRequest.getApiService(cls, z);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getApiService");
    }

    @NotNull
    public static final MediaType getJSON_CONTENT_TYPE() {
        return Companion.getJSON_CONTENT_TYPE();
    }

    public static /* synthetic */ Retrofit getRetrofit$default(HttpRequest httpRequest, String str, boolean z, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                z = true;
            }
            return httpRequest.getRetrofit(str, z);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getRetrofit");
    }

    @JvmStatic
    @Nullable
    public static final String getRetryHost(@NotNull String str) {
        return Companion.getRetryHost(str);
    }

    @JvmStatic
    public static final void setRetryHostMap(@NotNull HashMap<String, String> hashMap) {
        Companion.setRetryHostMap(hashMap);
    }

    @NotNull
    public final RequestBody createRequestBody(@Nullable HashMap<String, Object> hashMap) {
        String str;
        if (hashMap != null && !hashMap.isEmpty()) {
            try {
                str = new GsonBuilder().disableHtmlEscaping().create().toJson(hashMap);
            } catch (Exception e) {
                e.printStackTrace();
                str = "";
            }
        } else {
            str = JsonUtils.EMPTY_JSON;
        }
        return RequestBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, g);
    }

    @NotNull
    public final RequestBody createRequestBodyFromStr(@NotNull String str) {
        return RequestBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, g);
    }

    public final <T> void executeAsync(@NotNull Call<T> call) {
        call.Wwwwwwwwwwwwwwwwwwwwwwwwwww(new Callback<T>() { // from class: com.changdu.component.http.HttpRequest$executeAsync$1
            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<T> call2, @NotNull Response<T> response) {
                response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww();
                response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kkkkkkkkkkkkk();
            }

            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<T> call2, @NotNull Throwable th) {
            }
        });
    }

    @WorkerThread
    @Nullable
    public final <T> T executeSync(@NotNull Call<T> call) {
        try {
            return call.execute().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final synchronized <S> S getApiService(@NotNull Class<S> cls, boolean z) {
        S s;
        String name = cls.getName();
        s = (S) this.d.get(name);
        if (s == null) {
            s = (S) getRetrofit().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
            if (z) {
                this.d.putIfAbsent(name, s);
            }
        }
        return s;
    }

    public final boolean getDebug() {
        return this.f5330a;
    }

    @NotNull
    public final Retrofit getRetrofit() {
        SSLSocketFactory sSLSocketFactory;
        X509TrustManager x509TrustManager;
        Retrofit retrofit = this.f;
        if (retrofit != null) {
            return retrofit;
        }
        if (this.e == null) {
            OkHttpClient.Builder createNewOkHttpClientBuilder = Companion.createNewOkHttpClientBuilder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            createNewOkHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(15L, timeUnit);
            createNewOkHttpClientBuilder.Kkkkkkkkkkkkkkkk(15L, timeUnit);
            createNewOkHttpClientBuilder.Illllllllllllllllllllllll(15L, timeUnit);
            createNewOkHttpClientBuilder.Kkkkkkkkkkkkkkk(true);
            createNewOkHttpClientBuilder.Kkkkkkkkkkkkkkkkkk(SslHelper.UnSafeHostnameVerifier);
            SslHelper.SSLParams sslSocketFactory = SslHelper.getSslSocketFactory();
            if (sslSocketFactory != null && (sSLSocketFactory = sslSocketFactory.sSLSocketFactory) != null && (x509TrustManager = sslSocketFactory.trustManager) != null) {
                createNewOkHttpClientBuilder.Illlllllllllllllllllllllll(sSLSocketFactory, x509TrustManager);
            }
            SslHelper.enableTlsOnPreLollipop(createNewOkHttpClientBuilder, new InputStream[0]);
            OkHttpClient.Builder okHttpClientBuilder = setOkHttpClientBuilder(createNewOkHttpClientBuilder);
            okHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new CDHttpRetryInterceptor());
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, null);
            if (this.f5330a) {
                httpLoggingInterceptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpLoggingInterceptor.Level.BODY);
                okHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpLoggingInterceptor);
                okHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new CDHttpDetailLoggingInterceptor());
            } else {
                httpLoggingInterceptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpLoggingInterceptor.Level.NONE);
            }
            this.e = okHttpClientBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        Retrofit.Builder builder = new Retrofit.Builder();
        builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.b).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.e);
        Retrofit.Builder retrofitBuilder = setRetrofitBuilder(builder);
        List<Converter.Factory> Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = retrofitBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            retrofitBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ScalarsConverterFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            retrofitBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GsonConverterFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        Retrofit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = retrofitBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final void setBaseUrl(@NotNull String str) {
        this.b = str;
        this.c.clear();
        this.d.clear();
        this.f = null;
        this.e = null;
    }

    public final void setDebug(boolean z) {
        this.f5330a = z;
    }

    public static /* synthetic */ Object getApiService$default(HttpRequest httpRequest, Class cls, String str, boolean z, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 4) != 0) {
                z = true;
            }
            return httpRequest.getApiService(cls, str, z);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getApiService");
    }

    public final synchronized <S> S getApiService(@NotNull Class<S> cls, @NonNull @NotNull String str, boolean z) {
        S s;
        String name = cls.getName();
        s = (S) this.d.get(name);
        if (s == null) {
            s = (S) getRetrofit(str, z).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
            if (z) {
                this.d.putIfAbsent(name, s);
            }
        }
        return s;
    }

    @NotNull
    public final Retrofit getRetrofit(@NotNull String str, boolean z) {
        getRetrofit();
        if (Intrinsics.areEqual(this.f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str))) {
            return this.f;
        }
        Retrofit retrofit = (Retrofit) this.c.get(str);
        if (retrofit == null) {
            retrofit = this.f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (z) {
                this.c.putIfAbsent(str, retrofit);
            }
        }
        return retrofit;
    }

    @NotNull
    public OkHttpClient.Builder setOkHttpClientBuilder(@NotNull OkHttpClient.Builder builder) {
        return builder;
    }

    @NotNull
    public Retrofit.Builder setRetrofitBuilder(@NotNull Retrofit.Builder builder) {
        return builder;
    }
}
