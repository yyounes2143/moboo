package okhttp3.internal.cache;

import com.google.common.net.HttpHeaders;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000e\u000fB\u001d\b\u0000\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\n\u0010\f\u001a\u0004\b\b\u0010\r¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy;", "", "Lokhttp3/Request;", "networkRequest", "Lokhttp3/Response;", "cacheResponse", "<init>", "(Lokhttp3/Request;Lokhttp3/Response;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Request;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Request;", "Lokhttp3/Response;", "()Lokhttp3/Response;", "Companion", "Factory", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class CacheStrategy {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Response f12502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Request f12503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy$Companion;", "", "<init>", "()V", "Lokhttp3/Response;", "response", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;Lokhttp3/Request;)Z", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response, @NotNull Request request) {
            int Kkkkkkkkkkkkkkkkkkkkkk2 = response.Kkkkkkkkkkkkkkkkkkkkkk();
            if (Kkkkkkkkkkkkkkkkkkkkkk2 != 200 && Kkkkkkkkkkkkkkkkkkkkkk2 != 410 && Kkkkkkkkkkkkkkkkkkkkkk2 != 414 && Kkkkkkkkkkkkkkkkkkkkkk2 != 501 && Kkkkkkkkkkkkkkkkkkkkkk2 != 203 && Kkkkkkkkkkkkkkkkkkkkkk2 != 204) {
                if (Kkkkkkkkkkkkkkkkkkkkkk2 != 307) {
                    if (Kkkkkkkkkkkkkkkkkkkkkk2 != 308 && Kkkkkkkkkkkkkkkkkkkkkk2 != 404 && Kkkkkkkkkkkkkkkkkkkkkk2 != 405) {
                        switch (Kkkkkkkkkkkkkkkkkkkkkk2) {
                            case 300:
                            case 301:
                                break;
                            case 302:
                                break;
                            default:
                                return false;
                        }
                    }
                }
                if (Response.Kkkkkkkkkkkkkkkkk(response, "Expires", null, 2, null) == null && response.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == -1 && !response.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && !response.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    return false;
                }
            }
            if (response.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww() || request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return false;
            }
            return true;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0010\u0010\fJ\u000f\u0010\u0011\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u001aR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u001fR\u0018\u0010!\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u001cR\u0018\u0010#\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u001fR\u0018\u0010%\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\u001cR\u0016\u0010'\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\u0016R\u0016\u0010)\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u0016R\u0018\u0010+\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u001fR\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.¨\u00060"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy$Factory;", "", "", "nowMillis", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "Lokhttp3/Response;", "cacheResponse", "<init>", "(JLokhttp3/Request;Lokhttp3/Response;)V", "Lokhttp3/internal/cache/CacheStrategy;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/cache/CacheStrategy;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;)Z", "J", "Lokhttp3/Request;", "getRequest$okhttp", "()Lokhttp3/Request;", "Lokhttp3/Response;", "Ljava/util/Date;", "Ljava/util/Date;", "servedDate", "", "Ljava/lang/String;", "servedDateString", "lastModified", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "lastModifiedString", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "expires", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "sentRequestMillis", "Wwwwwwwwwwwwwwwwwwwwwwwww", "receivedResponseMillis", "Wwwwwwwwwwwwwwwwwwwwwwww", DownloadModel.ETAG, "", "Wwwwwwwwwwwwwwwwwwwwwww", "I", "ageSeconds", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Factory {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12504Wwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f12505Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f12506Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f12507Wwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Date f12508Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f12509Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Date f12510Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f12511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Date f12512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Response f12513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Request f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f12515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Factory(long j, @NotNull Request request, @Nullable Response response) {
            this.f12515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
            this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request;
            this.f12513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response;
            this.f12504Wwwwwwwwwwwwwwwwwwwwwww = -1;
            if (response != null) {
                this.f12507Wwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkk();
                this.f12506Wwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkk();
                Headers Kkkkkkkkkkkkkkkk2 = response.Kkkkkkkkkkkkkkkk();
                int size = Kkkkkkkkkkkkkkkk2.size();
                int i = 0;
                while (i < size) {
                    int i2 = i + 1;
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Kkkkkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
                    String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Kkkkkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwww(i);
                    if (StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "Date", true)) {
                        this.f12512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DatesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                        this.f12511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwww2;
                    } else if (StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "Expires", true)) {
                        this.f12508Wwwwwwwwwwwwwwwwwwwwwwwwwww = DatesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                    } else if (StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, HttpHeaders.LAST_MODIFIED, true)) {
                        this.f12510Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = DatesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                        this.f12509Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwww2;
                    } else if (StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "ETag", true)) {
                        this.f12505Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwww2;
                    } else if (StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, HttpHeaders.AGE, true)) {
                        this.f12504Wwwwwwwwwwwwwwwwwwwwwww = Util.Kkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwww2, -1);
                    }
                    i = i2;
                }
            }
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f12513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == -1 && this.f12508Wwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                return true;
            }
            return false;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Request request) {
            if (request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.IF_MODIFIED_SINCE) == null && request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.IF_NONE_MATCH) == null) {
                return false;
            }
            return true;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            long longValue;
            long longValue2;
            CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                return TimeUnit.SECONDS.toMillis(Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            Date date = this.f12508Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            Long l = null;
            if (date != null) {
                Date date2 = this.f12512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (date2 != null) {
                    l = Long.valueOf(date2.getTime());
                }
                if (l == null) {
                    longValue2 = this.f12506Wwwwwwwwwwwwwwwwwwwwwwwww;
                } else {
                    longValue2 = l.longValue();
                }
                long time = date.getTime() - longValue2;
                if (time <= 0) {
                    return 0L;
                }
                return time;
            }
            if (this.f12510Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && this.f12513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww() == null) {
                Date date3 = this.f12512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (date3 != null) {
                    l = Long.valueOf(date3.getTime());
                }
                if (l == null) {
                    longValue = this.f12507Wwwwwwwwwwwwwwwwwwwwwwwwww;
                } else {
                    longValue = l.longValue();
                }
                long time2 = longValue - this.f12510Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getTime();
                if (time2 > 0) {
                    return time2 / 10;
                }
            }
            return 0L;
        }

        public final CacheStrategy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            long j;
            String str;
            if (this.f12513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                return new CacheStrategy(this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
            }
            if (this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() && this.f12513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkk() == null) {
                return new CacheStrategy(this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
            }
            if (!CacheStrategy.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return new CacheStrategy(this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
            }
            CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww() && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Math.min(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.SECONDS.toMillis(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                }
                long j2 = 0;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                    j = TimeUnit.SECONDS.toMillis(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                } else {
                    j = 0;
                }
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                    j2 = TimeUnit.SECONDS.toMillis(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    long j3 = j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    if (j3 < j2 + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        Response.Builder Kkkkkkkkkkkk2 = this.f12513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkk();
                        if (j3 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                            Kkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.WARNING, "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > SignalManager.TWENTY_FOUR_HOURS_MILLIS && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            Kkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpHeaders.WARNING, "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new CacheStrategy(null, Kkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    }
                }
                String str2 = this.f12505Wwwwwwwwwwwwwwwwwwwwwwww;
                if (str2 != null) {
                    str = HttpHeaders.IF_NONE_MATCH;
                } else {
                    if (this.f12510Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                        str2 = this.f12509Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    } else if (this.f12512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                        str2 = this.f12511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    } else {
                        return new CacheStrategy(this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
                    }
                    str = HttpHeaders.IF_MODIFIED_SINCE;
                }
                Headers.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
                return new CacheStrategy(this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f12513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return new CacheStrategy(this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
        }

        @NotNull
        public final CacheStrategy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            CacheStrategy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null && this.f12514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww()) {
                return new CacheStrategy(null, null);
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Date date = this.f12512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            long j = 0;
            if (date != null) {
                j = Math.max(0L, this.f12506Wwwwwwwwwwwwwwwwwwwwwwwww - date.getTime());
            }
            int i = this.f12504Wwwwwwwwwwwwwwwwwwwwwww;
            if (i != -1) {
                j = Math.max(j, TimeUnit.SECONDS.toMillis(i));
            }
            long j2 = this.f12506Wwwwwwwwwwwwwwwwwwwwwwwww;
            return j + (j2 - this.f12507Wwwwwwwwwwwwwwwwwwwwwwwwww) + (this.f12515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - j2);
        }
    }

    public CacheStrategy(@Nullable Request request, @Nullable Response response) {
        this.f12503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request;
        this.f12502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response;
    }

    @Nullable
    public final Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
