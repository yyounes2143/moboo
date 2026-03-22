package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.Closeable;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.Headers;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http.HttpHeaders;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b0\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001aB}\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0000\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0000\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019J%\u0010\u001c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001a\u001a\u00020\u00062\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\u001f\u0010 J\u0013\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010)R\u0017\u0010\u0003\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u0017\u0010\u0005\u001a\u00020\u00048\u0007¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0017\u0010\u0007\u001a\u00020\u00068\u0007¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u0010)R\u0017\u0010\t\u001a\u00020\b8\u0007¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0007¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0017\u0010\r\u001a\u00020\f8\u0007¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0007¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00008\u0007¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00008\u0007¢\u0006\f\n\u0004\bI\u0010F\u001a\u0004\bJ\u0010HR\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00008\u0007¢\u0006\f\n\u0004\bK\u0010F\u001a\u0004\bL\u0010HR\u0017\u0010\u0014\u001a\u00020\u00138\u0007¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010PR\u0017\u0010\u0015\u001a\u00020\u00138\u0007¢\u0006\f\n\u0004\bJ\u0010N\u001a\u0004\bQ\u0010PR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0001X\u0080\u0004¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010UR\u0018\u0010Y\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0011\u0010]\u001a\u00020Z8F¢\u0006\u0006\u001a\u0004\b[\u0010\\R\u0011\u0010`\u001a\u00020V8G¢\u0006\u0006\u001a\u0004\b^\u0010_¨\u0006b"}, d2 = {"Lokhttp3/Response;", "Ljava/io/Closeable;", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "Lokhttp3/Protocol;", "protocol", "", "message", "", "code", "Lokhttp3/Handshake;", "handshake", "Lokhttp3/Headers;", "headers", "Lokhttp3/ResponseBody;", "body", "networkResponse", "cacheResponse", "priorResponse", "", "sentRequestAtMillis", "receivedResponseAtMillis", "Lokhttp3/internal/connection/Exchange;", "exchange", "<init>", "(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/Exchange;)V", "name", "defaultValue", "Kkkkkkkkkkkkkkkkkk", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "Lokhttp3/Response$Builder;", "Kkkkkkkkkkkk", "()Lokhttp3/Response$Builder;", "", "Lokhttp3/Challenge;", "Kkkkkkkkkkkkkkkkkkkkkkk", "()Ljava/util/List;", "", "close", "()V", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Request;", "Kkkkkkkk", "()Lokhttp3/Request;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Protocol;", "Kkkkkkkkkk", "()Lokhttp3/Protocol;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Kkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwww", "I", "Kkkkkkkkkkkkkkkkkkkkkk", "()I", "Wwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Handshake;", "Kkkkkkkkkkkkkkkkkkkk", "()Lokhttp3/Handshake;", "Wwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "Kkkkkkkkkkkkkkkk", "()Lokhttp3/Headers;", "Wwwwwwwwwwwwwwwwwww", "Lokhttp3/ResponseBody;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/ResponseBody;", "Wwwwwwwwwwwwwwwwww", "Lokhttp3/Response;", "Kkkkkkkkkkkkk", "()Lokhttp3/Response;", "Wwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "Kkkkkkkkkkk", "Wwwwwwwwwwwwwww", "J", "Kkkkkkk", "()J", "Kkkkkkkkk", "Wwwwwwwwwwwww", "Lokhttp3/internal/connection/Exchange;", "Kkkkkkkkkkkkkkkkkkkkk", "()Lokhttp3/internal/connection/Exchange;", "Lokhttp3/CacheControl;", "Wwwwwwwwwwww", "Lokhttp3/CacheControl;", "lazyCacheControl", "", "Kkkkkkkkkkkkkkk", "()Z", "isSuccessful", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/CacheControl;", "cacheControl", "Builder", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Response implements Closeable, AutoCloseable {
    @Nullable

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public CacheControl f12450Wwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public final Exchange f12451Wwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public final long f12452Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f12453Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Response f12454Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Response f12455Wwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Response f12456Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResponseBody f12457Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Headers f12458Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handshake f12459Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f12460Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12461Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Protocol f12462Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Request f12463Wwwwwwwwwwwwwwwwwwwwwwwww;

    public Response(@NotNull Request request, @NotNull Protocol protocol, @NotNull String str, int i, @Nullable Handshake handshake, @NotNull Headers headers, @Nullable ResponseBody responseBody, @Nullable Response response, @Nullable Response response2, @Nullable Response response3, long j, long j2, @Nullable Exchange exchange) {
        this.f12463Wwwwwwwwwwwwwwwwwwwwwwwww = request;
        this.f12462Wwwwwwwwwwwwwwwwwwwwwwww = protocol;
        this.f12461Wwwwwwwwwwwwwwwwwwwwwww = str;
        this.f12460Wwwwwwwwwwwwwwwwwwwwww = i;
        this.f12459Wwwwwwwwwwwwwwwwwwwww = handshake;
        this.f12458Wwwwwwwwwwwwwwwwwwww = headers;
        this.f12457Wwwwwwwwwwwwwwwwwww = responseBody;
        this.f12456Wwwwwwwwwwwwwwwwww = response;
        this.f12455Wwwwwwwwwwwwwwwww = response2;
        this.f12454Wwwwwwwwwwwwwwww = response3;
        this.f12453Wwwwwwwwwwwwwww = j;
        this.f12452Wwwwwwwwwwwwww = j2;
        this.f12451Wwwwwwwwwwwww = exchange;
    }

    public static /* synthetic */ String Kkkkkkkkkkkkkkkkk(Response response, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return response.Kkkkkkkkkkkkkkkkkk(str, str2);
    }

    @JvmName(name = "sentRequestAtMillis")
    public final long Kkkkkkk() {
        return this.f12453Wwwwwwwwwwwwwww;
    }

    @JvmName(name = AdActivity.REQUEST_KEY_EXTRA)
    @NotNull
    public final Request Kkkkkkkk() {
        return this.f12463Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "receivedResponseAtMillis")
    public final long Kkkkkkkkk() {
        return this.f12452Wwwwwwwwwwwwww;
    }

    @JvmName(name = "protocol")
    @NotNull
    public final Protocol Kkkkkkkkkk() {
        return this.f12462Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "priorResponse")
    @Nullable
    public final Response Kkkkkkkkkkk() {
        return this.f12454Wwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Builder Kkkkkkkkkkkk() {
        return new Builder(this);
    }

    @JvmName(name = "networkResponse")
    @Nullable
    public final Response Kkkkkkkkkkkkk() {
        return this.f12456Wwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "message")
    @NotNull
    public final String Kkkkkkkkkkkkkk() {
        return this.f12461Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Kkkkkkkkkkkkkkk() {
        int i = this.f12460Wwwwwwwwwwwwwwwwwwwwww;
        if (200 > i || i >= 300) {
            return false;
        }
        return true;
    }

    @JvmName(name = "headers")
    @NotNull
    public final Headers Kkkkkkkkkkkkkkkk() {
        return this.f12458Wwwwwwwwwwwwwwwwwwww;
    }

    @JvmOverloads
    @Nullable
    public final String Kkkkkkkkkkkkkkkkkk(@NotNull String str, @Nullable String str2) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12458Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return str2;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @JvmOverloads
    @Nullable
    public final String Kkkkkkkkkkkkkkkkkkk(@NotNull String str) {
        return Kkkkkkkkkkkkkkkkk(this, str, null, 2, null);
    }

    @JvmName(name = "handshake")
    @Nullable
    public final Handshake Kkkkkkkkkkkkkkkkkkkk() {
        return this.f12459Wwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "exchange")
    @Nullable
    public final Exchange Kkkkkkkkkkkkkkkkkkkkk() {
        return this.f12451Wwwwwwwwwwwww;
    }

    @JvmName(name = "code")
    public final int Kkkkkkkkkkkkkkkkkkkkkk() {
        return this.f12460Wwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<Challenge> Kkkkkkkkkkkkkkkkkkkkkkk() {
        String str;
        Headers headers = this.f12458Wwwwwwwwwwwwwwwwwwww;
        int i = this.f12460Wwwwwwwwwwwwwwwwwwwwww;
        if (i != 401) {
            if (i != 407) {
                return CollectionsKt.emptyList();
            }
            str = "Proxy-Authenticate";
        } else {
            str = "WWW-Authenticate";
        }
        return HttpHeaders.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(headers, str);
    }

    @JvmName(name = "cacheResponse")
    @Nullable
    public final Response Wwwwwwwwwwwwww() {
        return this.f12455Wwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "cacheControl")
    @NotNull
    public final CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        CacheControl cacheControl = this.f12450Wwwwwwwwwwww;
        if (cacheControl == null) {
            CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CacheControl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12458Wwwwwwwwwwwwwwwwwwww);
            this.f12450Wwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return cacheControl;
    }

    @JvmName(name = "body")
    @Nullable
    public final ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12457Wwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ResponseBody responseBody = this.f12457Wwwwwwwwwwwwwwwwwww;
        if (responseBody != null) {
            responseBody.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    @NotNull
    public String toString() {
        return "Response{protocol=" + this.f12462Wwwwwwwwwwwwwwwwwwwwwwww + ", code=" + this.f12460Wwwwwwwwwwwwwwwwwwwwww + ", message=" + this.f12461Wwwwwwwwwwwwwwwwwwwwwww + ", url=" + this.f12463Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww() + AbstractJsonLexerKt.END_OBJ;
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u001e\b\u0016\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J!\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\f\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0006J\u0017\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u00020\u00002\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010!\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0016¢\u0006\u0004\b!\u0010\"J\u001f\u0010#\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0016¢\u0006\u0004\b#\u0010\"J\u0017\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u0019\u0010*\u001a\u00020\u00002\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b*\u0010+J\u0019\u0010-\u001a\u00020\u00002\b\u0010,\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b-\u0010.J\u0019\u00100\u001a\u00020\u00002\b\u0010/\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b0\u0010.J\u0019\u00102\u001a\u00020\u00002\b\u00101\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b2\u0010.J\u0017\u00105\u001a\u00020\u00002\u0006\u00104\u001a\u000203H\u0016¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u00020\u00002\u0006\u00107\u001a\u000203H\u0016¢\u0006\u0004\b8\u00106J\u0017\u0010;\u001a\u00020\t2\u0006\u0010:\u001a\u000209H\u0000¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0004H\u0016¢\u0006\u0004\b=\u0010>R$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b#\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR$\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b*\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\"\u0010\u0016\u001a\u00020\u00158\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b=\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR$\u0010\u0019\u001a\u0004\u0018\u00010\u00078\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b0\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR$\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\f\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\"\u0010%\u001a\u00020X8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\n\u0010Y\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R$\u0010)\u001a\u0004\u0018\u00010(8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR$\u0010,\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bJ\u0010c\u001a\u0004\bd\u0010>\"\u0004\be\u0010\u0006R$\u0010/\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bZ\u0010c\u001a\u0004\bf\u0010>\"\u0004\bg\u0010\u0006R$\u00101\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010c\u001a\u0004\bh\u0010>\"\u0004\bi\u0010\u0006R\"\u00104\u001a\u0002038\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b!\u0010j\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\"\u00107\u001a\u0002038\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b&\u0010j\u001a\u0004\bo\u0010l\"\u0004\bp\u0010nR$\u0010u\u001a\u0004\u0018\u0001098\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b;\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010<¨\u0006v"}, d2 = {"Lokhttp3/Response$Builder;", "", "<init>", "()V", "Lokhttp3/Response;", "response", "(Lokhttp3/Response;)V", "", "name", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lokhttp3/Response;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "Wwwwwwwwwwwwwwww", "(Lokhttp3/Request;)Lokhttp3/Response$Builder;", "Lokhttp3/Protocol;", "protocol", "Wwwwwwwwwwwwwwwwww", "(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;", "", "code", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Lokhttp3/Response$Builder;", "message", "Wwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokhttp3/Response$Builder;", "Lokhttp3/Handshake;", "handshake", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;", "value", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "headers", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;)Lokhttp3/Response$Builder;", "Lokhttp3/ResponseBody;", "body", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;", "networkResponse", "Wwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)Lokhttp3/Response$Builder;", "cacheResponse", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "priorResponse", "Wwwwwwwwwwwwwwwwwww", "", "sentRequestAtMillis", "Wwwwwwwwwwwwwww", "(J)Lokhttp3/Response$Builder;", "receivedResponseAtMillis", "Wwwwwwwwwwwwwwwww", "Lokhttp3/internal/connection/Exchange;", "deferredTrailers", "Wwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/connection/Exchange;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Response;", "Lokhttp3/Request;", "getRequest$okhttp", "()Lokhttp3/Request;", "Wwww", "(Lokhttp3/Request;)V", "Lokhttp3/Protocol;", "getProtocol$okhttp", "()Lokhttp3/Protocol;", "Wwwwww", "(Lokhttp3/Protocol;)V", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "Wwwwwwwwwwww", "(I)V", "Ljava/lang/String;", "getMessage$okhttp", "()Ljava/lang/String;", "Wwwwwwwww", "(Ljava/lang/String;)V", "Lokhttp3/Handshake;", "getHandshake$okhttp", "()Lokhttp3/Handshake;", "Wwwwwwwwwww", "(Lokhttp3/Handshake;)V", "Lokhttp3/Headers$Builder;", "Lokhttp3/Headers$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Headers$Builder;", "Wwwwwwwwww", "(Lokhttp3/Headers$Builder;)V", "Lokhttp3/ResponseBody;", "getBody$okhttp", "()Lokhttp3/ResponseBody;", "Wwwwwwwwwwwwww", "(Lokhttp3/ResponseBody;)V", "Lokhttp3/Response;", "getNetworkResponse$okhttp", "Wwwwwwww", "getCacheResponse$okhttp", "Wwwwwwwwwwwww", "getPriorResponse$okhttp", "Wwwwwww", "J", "getSentRequestAtMillis$okhttp", "()J", "Www", "(J)V", "getReceivedResponseAtMillis$okhttp", "Wwwww", "Lokhttp3/internal/connection/Exchange;", "getExchange$okhttp", "()Lokhttp3/internal/connection/Exchange;", "setExchange$okhttp", "exchange", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static class Builder {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Exchange f12464Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f12465Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f12466Wwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Response f12467Wwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Response f12468Wwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Response f12469Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ResponseBody f12470Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Headers.Builder f12471Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Handshake f12472Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f12473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Protocol f12475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Request f12476Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            this.f12474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;
            this.f12471Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Headers.Builder();
        }

        public final void Www(long j) {
            this.f12466Wwwwwwwwwwwwwwwwwwwwwwww = j;
        }

        public final void Wwww(@Nullable Request request) {
            this.f12476Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request;
        }

        public final void Wwwww(long j) {
            this.f12465Wwwwwwwwwwwwwwwwwwwwwww = j;
        }

        public final void Wwwwww(@Nullable Protocol protocol) {
            this.f12475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = protocol;
        }

        public final void Wwwwwww(@Nullable Response response) {
            this.f12467Wwwwwwwwwwwwwwwwwwwwwwwww = response;
        }

        public final void Wwwwwwww(@Nullable Response response) {
            this.f12469Wwwwwwwwwwwwwwwwwwwwwwwwwww = response;
        }

        public final void Wwwwwwwww(@Nullable String str) {
            this.f12473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final void Wwwwwwwwww(@NotNull Headers.Builder builder) {
            this.f12471Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder;
        }

        public final void Wwwwwwwwwww(@Nullable Handshake handshake) {
            this.f12472Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = handshake;
        }

        public final void Wwwwwwwwwwww(int i) {
            this.f12474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwww(@Nullable Response response) {
            this.f12468Wwwwwwwwwwwwwwwwwwwwwwwwww = response;
        }

        public final void Wwwwwwwwwwwwww(@Nullable ResponseBody responseBody) {
            this.f12470Wwwwwwwwwwwwwwwwwwwwwwwwwwww = responseBody;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwww(long j) {
            Www(j);
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwww(@NotNull Request request) {
            Wwww(request);
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwww(long j) {
            Wwwww(j);
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwww(@NotNull Protocol protocol) {
            Wwwwww(protocol);
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwww(@Nullable Response response) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response);
            Wwwwwww(response);
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwww(@Nullable Response response) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("networkResponse", response);
            Wwwwwwww(response);
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            Wwwwwwwww(str);
            return this;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull Exchange exchange) {
            this.f12464Wwwwwwwwwwwwwwwwwwwwww = exchange;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Headers headers) {
            Wwwwwwwwww(headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(str, str2);
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Handshake handshake) {
            Wwwwwwwwwww(handshake);
            return this;
        }

        @NotNull
        public final Headers.Builder Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12471Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            Wwwwwwwwwwww(i);
            return this;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Response response) {
            if (response == null) {
                return;
            }
            if (response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                if (response.Kkkkkkkkkkkkk() == null) {
                    if (response.Wwwwwwwwwwwwww() == null) {
                        if (response.Kkkkkkkkkkk() == null) {
                            return;
                        }
                        throw new IllegalArgumentException(Intrinsics.stringPlus(str, ".priorResponse != null").toString());
                    }
                    throw new IllegalArgumentException(Intrinsics.stringPlus(str, ".cacheResponse != null").toString());
                }
                throw new IllegalArgumentException(Intrinsics.stringPlus(str, ".networkResponse != null").toString());
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus(str, ".body != null").toString());
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Response response) {
            if (response == null || response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                return;
            }
            throw new IllegalArgumentException("priorResponse.body != null");
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Response response) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("cacheResponse", response);
            Wwwwwwwwwwwww(response);
            return this;
        }

        @NotNull
        public Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            int i = this.f12474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i >= 0) {
                Request request = this.f12476Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (request != null) {
                    Protocol protocol = this.f12475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (protocol != null) {
                        String str = this.f12473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (str != null) {
                            return new Response(request, protocol, str, i, this.f12472Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12471Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f12470Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12469Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12468Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f12467Wwwwwwwwwwwwwwwwwwwwwwwww, this.f12466Wwwwwwwwwwwwwwwwwwwwwwww, this.f12465Wwwwwwwwwwwwwwwwwwwwwww, this.f12464Wwwwwwwwwwwwwwwwwwwwww);
                        }
                        throw new IllegalStateException("message == null");
                    }
                    throw new IllegalStateException("protocol == null");
                }
                throw new IllegalStateException("request == null");
            }
            throw new IllegalStateException(Intrinsics.stringPlus("code < 0: ", Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwww())).toString());
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ResponseBody responseBody) {
            Wwwwwwwwwwwwww(responseBody);
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
            return this;
        }

        public Builder(@NotNull Response response) {
            this.f12474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;
            this.f12476Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkk();
            this.f12475Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkk();
            this.f12474Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkkkkkkkkkk();
            this.f12473Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkk();
            this.f12472Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkkkkkkkk();
            this.f12471Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12470Wwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12469Wwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkk();
            this.f12468Wwwwwwwwwwwwwwwwwwwwwwwwww = response.Wwwwwwwwwwwwww();
            this.f12467Wwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkk();
            this.f12466Wwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkk();
            this.f12465Wwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkk();
            this.f12464Wwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkkkkkkkkk();
        }
    }
}
