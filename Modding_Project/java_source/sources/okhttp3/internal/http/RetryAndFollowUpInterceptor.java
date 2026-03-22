package okhttp3.internal.http;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 '2\u00020\u0001:\u0001'B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ/\u0010\u0013\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J#\u0010\u001c\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010 \u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!J\u001f\u0010$\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\b2\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010&¨\u0006("}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/OkHttpClient;", "client", "<init>", "(Lokhttp3/OkHttpClient;)V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "Ljava/io/IOException;", "e", "Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Request;", "userRequest", "", "requestSendStarted", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/IOException;Lokhttp3/Request;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/IOException;Z)Z", "userResponse", "Lokhttp3/internal/connection/Exchange;", "exchange", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Request;", "", FirebaseAnalytics.Param.METHOD, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;", "", "defaultDelay", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;I)I", "Lokhttp3/OkHttpClient;", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final OkHttpClient f12732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;", "", "()V", "MAX_FOLLOW_UPS", "", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public RetryAndFollowUpInterceptor(@NotNull OkHttpClient okHttpClient) {
        this.f12732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = okHttpClient;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Response response, int i) {
        String Kkkkkkkkkkkkkkkkk2 = Response.Kkkkkkkkkkkkkkkkk(response, "Retry-After", null, 2, null);
        if (Kkkkkkkkkkkkkkkkk2 == null) {
            return i;
        }
        if (new Regex("\\d+").matches(Kkkkkkkkkkkkkkkkk2)) {
            return Integer.valueOf(Kkkkkkkkkkkkkkkkk2).intValue();
        }
        return Integer.MAX_VALUE;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IOException iOException, Request request) {
        RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isOneShot()) || (iOException instanceof FileNotFoundException)) {
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IOException iOException, RealCall realCall, Request request, boolean z) {
        if (!this.f12732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkkkk()) {
            return false;
        }
        if ((z && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iOException, request)) || !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iOException, z) || !realCall.Wwwwwwwwww()) {
            return false;
        }
        return true;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if (!(iOException instanceof SocketTimeoutException) || z) {
                return false;
            }
            return true;
        } else if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        } else {
            return true;
        }
    }

    public final Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Response response, Exchange exchange) throws IOException {
        RealConnection Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Route Wwwwwww2;
        if (exchange == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = exchange.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) == null) {
            Wwwwwww2 = null;
        } else {
            Wwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwww();
        }
        int Kkkkkkkkkkkkkkkkkkkkkk2 = response.Kkkkkkkkkkkkkkkkkkkkkk();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Kkkkkkkkkkkkkkkkkkkkkk2 != 307 && Kkkkkkkkkkkkkkkkkkkkkk2 != 308) {
            if (Kkkkkkkkkkkkkkkkkkkkkk2 != 401) {
                if (Kkkkkkkkkkkkkkkkkkkkkk2 != 421) {
                    if (Kkkkkkkkkkkkkkkkkkkkkk2 != 503) {
                        if (Kkkkkkkkkkkkkkkkkkkkkk2 != 407) {
                            if (Kkkkkkkkkkkkkkkkkkkkkk2 != 408) {
                                switch (Kkkkkkkkkkkkkkkkkkkkkk2) {
                                    case 300:
                                    case 301:
                                    case 302:
                                    case 303:
                                        break;
                                    default:
                                        return null;
                                }
                            } else if (!this.f12732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkkkk()) {
                                return null;
                            } else {
                                RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isOneShot()) {
                                    return null;
                                }
                                Response Kkkkkkkkkkk2 = response.Kkkkkkkkkkk();
                                if ((Kkkkkkkkkkk2 != null && Kkkkkkkkkkk2.Kkkkkkkkkkkkkkkkkkkkkk() == 408) || Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(response, 0) > 0) {
                                    return null;
                                }
                                return response.Kkkkkkkk();
                            }
                        } else if (Wwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().type() == Proxy.Type.HTTP) {
                            return this.f12732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwww2, response);
                        } else {
                            throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                        }
                    } else {
                        Response Kkkkkkkkkkk3 = response.Kkkkkkkkkkk();
                        if ((Kkkkkkkkkkk3 != null && Kkkkkkkkkkk3.Kkkkkkkkkkkkkkkkkkkkkk() == 503) || Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(response, Integer.MAX_VALUE) != 0) {
                            return null;
                        }
                        return response.Kkkkkkkk();
                    }
                } else {
                    RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.isOneShot()) || exchange == null || !exchange.Wwwwwwwwwwwwwwwwwwwwwww()) {
                        return null;
                    }
                    exchange.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwww();
                    return response.Kkkkkkkk();
                }
            } else {
                return this.f12732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwww2, response);
            }
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response, Wwwwwwwwwwwwwwwwwwwwwwwwwww3);
    }

    public final Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Response response, String str) {
        String Kkkkkkkkkkkkkkkkk2;
        HttpUrl Wwwwwwwwwwwwwwww2;
        boolean z;
        RequestBody requestBody = null;
        if (!this.f12732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww() || (Kkkkkkkkkkkkkkkkk2 = Response.Kkkkkkkkkkkkkkkkk(response, "Location", null, 2, null)) == null || (Wwwwwwwwwwwwwwww2 = response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkk2)) == null) {
            return null;
        }
        if (!Intrinsics.areEqual(Wwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwww(), response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwww()) && !this.f12732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww()) {
            return null;
        }
        Request.Builder Wwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (HttpMethod.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
            int Kkkkkkkkkkkkkkkkkkkkkk2 = response.Kkkkkkkkkkkkkkkkkkkkkk();
            HttpMethod httpMethod = HttpMethod.INSTANCE;
            if (!httpMethod.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str) && Kkkkkkkkkkkkkkkkkkkkkk2 != 308 && Kkkkkkkkkkkkkkkkkkkkkk2 != 307) {
                z = false;
            } else {
                z = true;
            }
            if (httpMethod.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str) && Kkkkkkkkkkkkkkkkkkkkkk2 != 308 && Kkkkkkkkkkkkkkkkkkkkkk2 != 307) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww("GET", null);
            } else {
                if (z) {
                    requestBody = response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(str, requestBody);
            }
            if (!z) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww(com.google.common.net.HttpHeaders.TRANSFER_ENCODING);
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww("Content-Length");
                Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww("Content-Type");
            }
        }
        if (!Util.Wwwwwwwwwwwwwwwwwwwwwwwww(response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwww2)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww("Authorization");
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        r0 = r1.Wwwwwwwwwwwwwwwwwww();
        r6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
        if (r6 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
        if (r0 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
        if (r0.Wwwwwwwwwwwwwwwwwwwwww() == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
        r1.Wwwwwwww();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        r1.Wwwwwwwwwwwwwwwwwwwwwwww(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
        r0 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
        if (r0 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
        if (r0.isOneShot() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0065, code lost:
        r1.Wwwwwwwwwwwwwwwwwwwwwwww(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0068, code lost:
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0069, code lost:
        r0 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006d, code lost:
        if (r0 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
        okhttp3.internal.Util.Wwwwwwwwwwwwwwwwwwwwww(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
        if (r8 > 20) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008d, code lost:
        throw new java.net.ProtocolException(kotlin.jvm.internal.Intrinsics.stringPlus("Too many follow-up requests: ", java.lang.Integer.valueOf(r8)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (r7 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        r0 = r0.Kkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwww(r7.Kkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
     */
    @Override // okhttp3.Interceptor
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response intercept(@org.jetbrains.annotations.NotNull okhttp3.Interceptor.Chain r11) throws java.io.IOException {
        /*
            r10 = this;
            okhttp3.internal.http.RealInterceptorChain r11 = (okhttp3.internal.http.RealInterceptorChain) r11
            okhttp3.Request r0 = r11.Wwwwwwwwwwwwwwwwwwwwwwwww()
            okhttp3.internal.connection.RealCall r1 = r11.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            java.util.List r2 = kotlin.collections.CollectionsKt.emptyList()
            r3 = 0
            r4 = 0
            r5 = 1
            r8 = r3
            r7 = r4
        L13:
            r6 = r5
        L14:
            r1.Wwwwwwwwwwwwwwwwwwwwwwwww(r0, r6)
            boolean r6 = r1.isCanceled()     // Catch: java.lang.Throwable -> L3d
            if (r6 != 0) goto Lc8
            okhttp3.Response r0 = r11.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L8e okhttp3.internal.connection.RouteException -> La9
            if (r7 == 0) goto L3b
            okhttp3.Response$Builder r0 = r0.Kkkkkkkkkkkk()     // Catch: java.lang.Throwable -> L3d
            okhttp3.Response$Builder r6 = r7.Kkkkkkkkkkkk()     // Catch: java.lang.Throwable -> L3d
            okhttp3.Response$Builder r6 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r4)     // Catch: java.lang.Throwable -> L3d
            okhttp3.Response r6 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L3d
            okhttp3.Response$Builder r0 = r0.Wwwwwwwwwwwwwwwwwww(r6)     // Catch: java.lang.Throwable -> L3d
            okhttp3.Response r0 = r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L3d
        L3b:
            r7 = r0
            goto L40
        L3d:
            r11 = move-exception
            goto Ld0
        L40:
            okhttp3.internal.connection.Exchange r0 = r1.Wwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L3d
            okhttp3.Request r6 = r10.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7, r0)     // Catch: java.lang.Throwable -> L3d
            if (r6 != 0) goto L59
            if (r0 == 0) goto L55
            boolean r11 = r0.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L3d
            if (r11 == 0) goto L55
            r1.Wwwwwwww()     // Catch: java.lang.Throwable -> L3d
        L55:
            r1.Wwwwwwwwwwwwwwwwwwwwwwww(r3)
            return r7
        L59:
            okhttp3.RequestBody r0 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L3d
            if (r0 == 0) goto L69
            boolean r0 = r0.isOneShot()     // Catch: java.lang.Throwable -> L3d
            if (r0 == 0) goto L69
            r1.Wwwwwwwwwwwwwwwwwwwwwwww(r3)
            return r7
        L69:
            okhttp3.ResponseBody r0 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L3d
            if (r0 != 0) goto L70
            goto L73
        L70:
            okhttp3.internal.Util.Wwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L3d
        L73:
            int r8 = r8 + 1
            r0 = 20
            if (r8 > r0) goto L7e
            r1.Wwwwwwwwwwwwwwwwwwwwwwww(r5)
            r0 = r6
            goto L13
        L7e:
            java.net.ProtocolException r11 = new java.net.ProtocolException     // Catch: java.lang.Throwable -> L3d
            java.lang.String r0 = "Too many follow-up requests: "
            java.lang.Integer r2 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L3d
            java.lang.String r0 = kotlin.jvm.internal.Intrinsics.stringPlus(r0, r2)     // Catch: java.lang.Throwable -> L3d
            r11.<init>(r0)     // Catch: java.lang.Throwable -> L3d
            throw r11     // Catch: java.lang.Throwable -> L3d
        L8e:
            r6 = move-exception
            boolean r9 = r6 instanceof okhttp3.internal.http2.ConnectionShutdownException     // Catch: java.lang.Throwable -> L3d
            r9 = r9 ^ r5
            boolean r9 = r10.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r6, r1, r0, r9)     // Catch: java.lang.Throwable -> L3d
            if (r9 == 0) goto La4
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> L3d
            java.util.List r2 = kotlin.collections.CollectionsKt.plus(r2, r6)     // Catch: java.lang.Throwable -> L3d
        L9e:
            r1.Wwwwwwwwwwwwwwwwwwwwwwww(r5)
            r6 = r3
            goto L14
        La4:
            java.lang.Throwable r11 = okhttp3.internal.Util.Kkkkk(r6, r2)     // Catch: java.lang.Throwable -> L3d
            throw r11     // Catch: java.lang.Throwable -> L3d
        La9:
            r6 = move-exception
            java.io.IOException r9 = r6.getLastConnectException()     // Catch: java.lang.Throwable -> L3d
            boolean r9 = r10.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r9, r1, r0, r3)     // Catch: java.lang.Throwable -> L3d
            if (r9 == 0) goto Lbf
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> L3d
            java.io.IOException r6 = r6.getFirstConnectException()     // Catch: java.lang.Throwable -> L3d
            java.util.List r2 = kotlin.collections.CollectionsKt.plus(r2, r6)     // Catch: java.lang.Throwable -> L3d
            goto L9e
        Lbf:
            java.io.IOException r11 = r6.getFirstConnectException()     // Catch: java.lang.Throwable -> L3d
            java.lang.Throwable r11 = okhttp3.internal.Util.Kkkkk(r11, r2)     // Catch: java.lang.Throwable -> L3d
            throw r11     // Catch: java.lang.Throwable -> L3d
        Lc8:
            java.io.IOException r11 = new java.io.IOException     // Catch: java.lang.Throwable -> L3d
            java.lang.String r0 = "Canceled"
            r11.<init>(r0)     // Catch: java.lang.Throwable -> L3d
            throw r11     // Catch: java.lang.Throwable -> L3d
        Ld0:
            r1.Wwwwwwwwwwwwwwwwwwwwwwww(r5)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.RetryAndFollowUpInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }
}
