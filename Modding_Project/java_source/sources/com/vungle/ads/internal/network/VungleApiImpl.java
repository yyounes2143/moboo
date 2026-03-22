package com.vungle.ads.internal.network;

import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.b;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.network.converters.EmptyResponseConverter;
import com.vungle.ads.internal.network.converters.JsonConverter;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import okhttp3.Call;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 %2\u00020\u0001:\u0001%B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J(\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J<\u0010\u0013\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0016\b\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u0017H\u0002J\u0018\u0010\u0018\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0019H\u0002JF\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001e2\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00172\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J(\u0010!\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001b0\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 H\u0016J&\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001b0\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 H\u0016J&\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001b0\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u00020\u00038\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006&"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiImpl;", "Lcom/vungle/ads/internal/network/VungleApi;", "okHttpClient", "Lokhttp3/Call$Factory;", "(Lokhttp3/Call$Factory;)V", "emptyResponseConverter", "Lcom/vungle/ads/internal/network/converters/EmptyResponseConverter;", "getOkHttpClient$vungle_ads_release", "()Lokhttp3/Call$Factory;", b.JSON_KEY_ADS, "Lcom/vungle/ads/internal/network/Call;", "Lcom/vungle/ads/internal/model/AdPayload;", "ua", "", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "body", "Lcom/vungle/ads/internal/model/CommonRequestBody;", "config", "Lcom/vungle/ads/internal/model/ConfigPayload;", "defaultBuilder", "Lokhttp3/Request$Builder;", "placementReferenceId", "headers", "", "defaultProtoBufBuilder", "Lokhttp3/HttpUrl;", "pingTPAT", "Ljava/lang/Void;", "url", "requestType", "Lcom/vungle/ads/internal/network/HttpMethod;", "requestBody", "Lokhttp3/RequestBody;", "ri", "sendAdMarkup", "sendErrors", "sendMetrics", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class VungleApiImpl implements VungleApi {
    @NotNull
    private static final String VUNGLE_VERSION = "7.1.0";
    @NotNull
    private final EmptyResponseConverter emptyResponseConverter = new EmptyResponseConverter();
    @NotNull
    private final Call.Factory okHttpClient;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Json json = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.vungle.ads.internal.network.VungleApiImpl$Companion$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
            invoke2(jsonBuilder);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull JsonBuilder jsonBuilder) {
            jsonBuilder.setIgnoreUnknownKeys(true);
            jsonBuilder.setEncodeDefaults(true);
            jsonBuilder.setExplicitNulls(false);
            jsonBuilder.setAllowStructuredMapKeys(true);
        }
    }, 1, null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiImpl$Companion;", "", "()V", "VUNGLE_VERSION", "", "json", "Lkotlinx/serialization/json/Json;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HttpMethod.values().length];
            iArr[HttpMethod.GET.ordinal()] = 1;
            iArr[HttpMethod.POST.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public VungleApiImpl(@NotNull Call.Factory factory) {
        this.okHttpClient = factory;
    }

    private final Request.Builder defaultBuilder(String str, String str2, String str3, Map<String, String> map) {
        Request.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Request.Builder().Wwwwwwwwwwwwwwwww(str2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("User-Agent", str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Vungle-Version", VUNGLE_VERSION).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Type", "application/json");
        if (map != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Headers.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(map));
        }
        if (str3 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("X-Vungle-Placement-Ref-Id", str3);
        }
        VungleHeader vungleHeader = VungleHeader.INSTANCE;
        String appVersion = vungleHeader.getAppVersion();
        if (appVersion != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("X-VUNGLE-APP-VERSION", appVersion);
        }
        String appId = vungleHeader.getAppId();
        if (appId != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("X-Vungle-App-Id", appId);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Request.Builder defaultBuilder$default(VungleApiImpl vungleApiImpl, String str, String str2, String str3, Map map, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = null;
        }
        if ((i & 8) != 0) {
            map = null;
        }
        return vungleApiImpl.defaultBuilder(str, str2, str3, map);
    }

    private final Request.Builder defaultProtoBufBuilder(String str, HttpUrl httpUrl) {
        Request.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Request.Builder().Wwwwwwwwwwwwwwww(httpUrl).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("User-Agent", str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Vungle-Version", VUNGLE_VERSION).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Type", CommonGatewayClient.HEADER_PROTOBUF);
        VungleHeader vungleHeader = VungleHeader.INSTANCE;
        String appId = vungleHeader.getAppId();
        if (appId != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("X-Vungle-App-Id", appId);
        }
        String appVersion = vungleHeader.getAppVersion();
        if (appVersion != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("X-VUNGLE-APP-VERSION", appVersion);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @Nullable
    public Call<AdPayload> ads(@NotNull String str, @NotNull String str2, @NotNull CommonRequestBody commonRequestBody) {
        String str3;
        List<String> placements;
        try {
            Json json2 = json;
            String encodeToString = json2.encodeToString(SerializersKt.serializer(json2.getSerializersModule(), Reflection.typeOf(CommonRequestBody.class)), commonRequestBody);
            CommonRequestBody.RequestParam request = commonRequestBody.getRequest();
            if (request != null && (placements = request.getPlacements()) != null) {
                str3 = (String) CollectionsKt.firstOrNull((List<? extends Object>) placements);
            } else {
                str3 = null;
            }
            try {
                return new OkHttpCall(this.okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(defaultBuilder$default(this, str, str2, str3, null, 8, null).Wwwwwwwwwwwwwwwwwwwwwwwww(RequestBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(encodeToString, null)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), new JsonConverter(Reflection.typeOf(AdPayload.class)));
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
        }
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @Nullable
    public Call<ConfigPayload> config(@NotNull String str, @NotNull String str2, @NotNull CommonRequestBody commonRequestBody) {
        try {
            Json json2 = json;
            try {
                return new OkHttpCall(this.okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(defaultBuilder$default(this, str, str2, null, null, 12, null).Wwwwwwwwwwwwwwwwwwwwwwwww(RequestBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(json2.encodeToString(SerializersKt.serializer(json2.getSerializersModule(), Reflection.typeOf(CommonRequestBody.class)), commonRequestBody), null)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), new JsonConverter(Reflection.typeOf(ConfigPayload.class)));
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
        }
    }

    @VisibleForTesting
    @NotNull
    public final Call.Factory getOkHttpClient$vungle_ads_release() {
        return this.okHttpClient;
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @NotNull
    public Call<Void> pingTPAT(@NotNull String str, @NotNull String str2, @NotNull HttpMethod httpMethod, @Nullable Map<String, String> map, @Nullable RequestBody requestBody) {
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Request.Builder defaultBuilder$default = defaultBuilder$default(this, str, str2, null, map, 4, null);
        int i = WhenMappings.$EnumSwitchMapping$0[httpMethod.ordinal()];
        if (i != 1) {
            if (i == 2) {
                if (requestBody == null) {
                    requestBody = RequestBody.Companion.Wwwwwwwwwwwwwwwwwwww(RequestBody.Companion, new byte[0], null, 0, 0, 6, null);
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = defaultBuilder$default.Wwwwwwwwwwwwwwwwwwwwwwwww(requestBody).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = defaultBuilder$default.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return new OkHttpCall(this.okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), this.emptyResponseConverter);
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @Nullable
    public Call<Void> ri(@NotNull String str, @NotNull String str2, @NotNull CommonRequestBody commonRequestBody) {
        try {
            Json json2 = json;
            try {
                return new OkHttpCall(this.okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(defaultBuilder$default(this, str, str2, null, null, 12, null).Wwwwwwwwwwwwwwwwwwwwwwwww(RequestBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(json2.encodeToString(SerializersKt.serializer(json2.getSerializersModule(), Reflection.typeOf(CommonRequestBody.class)), commonRequestBody), null)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), this.emptyResponseConverter);
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
        }
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @NotNull
    public Call<Void> sendAdMarkup(@NotNull String str, @NotNull RequestBody requestBody) {
        return new OkHttpCall(this.okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(defaultBuilder$default(this, "debug", HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString(), null, null, 12, null).Wwwwwwwwwwwwwwwwwwwwwwwww(requestBody).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), this.emptyResponseConverter);
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @NotNull
    public Call<Void> sendErrors(@NotNull String str, @NotNull String str2, @NotNull RequestBody requestBody) {
        return new OkHttpCall(this.okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(defaultProtoBufBuilder(str, HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2).Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwww(requestBody).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), this.emptyResponseConverter);
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @NotNull
    public Call<Void> sendMetrics(@NotNull String str, @NotNull String str2, @NotNull RequestBody requestBody) {
        return new OkHttpCall(this.okHttpClient.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(defaultProtoBufBuilder(str, HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2).Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwww(requestBody).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), this.emptyResponseConverter);
    }
}
