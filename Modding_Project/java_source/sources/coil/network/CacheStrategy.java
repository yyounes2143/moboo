package coil.network;

import androidx.webkit.ProxyConfig;
import coil.util.Time;
import coil.util.Utils;
import com.google.common.net.HttpHeaders;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000e\u000fB\u001d\b\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\n\u0010\f\u001a\u0004\b\b\u0010\r¨\u0006\u0010"}, d2 = {"Lcoil/network/CacheStrategy;", "", "Lokhttp3/Request;", "networkRequest", "Lcoil/network/CacheResponse;", "cacheResponse", "<init>", "(Lokhttp3/Request;Lcoil/network/CacheResponse;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Request;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Request;", "Lcoil/network/CacheResponse;", "()Lcoil/network/CacheResponse;", "Companion", "Factory", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CacheStrategy {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CacheResponse f1985Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Request f1986Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\f\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0017\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcoil/network/CacheStrategy$Companion;", "", "<init>", "()V", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "Lokhttp3/Response;", "response", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Lokhttp3/Response;)Z", "Lcoil/network/CacheResponse;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Lcoil/network/CacheResponse;)Z", "Lokhttp3/Headers;", "cachedHeaders", "networkHeaders", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;", "", "name", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
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

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request, @NotNull Response response) {
            if (!request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww() && !response.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww() && !Intrinsics.areEqual(response.Kkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.VARY), ProxyConfig.MATCH_ALL_SCHEMES)) {
                return true;
            }
            return false;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request, @NotNull CacheResponse cacheResponse) {
            if (!request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww() && !cacheResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww() && !Intrinsics.areEqual(cacheResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.VARY), ProxyConfig.MATCH_ALL_SCHEMES)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Headers headers, @NotNull Headers headers2) {
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
                String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwww(i);
                if ((!StringsKt.equals(HttpHeaders.WARNING, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, true) || !StringsKt.startsWith$default(Wwwwwwwwwwwwwwwwwwwwwwwwww2, "1", false, 2, (Object) null)) && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) || !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) || headers2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) == null)) {
                    builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
            int size2 = headers2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = headers2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) {
                    builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, headers2.Wwwwwwwwwwwwwwwwwwwwwwwwww(i2));
                }
            }
            return builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0012R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0013R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0015R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u0018R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u0015R\u0016\u0010\"\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010\u0018R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lcoil/network/CacheStrategy$Factory;", "", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "Lcoil/network/CacheResponse;", "cacheResponse", "<init>", "(Lokhttp3/Request;Lcoil/network/CacheResponse;)V", "Lcoil/network/CacheStrategy;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/network/CacheStrategy;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;)Z", "Lokhttp3/Request;", "Lcoil/network/CacheResponse;", "Ljava/util/Date;", "Ljava/util/Date;", "servedDate", "", "Ljava/lang/String;", "servedDateString", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "lastModified", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "lastModifiedString", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "expires", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "sentRequestMillis", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "receivedResponseMillis", "Wwwwwwwwwwwwwwwwwwwwwwwww", DownloadModel.ETAG, "", "Wwwwwwwwwwwwwwwwwwwwwwww", "I", "ageSeconds", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Factory {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f1987Wwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f1988Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f1989Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f1990Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Date f1991Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f1992Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Date f1993Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f1994Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Date f1995Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final CacheResponse f1996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Request f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Factory(@NotNull Request request, @Nullable CacheResponse cacheResponse) {
            this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request;
            this.f1996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cacheResponse;
            this.f1987Wwwwwwwwwwwwwwwwwwwwwwww = -1;
            if (cacheResponse != null) {
                this.f1990Wwwwwwwwwwwwwwwwwwwwwwwwwww = cacheResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                this.f1989Wwwwwwwwwwwwwwwwwwwwwwwwww = cacheResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = cacheResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
                for (int i = 0; i < size; i++) {
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
                    if (StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, "Date", true)) {
                        this.f1995Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Date");
                        this.f1994Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(i);
                    } else if (StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, "Expires", true)) {
                        this.f1991Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Expires");
                    } else if (StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, HttpHeaders.LAST_MODIFIED, true)) {
                        this.f1993Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.LAST_MODIFIED);
                        this.f1992Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(i);
                    } else if (StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, "ETag", true)) {
                        this.f1988Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(i);
                    } else if (StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, HttpHeaders.AGE, true)) {
                        this.f1987Wwwwwwwwwwwwwwwwwwwwwwww = Utils.Wwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(i), -1);
                    }
                }
            }
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
            if (request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.IF_MODIFIED_SINCE) == null && request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.IF_NONE_MATCH) == null) {
                return false;
            }
            return true;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            long j;
            long j2;
            CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                return TimeUnit.SECONDS.toMillis(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            Date date = this.f1991Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (date != null) {
                Date date2 = this.f1995Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (date2 != null) {
                    j2 = date2.getTime();
                } else {
                    j2 = this.f1989Wwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                long time = date.getTime() - j2;
                if (time <= 0) {
                    return 0L;
                }
                return time;
            }
            if (this.f1993Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww() == null) {
                Date date3 = this.f1995Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (date3 != null) {
                    j = date3.getTime();
                } else {
                    j = this.f1990Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                long time2 = j - this.f1993Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getTime();
                if (time2 > 0) {
                    return time2 / 10;
                }
            }
            return 0L;
        }

        @NotNull
        public final CacheStrategy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            long j;
            String str;
            if (this.f1996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                return new CacheStrategy(this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, null);
            }
            if (this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() && !this.f1996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return new CacheStrategy(this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, null);
            }
            CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (!CacheStrategy.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f1996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return new CacheStrategy(this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, null);
            }
            CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww() && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Math.min(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.SECONDS.toMillis(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                }
                long j2 = 0;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                    j = TimeUnit.SECONDS.toMillis(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                } else {
                    j = 0;
                }
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                    j2 = TimeUnit.SECONDS.toMillis(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww() && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 + j < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + j2) {
                    return new CacheStrategy(null, this.f1996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
                }
                String str2 = this.f1988Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (str2 != null) {
                    str = HttpHeaders.IF_NONE_MATCH;
                } else {
                    Date date = this.f1993Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    str = HttpHeaders.IF_MODIFIED_SINCE;
                    if (date != null) {
                        str2 = this.f1992Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    } else if (this.f1995Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                        str2 = this.f1994Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    } else {
                        return new CacheStrategy(this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, null);
                    }
                }
                return new CacheStrategy(this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f1996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
            }
            return new CacheStrategy(this.f1997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, null);
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Date date = this.f1995Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            long j = 0;
            if (date != null) {
                j = Math.max(0L, this.f1989Wwwwwwwwwwwwwwwwwwwwwwwwww - date.getTime());
            }
            int i = this.f1987Wwwwwwwwwwwwwwwwwwwwwwww;
            if (i != -1) {
                j = Math.max(j, TimeUnit.SECONDS.toMillis(i));
            }
            return j + (this.f1989Wwwwwwwwwwwwwwwwwwwwwwwwww - this.f1990Wwwwwwwwwwwwwwwwwwwwwwwwwww) + (Time.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - this.f1989Wwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public /* synthetic */ CacheStrategy(Request request, CacheResponse cacheResponse, DefaultConstructorMarker defaultConstructorMarker) {
        this(request, cacheResponse);
    }

    @Nullable
    public final Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1986Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final CacheResponse Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1985Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public CacheStrategy(Request request, CacheResponse cacheResponse) {
        this.f1986Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request;
        this.f1985Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cacheResponse;
    }
}
