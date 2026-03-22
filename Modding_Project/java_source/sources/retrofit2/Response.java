package retrofit2;

import j$.util.Objects;
import javax.annotation.Nullable;
import okhttp3.ResponseBody;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Response<T> {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResponseBody f14327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final T f14328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final okhttp3.Response f14329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Response(okhttp3.Response response, @Nullable T t, @Nullable ResponseBody responseBody) {
        this.f14329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response;
        this.f14328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = t;
        this.f14327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = responseBody;
    }

    public static <T> Response<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable T t, okhttp3.Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.Kkkkkkkkkkkkkkk()) {
            return new Response<>(response, t, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public static <T> Response<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResponseBody responseBody, okhttp3.Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (!response.Kkkkkkkkkkkkkkk()) {
            return new Response<>(response, null, responseBody);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }

    public okhttp3.Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkk();
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkk();
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkk();
    }

    @Nullable
    public T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String toString() {
        return this.f14329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString();
    }
}
