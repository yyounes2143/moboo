package com.changdu.component.httpbiz;

import com.changdu.component.http.HttpRequest;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Dns;
import okhttp3.EventListener;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.converter.scalars.ScalarsConverterFactory;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004J*\u0010\u000b\u001a\u00020\u00062\"\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\bj\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002`\tJ\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0004J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¨\u0006\u001e"}, d2 = {"Lcom/changdu/component/httpbiz/CDHttpRequest;", "Lcom/changdu/component/http/HttpRequest;", "", "httpBaseUrl", "", "debug", "", "init", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "map", "setRetryHostMap", "Lokhttp3/Interceptor;", "interceptor", "addInterceptor", "addNetworkInterceptor", "Lokhttp3/EventListener$Factory;", "eventListenerFactory", "setEventListenerFactory", "Lokhttp3/Dns;", "dns", "setDns", "enable", "setEnableProxy", "Lokhttp3/OkHttpClient$Builder;", "okHttpClientBuilder", "setOkHttpClientBuilder", "Lretrofit2/Retrofit$Builder;", "retrofitBuilder", "setRetrofitBuilder", "http-biz_release"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCDHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDHttpRequest.kt\ncom/changdu/component/httpbiz/CDHttpRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1855#2,2:114\n1855#2,2:116\n1#3:118\n*S KotlinDebug\n*F\n+ 1 CDHttpRequest.kt\ncom/changdu/component/httpbiz/CDHttpRequest\n*L\n69#1:114,2\n76#1:116,2\n*E\n"})
/* loaded from: classes3.dex */
public final class CDHttpRequest extends HttpRequest {
    @NotNull
    public static final CDHttpRequest INSTANCE = new CDHttpRequest();

    /* renamed from: a  reason: collision with root package name */
    public static final ArrayList f5332a = new ArrayList();
    public static final ArrayList b = new ArrayList();
    public static EventListener.Factory c;
    public static Dns d;
    public static boolean e;

    public static /* synthetic */ void init$default(CDHttpRequest cDHttpRequest, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        cDHttpRequest.init(str, z);
    }

    public final void addInterceptor(@NotNull Interceptor interceptor) {
        f5332a.add(interceptor);
    }

    public final void addNetworkInterceptor(@NotNull Interceptor interceptor) {
        b.add(interceptor);
    }

    public final void init(@NotNull String str, boolean z) {
        if (!StringsKt.isBlank(str) && (StringsKt.startsWith$default(str, "http://", false, 2, (Object) null) || StringsKt.startsWith$default(str, "https://", false, 2, (Object) null))) {
            setBaseUrl(str);
        }
        setDebug(z);
    }

    public final void setDns(@NotNull Dns dns) {
        d = dns;
    }

    public final void setEnableProxy(boolean z) {
        e = z;
    }

    public final void setEventListenerFactory(@NotNull EventListener.Factory factory) {
        c = factory;
    }

    @Override // com.changdu.component.http.HttpRequest
    @NotNull
    public OkHttpClient.Builder setOkHttpClientBuilder(@NotNull OkHttpClient.Builder builder) {
        builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new g());
        ArrayList arrayList = f5332a;
        int i = 0;
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Interceptor) obj);
            }
        }
        ArrayList arrayList2 = b;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            int size2 = arrayList2.size();
            while (i < size2) {
                Object obj2 = arrayList2.get(i);
                i++;
                builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Interceptor) obj2);
            }
        }
        EventListener.Factory factory = c;
        if (factory != null) {
            builder.Wwwwwwwwwwwwwwwwwwwwwwwwwww(factory);
        }
        Dns dns = d;
        if (dns != null) {
            builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(dns);
        }
        if (!e) {
            builder.Kkkkkkkkkkkkkkkkk(new h());
        }
        return builder;
    }

    @Override // com.changdu.component.http.HttpRequest
    @NotNull
    public Retrofit.Builder setRetrofitBuilder(@NotNull Retrofit.Builder builder) {
        builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ScalarsConverterFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new a(new Gson()));
        builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GsonConverterFactory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        return builder;
    }

    public final void setRetryHostMap(@NotNull HashMap<String, String> hashMap) {
        HttpRequest.Companion.setRetryHostMap(hashMap);
    }
}
