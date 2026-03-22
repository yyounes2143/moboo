package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u00016BC\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0016\u0010\f\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0013\u0010\u0014J%\u0010\u0017\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00152\u000e\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u000b¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0017\u0010\u0003\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\u0005\u001a\u00020\u00048\u0007¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010\u001dR\u0017\u0010\u0007\u001a\u00020\u00068\u0007¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0007¢\u0006\f\n\u0004\b\u0010\u0010)\u001a\u0004\b\u001e\u0010*R*\u0010\f\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u00010\n8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0013\u0010+\u001a\u0004\b%\u0010,R\u0018\u0010/\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010.R\u0011\u00103\u001a\u0002008F¢\u0006\u0006\u001a\u0004\b1\u00102R\u0011\u00105\u001a\u00020-8G¢\u0006\u0006\u001a\u0004\b\"\u00104¨\u00067"}, d2 = {"Lokhttp3/Request;", "", "Lokhttp3/HttpUrl;", "url", "", FirebaseAnalytics.Param.METHOD, "Lokhttp3/Headers;", "headers", "Lokhttp3/RequestBody;", "body", "", "Ljava/lang/Class;", "tags", "<init>", "(Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;Ljava/util/Map;)V", "name", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/util/List;", "T", "type", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Class;)Ljava/lang/Object;", "Lokhttp3/Request$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Request$Builder;", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/HttpUrl;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/HttpUrl;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Headers;", "Lokhttp3/RequestBody;", "()Lokhttp3/RequestBody;", "Ljava/util/Map;", "()Ljava/util/Map;", "Lokhttp3/CacheControl;", "Lokhttp3/CacheControl;", "lazyCacheControl", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isHttps", "()Lokhttp3/CacheControl;", "cacheControl", "Builder", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Request {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CacheControl f12431Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Class<?>, Object> f12432Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestBody f12433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Headers f12434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f12435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HttpUrl f12436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Request(@NotNull HttpUrl httpUrl, @NotNull String str, @NotNull Headers headers, @Nullable RequestBody requestBody, @NotNull Map<Class<?>, ? extends Object> map) {
        this.f12436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpUrl;
        this.f12435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f12434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = headers;
        this.f12433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestBody;
        this.f12432Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
    }

    @JvmName(name = "url")
    @NotNull
    public final HttpUrl Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final <T> T Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Class<? extends T> cls) {
        return cls.cast(this.f12432Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(cls));
    }

    @NotNull
    public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(this);
    }

    @JvmName(name = FirebaseAnalytics.Param.METHOD)
    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmName(name = "headers")
    @NotNull
    public final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return this.f12434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return this.f12434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @NotNull
    public final Map<Class<?>, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12432Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "cacheControl")
    @NotNull
    public final CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        CacheControl cacheControl = this.f12431Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (cacheControl == null) {
            CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CacheControl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12434Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f12431Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return cacheControl;
    }

    @JvmName(name = "body")
    @Nullable
    public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        sb.append(", url=");
        sb.append(Wwwwwwwwwwwwwwwwwwwwwwww());
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() != 0) {
            sb.append(", headers=[");
            int i = 0;
            for (Pair<? extends String, ? extends String> pair : Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Pair<? extends String, ? extends String> pair2 = pair;
                String component1 = pair2.component1();
                String component2 = pair2.component2();
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(component1);
                sb.append(AbstractJsonLexerKt.COLON);
                sb.append(component2);
                i = i2;
            }
            sb.append(AbstractJsonLexerKt.END_LIST);
        }
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isEmpty()) {
            sb.append(", tags=");
            sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010%\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\rJ\u0017\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J!\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u000b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b#\u0010$J/\u0010)\u001a\u00020\u0000\"\u0004\b\u0000\u0010%2\u000e\u0010'\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000&2\b\u0010(\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0004H\u0016¢\u0006\u0004\b+\u0010,R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010\"\u001a\u00020\u000b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b+\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010\u0015\u001a\u0002078\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001a\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R$\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR2\u0010H\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030&\u0012\u0004\u0012\u00020\u00010B8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b9\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010G¨\u0006I"}, d2 = {"Lokhttp3/Request$Builder;", "", "<init>", "()V", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "(Lokhttp3/Request;)V", "Lokhttp3/HttpUrl;", "url", "Wwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;", "", "Wwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokhttp3/Request$Builder;", "name", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Headers;", "headers", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;)Lokhttp3/Request$Builder;", "Lokhttp3/CacheControl;", "cacheControl", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Request$Builder;", "Lokhttp3/RequestBody;", "body", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;", FirebaseAnalytics.Param.METHOD, "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;", "T", "Ljava/lang/Class;", "type", "tag", "Wwwwwwwwwwwwwwwwww", "(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Request;", "Lokhttp3/HttpUrl;", "getUrl$okhttp", "()Lokhttp3/HttpUrl;", "Wwwwwwwwwwwwwwwwwww", "(Lokhttp3/HttpUrl;)V", "Ljava/lang/String;", "getMethod$okhttp", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Lokhttp3/Headers$Builder;", "Lokhttp3/Headers$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Headers$Builder;", "Wwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers$Builder;)V", "Lokhttp3/RequestBody;", "getBody$okhttp", "()Lokhttp3/RequestBody;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/RequestBody;)V", "", "Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)V", "tags", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static class Builder {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Map<Class<?>, Object> f12437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public RequestBody f12438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Headers.Builder f12439Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f12440Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public HttpUrl f12441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            this.f12437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LinkedHashMap();
            this.f12440Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "GET";
            this.f12439Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Headers.Builder();
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwww(@NotNull HttpUrl httpUrl) {
            Wwwwwwwwwwwwwwwwwww(httpUrl);
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwww(@NotNull String str) {
            if (StringsKt.startsWith(str, "ws:", true)) {
                str = Intrinsics.stringPlus("http:", str.substring(3));
            } else if (StringsKt.startsWith(str, "wss:", true)) {
                str = Intrinsics.stringPlus("https:", str.substring(4));
            }
            return Wwwwwwwwwwwwwwww(HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
        }

        @NotNull
        public <T> Builder Wwwwwwwwwwwwwwwwww(@NotNull Class<? super T> cls, @Nullable T t) {
            if (t == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().remove(cls);
                return this;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().isEmpty()) {
                Wwwwwwwwwwwwwwwwwwww(new LinkedHashMap());
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().put(cls, cls.cast(t));
            return this;
        }

        public final void Wwwwwwwwwwwwwwwwwww(@Nullable HttpUrl httpUrl) {
            this.f12441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpUrl;
        }

        public final void Wwwwwwwwwwwwwwwwwwww(@NotNull Map<Class<?>, Object> map) {
            this.f12437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
        }

        public final void Wwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            this.f12440Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull Headers.Builder builder) {
            this.f12439Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable RequestBody requestBody) {
            this.f12438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestBody;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww(str);
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull RequestBody requestBody) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwww(ShareTarget.METHOD_POST, requestBody);
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable RequestBody requestBody) {
            if (str.length() > 0) {
                if (requestBody == null) {
                    if (HttpMethod.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
                        throw new IllegalArgumentException(("method " + str + " must have a request body.").toString());
                    }
                } else if (!HttpMethod.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
                    throw new IllegalArgumentException(("method " + str + " must not have a request body.").toString());
                }
                Wwwwwwwwwwwwwwwwwwwww(str);
                Wwwwwwwwwwwwwwwwwwwwwww(requestBody);
                return this;
            }
            throw new IllegalArgumentException("method.isEmpty() == true");
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Headers headers) {
            Wwwwwwwwwwwwwwwwwwwwww(headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return this;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(str, str2);
            return this;
        }

        @NotNull
        public final Map<Class<?>, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Headers.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12439Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Wwwwwwwwwwwwwwwwwwwwwwwwww("GET", null);
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull CacheControl cacheControl) {
            String cacheControl2 = cacheControl.toString();
            if (cacheControl2.length() == 0) {
                return Wwwwwwwwwwwwwwwwwwwwwwww("Cache-Control");
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwww("Cache-Control", cacheControl2);
        }

        @NotNull
        public Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            HttpUrl httpUrl = this.f12441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (httpUrl != null) {
                return new Request(httpUrl, this.f12440Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12439Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f12438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Util.Kkkkkkkkkk(this.f12437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
            }
            throw new IllegalStateException("url == null");
        }

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
            return this;
        }

        public Builder(@NotNull Request request) {
            Map<Class<?>, Object> mutableMap;
            this.f12437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LinkedHashMap();
            this.f12441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request.Wwwwwwwwwwwwwwwwwwwwwwww();
            this.f12440Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isEmpty()) {
                mutableMap = new LinkedHashMap<>();
            } else {
                mutableMap = MapsKt.toMutableMap(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            this.f12437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mutableMap;
            this.f12439Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
