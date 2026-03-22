package retrofit2;

import j$.util.Objects;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class HttpException extends RuntimeException {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final transient Response<?> f14196Wwwwwwwwwwwwwwwwwwwwwwwww;
    private final int code;
    private final String message;

    public HttpException(Response<?> response) {
        super(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response));
        this.code = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.message = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f14196Wwwwwwwwwwwwwwwwwwwwwwwww = response;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Response<?> response) {
        Objects.requireNonNull(response, "response == null");
        return "HTTP " + response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + " " + response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public int code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    @Nullable
    public Response<?> response() {
        return this.f14196Wwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
