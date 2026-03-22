package okhttp3.internal.http;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0011JM\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0003\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u0003\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001b\u0010 \u001a\u0004\b!\u0010\"R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010#R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010$R\u001c\u0010\n\u001a\u0004\u0018\u00010\t8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0012\u0010%\u001a\u0004\b&\u0010'R\u001a\u0010\f\u001a\u00020\u000b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010\u001cR\u001a\u0010\r\u001a\u00020\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b!\u0010$\u001a\u0004\b+\u0010\u0018R\u001a\u0010\u000e\u001a\u00020\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b+\u0010$\u001a\u0004\b,\u0010\u0018R\u001a\u0010\u000f\u001a\u00020\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b&\u0010$\u001a\u0004\b-\u0010\u0018R\u0016\u0010.\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010$¨\u0006/"}, d2 = {"Lokhttp3/internal/http/RealInterceptorChain;", "Lokhttp3/Interceptor$Chain;", "Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, "", "Lokhttp3/Interceptor;", "interceptors", "", FirebaseAnalytics.Param.INDEX, "Lokhttp3/internal/connection/Exchange;", "exchange", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "connectTimeoutMillis", "readTimeoutMillis", "writeTimeoutMillis", "<init>", "(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;III)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;III)Lokhttp3/internal/http/RealInterceptorChain;", "Lokhttp3/Connection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Connection;", "Wwwwwwwwwwwwwwwwwwwwwww", "()I", "Lokhttp3/Call;", "()Lokhttp3/Call;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Request;", "Lokhttp3/Response;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;)Lokhttp3/Response;", "Lokhttp3/internal/connection/RealCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/connection/RealCall;", "Ljava/util/List;", "I", "Lokhttp3/internal/connection/Exchange;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/connection/Exchange;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Request;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "calls", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class RealInterceptorChain implements Interceptor.Chain {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww */
    public int f12720Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final int f12721Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final int f12722Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final int f12723Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final Request f12724Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final Exchange f12725Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final int f12726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final List<Interceptor> f12727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final RealCall f12728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* JADX WARN: Multi-variable type inference failed */
    public RealInterceptorChain(@NotNull RealCall realCall, @NotNull List<? extends Interceptor> list, int i, @Nullable Exchange exchange, @NotNull Request request, int i2, int i3, int i4) {
        this.f12728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = realCall;
        this.f12727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f12726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f12725Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = exchange;
        this.f12724Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request;
        this.f12723Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f12722Wwwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
        this.f12721Wwwwwwwwwwwwwwwwwwwwwwwwwww = i4;
    }

    public static /* synthetic */ RealInterceptorChain Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RealInterceptorChain realInterceptorChain, int i, Exchange exchange, Request request, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = realInterceptorChain.f12726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i5 & 2) != 0) {
            exchange = realInterceptorChain.f12725Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i5 & 4) != 0) {
            request = realInterceptorChain.f12724Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i5 & 8) != 0) {
            i2 = realInterceptorChain.f12723Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i5 & 16) != 0) {
            i3 = realInterceptorChain.f12722Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i5 & 32) != 0) {
            i4 = realInterceptorChain.f12721Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        int i6 = i3;
        int i7 = i4;
        return realInterceptorChain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, exchange, request, i2, i6, i7);
    }

    public int Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12722Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12721Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Request Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12724Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12722Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Exchange Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12725Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12723Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final RealCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final RealInterceptorChain Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @Nullable Exchange exchange, @NotNull Request request, int i2, int i3, int i4) {
        return new RealInterceptorChain(this.f12728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, exchange, request, i2, i3, i4);
    }

    @Override // okhttp3.Interceptor.Chain
    @Nullable
    public Connection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Exchange exchange = this.f12725Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (exchange == null) {
            return null;
        }
        return exchange.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request) throws IOException {
        if (this.f12726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww < this.f12727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size()) {
            this.f12720Wwwwwwwwwwwwwwwwwwwwwwwwww++;
            Exchange exchange = this.f12725Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (exchange != null) {
                if (exchange.Wwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwww())) {
                    if (this.f12720Wwwwwwwwwwwwwwwwwwwwwwwwww != 1) {
                        throw new IllegalStateException(("network interceptor " + this.f12727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(this.f12726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - 1) + " must call proceed() exactly once").toString());
                    }
                } else {
                    throw new IllegalStateException(("network interceptor " + this.f12727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(this.f12726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - 1) + " must retain the same host and port").toString());
                }
            }
            RealInterceptorChain Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, this.f12726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + 1, null, request, 0, 0, 0, 58, null);
            Interceptor interceptor = this.f12727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(this.f12726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Response intercept = interceptor.intercept(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (intercept != null) {
                if (this.f12725Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && this.f12726Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + 1 < this.f12727Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f12720Wwwwwwwwwwwwwwwwwwwwwwwwww != 1) {
                    throw new IllegalStateException(("network interceptor " + interceptor + " must call proceed() exactly once").toString());
                } else if (intercept.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                    return intercept;
                } else {
                    throw new IllegalStateException(("interceptor " + interceptor + " returned a response with no body").toString());
                }
            }
            throw new NullPointerException("interceptor " + interceptor + " returned null");
        }
        throw new IllegalStateException("Check failed.");
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12724Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Call call() {
        return this.f12728Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
