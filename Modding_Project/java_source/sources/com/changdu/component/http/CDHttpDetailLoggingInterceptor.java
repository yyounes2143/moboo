package com.changdu.component.http;

import j$.util.Objects;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"Lcom/changdu/component/http/CDHttpDetailLoggingInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "<init>", "()V", "http_release"}, k = 1, mv = {1, 9, 0})
/* loaded from: classes3.dex */
public final class CDHttpDetailLoggingInterceptor implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    public final String f5329a = "CDHttp";
    public final Charset b = Charset.forName("UTF-8");

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) {
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
            Buffer buffer = new Buffer();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.writeTo(buffer);
            Charset charset = this.b;
            MediaType contentType = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.contentType();
            if (contentType != null) {
                charset = contentType.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.b);
            }
            buffer.Wwwwwwwwww(charset);
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        HttpUrl Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww();
        Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Objects.toString(Wwwwwwwwwwwwwwwwwwwwwwww2);
        Objects.toString(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        long nanoTime = System.nanoTime();
        Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        BufferedSource source = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.source();
        source.Wwwwwwwwwwwwwwwwwwwwwww(Long.MAX_VALUE);
        Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = source.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Charset charset2 = this.b;
        MediaType contentType2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.contentType();
        if (contentType2 != null) {
            charset2 = contentType2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.b);
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.clone().Wwwwwwwwww(charset2);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkk();
        HttpUrl Wwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwww();
        Protocol Kkkkkkkkkk2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkk();
        Objects.toString(Wwwwwwwwwwwwwwwwwwwwwwww3);
        Objects.toString(Kkkkkkkkkk2);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
