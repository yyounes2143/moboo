package com.vungle.ads.internal.network;

import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import com.appsflyer.AdRevenueScheme;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mbridge.msdk.foundation.entity.b;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.unity3d.ads.core.domain.LegacyLoadUseCase;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.UserAgentError;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleAds;
import com.vungle.ads.fpd.FirstPartyData;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.AdvertisingInfo;
import com.vungle.ads.internal.model.AppNode;
import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.model.Cookie;
import com.vungle.ads.internal.model.DeviceNode;
import com.vungle.ads.internal.model.ErrorInfo;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.platform.AndroidPlatform;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.privacy.COPPA;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.AdActivity;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.annotation.AnnotationRetention;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.GzipSink;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000ô\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 }2\u00020\u0001:\u0003}~\u007fB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u001eH\u0007J\u0012\u0010:\u001a\u00020)2\b\u0010;\u001a\u0004\u0018\u00010<H\u0002J\u000e\u0010=\u001a\u00020\u001e2\u0006\u0010>\u001a\u00020)J\u000e\u0010?\u001a\n\u0012\u0004\u0012\u00020A\u0018\u00010@J\u0010\u0010B\u001a\u00020C2\u0006\u0010;\u001a\u00020DH\u0002J\u0010\u0010E\u001a\u00020\u00162\u0006\u0010F\u001a\u00020\u0003H\u0002J\n\u0010G\u001a\u0004\u0018\u00010)H\u0002J\u000f\u0010H\u001a\u0004\u0018\u00010)H\u0000¢\u0006\u0002\bIJ\u000e\u0010H\u001a\u00020)2\u0006\u0010J\u001a\u00020KJ\b\u0010L\u001a\u00020\u0016H\u0002J\u0015\u0010L\u001a\u00020\u00162\u0006\u0010M\u001a\u00020\u001eH\u0001¢\u0006\u0002\bNJ\u0014\u0010O\u001a\u0004\u0018\u00010P2\b\b\u0002\u0010Q\u001a\u00020\u001eH\u0002J\u0012\u0010R\u001a\u00020)2\b\u0010S\u001a\u0004\u0018\u00010<H\u0002J\u000f\u0010T\u001a\u0004\u0018\u00010\u001eH\u0007¢\u0006\u0002\u0010UJ\u000f\u0010V\u001a\u0004\u0018\u00010\u001eH\u0007¢\u0006\u0002\u0010UJ\u000e\u0010W\u001a\u00020*2\u0006\u0010>\u001a\u00020)J\u0012\u0010X\u001a\u00020Y2\b\b\u0002\u0010Z\u001a\u00020\u001eH\u0002J\b\u0010[\u001a\u000208H\u0002J\u000e\u0010\\\u001a\u0002082\u0006\u0010]\u001a\u00020)J\u000f\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007¢\u0006\u0002\u0010UJJ\u0010^\u001a\u0004\u0018\u00010_2\u0006\u0010`\u001a\u00020)2\u0016\b\u0002\u0010a\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020)\u0018\u00010b2\n\b\u0002\u0010c\u001a\u0004\u0018\u00010)2\b\b\u0002\u0010d\u001a\u00020e2\n\b\u0002\u0010f\u001a\u0004\u0018\u00010gJ\u001c\u0010h\u001a\u0002082\f\u0010i\u001a\b\u0012\u0004\u0012\u00020k0j2\u0006\u0010l\u001a\u00020mJ\u001c\u0010n\u001a\u0002082\f\u0010o\u001a\b\u0012\u0004\u0012\u00020p0j2\u0006\u0010l\u001a\u00020mJ \u0010q\u001a\n\u0012\u0004\u0012\u00020r\u0018\u00010@2\u0006\u0010s\u001a\u00020)2\b\u0010t\u001a\u0004\u0018\u00010uJ\u001a\u0010c\u001a\u00020v2\b\b\u0002\u0010Q\u001a\u00020\u001e2\b\b\u0002\u0010Z\u001a\u00020\u001eJ\u0016\u0010w\u001a\n\u0012\u0004\u0012\u00020x\u0018\u00010@2\u0006\u0010;\u001a\u00020yJ\u0016\u0010z\u001a\u0002082\u0006\u0010{\u001a\u00020)2\u0006\u0010|\u001a\u00020)R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0017\u001a\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0010\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010 \u001a\u00020!8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\"\u0010\u0010\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R0\u0010'\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020*0(8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b+\u0010\u0010\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001b\u00100\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b2\u00103R\u0010\u00106\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0080\u0001"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiClient;", "", "applicationContext", "Landroid/content/Context;", TPDownloadProxyEnum.USER_PLATFORM, "Lcom/vungle/ads/internal/platform/Platform;", "filePreferences", "Lcom/vungle/ads/internal/persistence/FilePreferences;", "(Landroid/content/Context;Lcom/vungle/ads/internal/platform/Platform;Lcom/vungle/ads/internal/persistence/FilePreferences;)V", "advertisingInfo", "Lcom/vungle/ads/internal/model/AdvertisingInfo;", "api", "Lcom/vungle/ads/internal/network/VungleApi;", "appBody", "Lcom/vungle/ads/internal/model/AppNode;", "getAppBody$vungle_ads_release$annotations", "()V", "getAppBody$vungle_ads_release", "()Lcom/vungle/ads/internal/model/AppNode;", "setAppBody$vungle_ads_release", "(Lcom/vungle/ads/internal/model/AppNode;)V", "baseDeviceInfo", "Lcom/vungle/ads/internal/model/DeviceNode;", "gzipApi", "getGzipApi$vungle_ads_release$annotations", "getGzipApi$vungle_ads_release", "()Lcom/vungle/ads/internal/network/VungleApi;", "setGzipApi$vungle_ads_release", "(Lcom/vungle/ads/internal/network/VungleApi;)V", "isGooglePlayServicesAvailable", "", "Ljava/lang/Boolean;", "responseInterceptor", "Lokhttp3/Interceptor;", "getResponseInterceptor$vungle_ads_release$annotations", "getResponseInterceptor$vungle_ads_release", "()Lokhttp3/Interceptor;", "setResponseInterceptor$vungle_ads_release", "(Lokhttp3/Interceptor;)V", "retryAfterDataMap", "", "", "", "getRetryAfterDataMap$vungle_ads_release$annotations", "getRetryAfterDataMap$vungle_ads_release", "()Ljava/util/Map;", "setRetryAfterDataMap$vungle_ads_release", "(Ljava/util/Map;)V", "signalManager", "Lcom/vungle/ads/internal/signals/SignalManager;", "getSignalManager", "()Lcom/vungle/ads/internal/signals/SignalManager;", "signalManager$delegate", "Lkotlin/Lazy;", "uaString", "addPlaySvcAvailabilityInCookie", "", Cookie.IS_PLAY_SERVICE_AVAILABLE, "bodyToString", AdActivity.REQUEST_KEY_EXTRA, "Lokhttp3/RequestBody;", "checkIsRetryAfterActive", VungleConstants.KEY_PLACEMENT_ID, "config", "Lcom/vungle/ads/internal/network/Call;", "Lcom/vungle/ads/internal/model/ConfigPayload;", "defaultErrorResponse", "Lokhttp3/Response;", "Lokhttp3/Request;", "getBasicDeviceBody", "context", "getConnectionType", "getConnectionTypeDetail", "getConnectionTypeDetail$vungle_ads_release", "type", "", "getDeviceBody", "explicitBlock", "getDeviceBody$vungle_ads_release", "getExtBody", "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;", "withSignals", "getPlacementID", "body", "getPlayServicesAvailabilityFromAPI", "()Ljava/lang/Boolean;", "getPlayServicesAvailabilityFromCookie", "getRetryAfterHeaderValue", "getUserBody", "Lcom/vungle/ads/internal/model/CommonRequestBody$User;", "withFirstPartyData", "initUserAgentLazy", MobileAdsBridgeBase.initializeMethodName, RemoteConfigConstants.RequestFieldKey.APP_ID, "pingTPAT", "Lcom/vungle/ads/internal/model/ErrorInfo;", "url", "headers", "", "requestBody", "requestType", "Lcom/vungle/ads/internal/network/HttpMethod;", "logEntry", "Lcom/vungle/ads/internal/util/LogEntry;", "reportErrors", "errors", "Ljava/util/concurrent/BlockingQueue;", "Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;", "requestListener", "Lcom/vungle/ads/AnalyticsClient$RequestListener;", "reportMetrics", "metrics", "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;", "requestAd", "Lcom/vungle/ads/internal/model/AdPayload;", AdRevenueScheme.PLACEMENT, "adSize", "Lcom/vungle/ads/VungleAdSize;", "Lcom/vungle/ads/internal/model/CommonRequestBody;", "ri", "Ljava/lang/Void;", "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;", "sendAdMarkup", LegacyLoadUseCase.KEY_AD_MARKUP, "endpoint", "Companion", "ConnectionTypeDetail", "GzipRequestInterceptor", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class VungleApiClient {
    @NotNull
    private static final String TAG = "VungleApiClient";
    @Nullable
    private AdvertisingInfo advertisingInfo;
    @NotNull
    private VungleApi api;
    @Nullable
    private AppNode appBody;
    @NotNull
    private final Context applicationContext;
    @Nullable
    private DeviceNode baseDeviceInfo;
    @NotNull
    private final FilePreferences filePreferences;
    @NotNull
    private VungleApi gzipApi;
    @Nullable
    private Boolean isGooglePlayServicesAvailable;
    @NotNull
    private final Platform platform;
    @NotNull
    private Interceptor responseInterceptor;
    @NotNull
    private Map<String, Long> retryAfterDataMap;
    @NotNull
    private final Lazy signalManager$delegate;
    @Nullable
    private String uaString = System.getProperty("http.agent");
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String BASE_URL = "https://config.ads.vungle.com/";
    @NotNull
    private static final Set<Interceptor> networkInterceptors = new HashSet();
    @NotNull
    private static final Set<Interceptor> logInterceptors = new HashSet();
    @NotNull
    private static final Json json = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.vungle.ads.internal.network.VungleApiClient$Companion$json$1
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
        }
    }, 1, null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\r\u0010\u000e\u001a\u00020\u000fH\u0000¢\u0006\u0002\b\u0010R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiClient$Companion;", "", "()V", "BASE_URL", "", "getBASE_URL$vungle_ads_release", "()Ljava/lang/String;", "TAG", "json", "Lkotlinx/serialization/json/Json;", "logInterceptors", "", "Lokhttp3/Interceptor;", "networkInterceptors", "reset", "", "reset$vungle_ads_release", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getBASE_URL$vungle_ads_release() {
            return VungleApiClient.BASE_URL;
        }

        public final void reset$vungle_ads_release() {
            VungleHeader.INSTANCE.reset();
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\b\u0002\b\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000¨\u0006\u0003"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiClient$ConnectionTypeDetail;", "", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    /* loaded from: classes6.dex */
    public @interface ConnectionTypeDetail {
        @NotNull
        public static final String CDMA_1XRTT = "cdma_1xrtt";
        @NotNull
        public static final String CDMA_EVDO_0 = "cdma_evdo_0";
        @NotNull
        public static final String CDMA_EVDO_A = "cdma_evdo_a";
        @NotNull
        public static final String CDMA_EVDO_B = "cdma_evdo_b";
        @NotNull
        public static final Companion Companion = Companion.$$INSTANCE;
        @NotNull
        public static final String EDGE = "edge";
        @NotNull
        public static final String FIFTH_G = "5g";
        @NotNull
        public static final String GPRS = "gprs";
        @NotNull
        public static final String HRPD = "hrpd";
        @NotNull
        public static final String HSDPA = "hsdpa";
        @NotNull
        public static final String HSUPA = "hsupa";
        @NotNull
        public static final String LTE = "lte";
        @NotNull
        public static final String UNKNOWN = "unknown";
        @NotNull
        public static final String WCDMA = "wcdma";

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiClient$ConnectionTypeDetail$Companion;", "", "()V", "CDMA_1XRTT", "", "CDMA_EVDO_0", "CDMA_EVDO_A", "CDMA_EVDO_B", "EDGE", "FIFTH_G", "GPRS", "HRPD", "HSDPA", "HSUPA", "LTE", "UNKNOWN", "WCDMA", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            @NotNull
            public static final String CDMA_1XRTT = "cdma_1xrtt";
            @NotNull
            public static final String CDMA_EVDO_0 = "cdma_evdo_0";
            @NotNull
            public static final String CDMA_EVDO_A = "cdma_evdo_a";
            @NotNull
            public static final String CDMA_EVDO_B = "cdma_evdo_b";
            @NotNull
            public static final String EDGE = "edge";
            @NotNull
            public static final String FIFTH_G = "5g";
            @NotNull
            public static final String GPRS = "gprs";
            @NotNull
            public static final String HRPD = "hrpd";
            @NotNull
            public static final String HSDPA = "hsdpa";
            @NotNull
            public static final String HSUPA = "hsupa";
            @NotNull
            public static final String LTE = "lte";
            @NotNull
            public static final String UNKNOWN = "unknown";
            @NotNull
            public static final String WCDMA = "wcdma";

            private Companion() {
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiClient$GzipRequestInterceptor;", "Lokhttp3/Interceptor;", "()V", GzipRequestInterceptor.GZIP, "Lokhttp3/RequestBody;", "requestBody", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class GzipRequestInterceptor implements Interceptor {
        @NotNull
        private static final String CONTENT_ENCODING = "Content-Encoding";
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private static final String GZIP = "gzip";

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiClient$GzipRequestInterceptor$Companion;", "", "()V", "CONTENT_ENCODING", "", "GZIP", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        private final RequestBody gzip(final RequestBody requestBody) throws IOException {
            final Buffer buffer = new Buffer();
            BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GzipSink(buffer));
            requestBody.writeTo(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.close();
            return new RequestBody() { // from class: com.vungle.ads.internal.network.VungleApiClient$GzipRequestInterceptor$gzip$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return buffer.Kk();
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return RequestBody.this.contentType();
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@NotNull BufferedSink bufferedSink) throws IOException {
                    bufferedSink.Wwwww(buffer.Illllllllllllllllllllllllllll());
                }
            };
        }

        @Override // okhttp3.Interceptor
        @NotNull
        public okhttp3.Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
            Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Encoding") == null) {
                return chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Encoding", GZIP).Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), gzip(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            return chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    public VungleApiClient(@NotNull final Context context, @NotNull Platform platform, @NotNull FilePreferences filePreferences) {
        this.applicationContext = context;
        this.platform = platform;
        this.filePreferences = filePreferences;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        this.signalManager$delegate = LazyKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new Function0<SignalManager>() { // from class: com.vungle.ads.internal.network.VungleApiClient$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SignalManager invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(SignalManager.class);
            }
        });
        this.retryAfterDataMap = new ConcurrentHashMap();
        this.responseInterceptor = new Interceptor() { // from class: com.vungle.ads.internal.network.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // okhttp3.Interceptor
            public final okhttp3.Response intercept(Interceptor.Chain chain) {
                okhttp3.Response m329responseInterceptor$lambda0;
                m329responseInterceptor$lambda0 = VungleApiClient.m329responseInterceptor$lambda0(VungleApiClient.this, chain);
                return m329responseInterceptor$lambda0;
            }
        };
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.Builder Kkkkkkkkkkkkkkkkk2 = builder.Kkkkkkkkkkkkkkkk(60L, timeUnit).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(60L, timeUnit).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.responseInterceptor).Kkkkkkkkkkkkkkkkk(new ProxySelector() { // from class: com.vungle.ads.internal.network.VungleApiClient$builder$1
            @Override // java.net.ProxySelector
            public void connectFailed(@Nullable URI uri, @Nullable SocketAddress socketAddress, @Nullable IOException iOException) {
                try {
                    ProxySelector.getDefault().connectFailed(uri, socketAddress, iOException);
                } catch (Exception unused) {
                }
            }

            @Override // java.net.ProxySelector
            @NotNull
            public List<Proxy> select(@Nullable URI uri) {
                try {
                    return ProxySelector.getDefault().select(uri);
                } catch (Exception unused) {
                    return CollectionsKt.listOf(Proxy.NO_PROXY);
                }
            }
        });
        OkHttpClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Kkkkkkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        OkHttpClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Kkkkkkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GzipRequestInterceptor()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.api = new VungleApiImpl(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        this.gzipApi = new VungleApiImpl(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
    }

    private final String bodyToString(RequestBody requestBody) {
        try {
            Buffer buffer = new Buffer();
            if (requestBody != null) {
                requestBody.writeTo(buffer);
                return buffer.Kkkkk();
            }
        } catch (Exception unused) {
        }
        return "";
    }

    private final okhttp3.Response defaultErrorResponse(Request request) {
        return new Response.Builder().Wwwwwwwwwwwwwwww(request).Wwwwwwwwwwwwwwwwwwwwwwwwwwww(500).Wwwwwwwwwwwwwwwwww(Protocol.HTTP_1_1).Wwwwwwwwwwwwwwwwwwwww("Server is busy").Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResponseBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("{\"Error\":\"Server is busy\"}", MediaType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("application/json"))).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    private final DeviceNode getBasicDeviceBody(Context context) {
        String str;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (defaultDisplay != null) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        String str2 = Build.MANUFACTURER;
        String str3 = Build.MODEL;
        String str4 = Build.VERSION.RELEASE;
        String carrierName$vungle_ads_release = AndroidPlatform.Companion.getCarrierName$vungle_ads_release(context);
        if (Intrinsics.areEqual("Amazon", str2)) {
            str = "amazon";
        } else {
            str = "android";
        }
        DeviceNode deviceNode = new DeviceNode(str2, str3, str4, carrierName$vungle_ads_release, str, displayMetrics.widthPixels, displayMetrics.heightPixels, this.uaString, (String) null, (Integer) null, (DeviceNode.VungleExt) null, 1792, (DefaultConstructorMarker) null);
        try {
            String userAgent = this.platform.getUserAgent();
            this.uaString = userAgent;
            deviceNode.setUa(userAgent);
            initUserAgentLazy();
            AdvertisingInfo advertisingInfo = this.advertisingInfo;
            if (advertisingInfo == null) {
                advertisingInfo = this.platform.getAdvertisingInfo();
            }
            this.advertisingInfo = advertisingInfo;
            return deviceNode;
        } catch (Exception e) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Cannot Get UserAgent. Setting Default Device UserAgent." + e.getLocalizedMessage());
            return deviceNode;
        }
    }

    private final String getConnectionType() {
        if (ContextCompat.checkSelfPermission(this.applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.applicationContext.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type != 1 && type != 6) {
                        if (type != 7) {
                            if (type != 9) {
                                return "UNKNOWN";
                            }
                            return "ETHERNET";
                        }
                        return "BLUETOOTH";
                    }
                    return "WIFI";
                }
                return "MOBILE";
            }
            return "NONE";
        }
        return null;
    }

    private final DeviceNode getDeviceBody() throws IllegalStateException {
        return getDeviceBody$vungle_ads_release(false);
    }

    private final CommonRequestBody.RequestExt getExtBody(boolean z) {
        String generateSignals;
        String configExtension = ConfigManager.INSTANCE.getConfigExtension();
        if (configExtension != null && configExtension.length() == 0) {
            configExtension = this.filePreferences.getString(Cookie.CONFIG_EXTENSION);
        }
        if (z) {
            try {
                generateSignals = getSignalManager().generateSignals();
            } catch (Exception e) {
                Logger.Companion.e(TAG, "Couldn't convert signals for sending. Error: " + e.getMessage());
            }
            if ((configExtension != null || configExtension.length() == 0) && (generateSignals == null || generateSignals.length() == 0)) {
                return null;
            }
            return new CommonRequestBody.RequestExt(configExtension, generateSignals, Long.valueOf(ConfigManager.INSTANCE.configLastValidatedTimestamp()));
        }
        generateSignals = null;
        if (configExtension != null) {
        }
        return null;
    }

    public static /* synthetic */ CommonRequestBody.RequestExt getExtBody$default(VungleApiClient vungleApiClient, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return vungleApiClient.getExtBody(z);
    }

    private final String getPlacementID(RequestBody requestBody) {
        List<String> placements;
        try {
            Json json2 = json;
            CommonRequestBody.RequestParam request = ((CommonRequestBody) json2.decodeFromString(SerializersKt.serializer(json2.getSerializersModule(), Reflection.typeOf(CommonRequestBody.class)), bodyToString(requestBody))).getRequest();
            if (request != null && (placements = request.getPlacements()) != null) {
                String str = placements.get(0);
                if (str != null) {
                    return str;
                }
            }
        } catch (Exception unused) {
        }
        return "";
    }

    private final SignalManager getSignalManager() {
        return (SignalManager) this.signalManager$delegate.getValue();
    }

    private final CommonRequestBody.User getUserBody(boolean z) {
        CommonRequestBody.User user = new CommonRequestBody.User((CommonRequestBody.GDPR) null, (CommonRequestBody.CCPA) null, (CommonRequestBody.COPPA) null, (FirstPartyData) null, (CommonRequestBody.IAB) null, 31, (DefaultConstructorMarker) null);
        PrivacyManager privacyManager = PrivacyManager.INSTANCE;
        user.setGdpr(new CommonRequestBody.GDPR(privacyManager.getConsentStatus(), privacyManager.getConsentSource(), privacyManager.getConsentTimestamp(), privacyManager.getConsentMessageVersion()));
        user.setCcpa(new CommonRequestBody.CCPA(privacyManager.getCcpaStatus()));
        if (privacyManager.getCoppaStatus() != COPPA.COPPA_NOTSET) {
            user.setCoppa(new CommonRequestBody.COPPA(privacyManager.getCoppaStatus().getValue()));
        }
        if (privacyManager.shouldSendTCFString()) {
            user.setIab(new CommonRequestBody.IAB(privacyManager.getIABTCFString()));
        }
        if (z) {
            user.setFpd(VungleAds.firstPartyData);
        }
        return user;
    }

    public static /* synthetic */ CommonRequestBody.User getUserBody$default(VungleApiClient vungleApiClient, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return vungleApiClient.getUserBody(z);
    }

    private final void initUserAgentLazy() {
        final TimeIntervalMetric timeIntervalMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.USER_AGENT_LOAD_DURATION_MS);
        timeIntervalMetric.markStart();
        this.platform.getUserAgentLazy(new Consumer<String>() { // from class: com.vungle.ads.internal.network.VungleApiClient$initUserAgentLazy$1
            @Override // androidx.core.util.Consumer
            public void accept(@Nullable String str) {
                if (str == null) {
                    Logger.Companion.e("VungleApiClient", "Cannot Get UserAgent. Setting Default Device UserAgent");
                    new UserAgentError().logErrorNoReturnValue$vungle_ads_release();
                    return;
                }
                TimeIntervalMetric.this.markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, TimeIntervalMetric.this, (LogEntry) null, (String) null, 6, (Object) null);
                this.uaString = str;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ErrorInfo pingTPAT$default(VungleApiClient vungleApiClient, String str, Map map, String str2, HttpMethod httpMethod, LogEntry logEntry, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        if ((i & 8) != 0) {
            httpMethod = HttpMethod.GET;
        }
        if ((i & 16) != 0) {
            logEntry = null;
        }
        return vungleApiClient.pingTPAT(str, map, str2, httpMethod, logEntry);
    }

    public static /* synthetic */ CommonRequestBody requestBody$default(VungleApiClient vungleApiClient, boolean z, boolean z2, int i, Object obj) throws IllegalStateException {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        return vungleApiClient.requestBody(z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: responseInterceptor$lambda-0  reason: not valid java name */
    public static final okhttp3.Response m329responseInterceptor$lambda0(VungleApiClient vungleApiClient, Interceptor.Chain chain) {
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        try {
            try {
                okhttp3.Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Retry-After");
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.length() != 0) {
                    try {
                        long parseLong = Long.parseLong(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                        if (parseLong > 0) {
                            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            long currentTimeMillis = (parseLong * 1000) + System.currentTimeMillis();
                            if (StringsKt.endsWith$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, b.JSON_KEY_ADS, false, 2, (Object) null)) {
                                String placementID = vungleApiClient.getPlacementID(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                                if (placementID.length() > 0) {
                                    vungleApiClient.retryAfterDataMap.put(placementID, Long.valueOf(currentTimeMillis));
                                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                                }
                                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            }
                            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        }
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    } catch (Exception unused) {
                        Logger.Companion.d(TAG, "Retry-After value is not an valid value");
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    }
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } catch (OutOfMemoryError unused2) {
                Logger.Companion companion = Logger.Companion;
                companion.e(TAG, "OOM for " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww());
                return vungleApiClient.defaultErrorResponse(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        } catch (Exception e) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.e(TAG, "Exception: " + e.getMessage() + " for " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww());
            return vungleApiClient.defaultErrorResponse(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    @VisibleForTesting
    public final void addPlaySvcAvailabilityInCookie(boolean z) {
        this.filePreferences.put(Cookie.IS_PLAY_SERVICE_AVAILABLE, z).apply();
    }

    public final boolean checkIsRetryAfterActive(@NotNull String str) {
        long j;
        Long l = this.retryAfterDataMap.get(str);
        if (l != null) {
            j = l.longValue();
        } else {
            j = 0;
        }
        if (j > System.currentTimeMillis()) {
            return true;
        }
        this.retryAfterDataMap.remove(str);
        return false;
    }

    @Nullable
    public final Call<ConfigPayload> config() throws IOException {
        AppNode appNode = this.appBody;
        if (appNode == null) {
            return null;
        }
        CommonRequestBody commonRequestBody = new CommonRequestBody(getDeviceBody$vungle_ads_release(true), appNode, getUserBody$default(this, false, 1, null), (CommonRequestBody.RequestExt) null, (CommonRequestBody.RequestParam) null, 24, (DefaultConstructorMarker) null);
        CommonRequestBody.RequestExt extBody$default = getExtBody$default(this, false, 1, null);
        if (extBody$default != null) {
            commonRequestBody.setExt(extBody$default);
        }
        FileUtility fileUtility = FileUtility.INSTANCE;
        String str = BASE_URL;
        if (!fileUtility.isValidUrl(str)) {
            str = "https://config.ads.vungle.com/";
        }
        if (!StringsKt.endsWith$default(str, "/", false, 2, (Object) null)) {
            str = str + '/';
        }
        return this.api.config(VungleHeader.INSTANCE.getHeaderUa(), str + "config", commonRequestBody);
    }

    @Nullable
    public final AppNode getAppBody$vungle_ads_release() {
        return this.appBody;
    }

    @NotNull
    public final String getConnectionTypeDetail(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 20) {
                    switch (i) {
                        case 4:
                            return "wcdma";
                        case 5:
                            return "cdma_evdo_0";
                        case 6:
                            return "cdma_evdo_a";
                        case 7:
                            return "cdma_1xrtt";
                        case 8:
                            return "hsdpa";
                        case 9:
                            return "hsupa";
                        default:
                            switch (i) {
                                case 12:
                                    return "cdma_evdo_b";
                                case 13:
                                    return "lte";
                                case 14:
                                    return "hrpd";
                                default:
                                    return "unknown";
                            }
                    }
                }
                return "5g";
            }
            return "edge";
        }
        return "gprs";
    }

    @Nullable
    public final String getConnectionTypeDetail$vungle_ads_release() {
        if (ContextCompat.checkSelfPermission(this.applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.applicationContext.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return getConnectionTypeDetail(activeNetworkInfo.getSubtype());
            }
            return "unknown";
        }
        return null;
    }

    @VisibleForTesting
    @NotNull
    public final synchronized DeviceNode getDeviceBody$vungle_ads_release(boolean z) throws IllegalStateException {
        DeviceNode copy$default;
        String str;
        Boolean bool;
        int i;
        String str2;
        try {
            DeviceNode deviceNode = this.baseDeviceInfo;
            if (deviceNode == null) {
                deviceNode = getBasicDeviceBody(this.applicationContext);
                this.baseDeviceInfo = deviceNode;
            }
            copy$default = DeviceNode.copy$default(deviceNode, null, null, null, null, null, 0, 0, null, null, null, null, 2047, null);
            DeviceNode.VungleExt vungleExt = new DeviceNode.VungleExt(false, (String) null, (Integer) null, 0.0f, (String) null, 0, (String) null, (String) null, (String) null, (String) null, (String) null, 0.0f, 0, false, 0, false, (String) null, (String) null, (Long) null, (Long) null, (Long) null, 2097151, (DefaultConstructorMarker) null);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            Display defaultDisplay = ((WindowManager) this.applicationContext.getSystemService("window")).getDefaultDisplay();
            if (defaultDisplay != null) {
                defaultDisplay.getMetrics(displayMetrics);
            }
            copy$default.setH(displayMetrics.heightPixels);
            copy$default.setW(displayMetrics.widthPixels);
            AdvertisingInfo advertisingInfo = this.advertisingInfo;
            if (advertisingInfo == null) {
                advertisingInfo = this.platform.getAdvertisingInfo();
            }
            this.advertisingInfo = advertisingInfo;
            if (advertisingInfo != null) {
                str = advertisingInfo.getAdvertisingId();
            } else {
                str = null;
            }
            AdvertisingInfo advertisingInfo2 = this.advertisingInfo;
            if (advertisingInfo2 != null) {
                bool = Boolean.valueOf(advertisingInfo2.getLimitAdTracking());
            } else {
                bool = null;
            }
            PrivacyManager privacyManager = PrivacyManager.INSTANCE;
            if (privacyManager.shouldSendAdIds()) {
                if (str != null) {
                    if (Intrinsics.areEqual("Amazon", Build.MANUFACTURER)) {
                        vungleExt.setAmazonAdvertisingId(str);
                    } else {
                        vungleExt.setGaid(str);
                    }
                    copy$default.setIfa(str);
                } else {
                    copy$default.setIfa("");
                }
            }
            if (z || !privacyManager.shouldSendAdIds()) {
                copy$default.setIfa(null);
                vungleExt.setGaid(null);
                vungleExt.setAmazonAdvertisingId(null);
            }
            Boolean bool2 = Boolean.TRUE;
            boolean z2 = false;
            if (Intrinsics.areEqual(bool, bool2)) {
                i = 1;
            } else {
                i = 0;
            }
            copy$default.setLmt(i);
            vungleExt.setGooglePlayServicesAvailable(Intrinsics.areEqual(bool2, isGooglePlayServicesAvailable()));
            if (privacyManager.allowDeviceIDFromTCF() != PrivacyManager.DeviceIdAllowed.DISABLE_ID) {
                String appSetId = this.platform.getAppSetId();
                if (appSetId != null) {
                    vungleExt.setAppSetId(appSetId);
                }
                Integer appSetIdScope = this.platform.getAppSetIdScope();
                if (appSetIdScope != null) {
                    vungleExt.setAppSetIdScope(Integer.valueOf(appSetIdScope.intValue()));
                }
            }
            Intent registerReceiver = this.applicationContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver != null) {
                int intExtra = registerReceiver.getIntExtra("level", -1);
                int intExtra2 = registerReceiver.getIntExtra("scale", -1);
                if (intExtra > 0 && intExtra2 > 0) {
                    vungleExt.setBatteryLevel(intExtra / intExtra2);
                }
                int intExtra3 = registerReceiver.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
                if (intExtra3 != -1) {
                    if (intExtra3 != 2 && intExtra3 != 5) {
                        str2 = "NOT_CHARGING";
                    } else {
                        int intExtra4 = registerReceiver.getIntExtra("plugged", -1);
                        if (intExtra4 != 1) {
                            if (intExtra4 != 2) {
                                if (intExtra4 != 4) {
                                    str2 = "BATTERY_PLUGGED_OTHERS";
                                } else {
                                    str2 = "BATTERY_PLUGGED_WIRELESS";
                                }
                            } else {
                                str2 = "BATTERY_PLUGGED_USB";
                            }
                        } else {
                            str2 = "BATTERY_PLUGGED_AC";
                        }
                    }
                } else {
                    str2 = "UNKNOWN";
                }
            } else {
                str2 = "UNKNOWN";
            }
            vungleExt.setBatteryState(str2);
            vungleExt.setBatterySaverEnabled(((PowerManager) this.applicationContext.getSystemService("power")).isPowerSaveMode() ? 1 : 0);
            String connectionType = getConnectionType();
            if (connectionType != null) {
                vungleExt.setConnectionType(connectionType);
            }
            String connectionTypeDetail$vungle_ads_release = getConnectionTypeDetail$vungle_ads_release();
            if (connectionTypeDetail$vungle_ads_release != null) {
                vungleExt.setConnectionTypeDetail(connectionTypeDetail$vungle_ads_release);
            }
            vungleExt.setLocale(Locale.getDefault().toString());
            vungleExt.setLanguage(Locale.getDefault().getLanguage());
            vungleExt.setTimeZone(TimeZone.getDefault().getID());
            vungleExt.setVolumeLevel(this.platform.getVolumeLevel());
            vungleExt.setSoundEnabled(this.platform.isSoundEnabled() ? 1 : 0);
            if (Intrinsics.areEqual("Amazon", Build.MANUFACTURER)) {
                z2 = this.applicationContext.getPackageManager().hasSystemFeature("amazon.hardware.fire_tv");
            } else if (((UiModeManager) this.applicationContext.getSystemService("uimode")).getCurrentModeType() == 4) {
                z2 = true;
            }
            vungleExt.setTv(z2);
            vungleExt.setSideloadEnabled(this.platform.isSideLoaded());
            vungleExt.setSdCardAvailable(this.platform.isSdCardPresent() ? 1 : 0);
            if (ConfigManager.INSTANCE.otEnabled()) {
                vungleExt.setOit(Long.valueOf(this.platform.getOSInstallationTime()));
                vungleExt.setOrt(Long.valueOf(this.platform.getLastBootTime()));
                vungleExt.setObt(Long.valueOf(this.platform.getBuildTime()));
            }
            copy$default.setUa(this.uaString);
            copy$default.setExt(vungleExt);
        } catch (Throwable th) {
            throw th;
        }
        return copy$default;
    }

    @NotNull
    public final VungleApi getGzipApi$vungle_ads_release() {
        return this.gzipApi;
    }

    @VisibleForTesting
    @Nullable
    public final Boolean getPlayServicesAvailabilityFromAPI() {
        boolean z;
        Boolean bool = null;
        try {
            if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(this.applicationContext) == 0) {
                z = true;
            } else {
                z = false;
            }
            bool = Boolean.valueOf(z);
            addPlaySvcAvailabilityInCookie(z);
            return bool;
        } catch (Exception unused) {
            Logger.Companion.w(TAG, "Unexpected exception from Play services lib.");
            return bool;
        } catch (NoClassDefFoundError unused2) {
            Logger.Companion.w(TAG, "Play services Not available");
            bool = Boolean.FALSE;
            try {
                addPlaySvcAvailabilityInCookie(false);
            } catch (Exception unused3) {
                Logger.Companion.w(TAG, "Failure to write GPS availability to DB");
            }
            return bool;
        }
    }

    @VisibleForTesting
    @Nullable
    public final Boolean getPlayServicesAvailabilityFromCookie() {
        return this.filePreferences.getBoolean(Cookie.IS_PLAY_SERVICE_AVAILABLE);
    }

    @NotNull
    public final Interceptor getResponseInterceptor$vungle_ads_release() {
        return this.responseInterceptor;
    }

    @NotNull
    public final Map<String, Long> getRetryAfterDataMap$vungle_ads_release() {
        return this.retryAfterDataMap;
    }

    public final long getRetryAfterHeaderValue(@NotNull String str) {
        Long l = this.retryAfterDataMap.get(str);
        if (l != null) {
            return l.longValue();
        }
        return 0L;
    }

    public final synchronized void initialize(@NotNull String str) {
        PackageInfo packageInfo;
        String str2;
        PackageManager.PackageInfoFlags of;
        try {
            VungleHeader.INSTANCE.setAppId(str);
            try {
                if (Build.VERSION.SDK_INT >= 33) {
                    PackageManager packageManager = this.applicationContext.getPackageManager();
                    String packageName = this.applicationContext.getPackageName();
                    of = PackageManager.PackageInfoFlags.of(0L);
                    packageInfo = packageManager.getPackageInfo(packageName, of);
                } else {
                    packageInfo = this.applicationContext.getPackageManager().getPackageInfo(this.applicationContext.getPackageName(), 0);
                }
                str2 = packageInfo.versionName;
            } catch (Exception unused) {
            }
            VungleHeader.INSTANCE.setAppVersion(str2);
            this.baseDeviceInfo = getBasicDeviceBody(this.applicationContext);
            this.appBody = new AppNode(this.applicationContext.getPackageName(), str2, str);
            this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromAPI();
        } catch (Throwable th) {
            throw th;
        }
    }

    @VisibleForTesting
    @Nullable
    public final Boolean isGooglePlayServicesAvailable() {
        if (this.isGooglePlayServicesAvailable == null) {
            this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromCookie();
        }
        if (this.isGooglePlayServicesAvailable == null) {
            this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromAPI();
        }
        return this.isGooglePlayServicesAvailable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0090, code lost:
        r2 = r0.raw();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0094, code lost:
        if (r2 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0096, code lost:
        r2 = java.lang.Integer.valueOf(r2.Kkkkkkkkkkkkkkkkkkkkkk());
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.vungle.ads.internal.model.ErrorInfo pingTPAT(@org.jetbrains.annotations.NotNull java.lang.String r17, @org.jetbrains.annotations.Nullable java.util.Map<java.lang.String, java.lang.String> r18, @org.jetbrains.annotations.Nullable java.lang.String r19, @org.jetbrains.annotations.NotNull com.vungle.ads.internal.network.HttpMethod r20, @org.jetbrains.annotations.Nullable com.vungle.ads.internal.util.LogEntry r21) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.network.VungleApiClient.pingTPAT(java.lang.String, java.util.Map, java.lang.String, com.vungle.ads.internal.network.HttpMethod, com.vungle.ads.internal.util.LogEntry):com.vungle.ads.internal.model.ErrorInfo");
    }

    public final void reportErrors(@NotNull BlockingQueue<Sdk.SDKError.Builder> blockingQueue, @NotNull final AnalyticsClient.RequestListener requestListener) {
        long j;
        String errorLoggingEndpoint = ConfigManager.INSTANCE.getErrorLoggingEndpoint();
        if (errorLoggingEndpoint.length() == 0) {
            requestListener.onFailure();
            return;
        }
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        for (Sdk.SDKError.Builder builder : blockingQueue) {
            builder.setSessionId(getSignalManager().getUuid());
            Placement placement = ConfigManager.INSTANCE.getPlacement(builder.getPlacementReferenceId());
            if (placement != null) {
                if (placement.getHeaderBidding()) {
                    j = 1;
                } else {
                    j = 0;
                }
                builder.setIsHbPlacement(j);
                String type = placement.getType();
                if (type == null) {
                    type = "";
                }
                builder.setPlacementType(type);
            }
            String connectionType = getConnectionType();
            if (connectionType != null) {
                builder.setConnectionType(connectionType);
            }
            String connectionTypeDetail$vungle_ads_release = getConnectionTypeDetail$vungle_ads_release();
            if (connectionTypeDetail$vungle_ads_release != null) {
                builder.setConnectionTypeDetail(connectionTypeDetail$vungle_ads_release);
            }
            Sdk.SDKError build = builder.build();
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Sending Error: " + build.getReason());
            linkedBlockingQueue.add(build);
        }
        Sdk.SDKErrorBatch build2 = Sdk.SDKErrorBatch.newBuilder().addAllErrors(linkedBlockingQueue).build();
        this.api.sendErrors(VungleHeader.INSTANCE.getHeaderUa(), errorLoggingEndpoint, RequestBody.Companion.Wwwwwwwwwwwwwwwwwwwwww(build2.toByteArray(), MediaType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CommonGatewayClient.HEADER_PROTOBUF), 0, build2.toByteArray().length)).enqueue(new Callback<Void>() { // from class: com.vungle.ads.internal.network.VungleApiClient$reportErrors$2
            @Override // com.vungle.ads.internal.network.Callback
            public void onFailure(@Nullable Call<Void> call, @Nullable Throwable th) {
                AnalyticsClient.RequestListener.this.onFailure();
            }

            @Override // com.vungle.ads.internal.network.Callback
            public void onResponse(@Nullable Call<Void> call, @Nullable Response<Void> response) {
                AnalyticsClient.RequestListener.this.onSuccess();
            }
        });
    }

    public final void reportMetrics(@NotNull BlockingQueue<Sdk.SDKMetric.Builder> blockingQueue, @NotNull final AnalyticsClient.RequestListener requestListener) {
        long j;
        String metricsEndpoint = ConfigManager.INSTANCE.getMetricsEndpoint();
        if (metricsEndpoint.length() == 0) {
            requestListener.onFailure();
            return;
        }
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        for (Sdk.SDKMetric.Builder builder : blockingQueue) {
            builder.setSessionId(getSignalManager().getUuid());
            Placement placement = ConfigManager.INSTANCE.getPlacement(builder.getPlacementReferenceId());
            if (placement != null) {
                if (placement.getHeaderBidding()) {
                    j = 1;
                } else {
                    j = 0;
                }
                builder.setIsHbPlacement(j);
                String type = placement.getType();
                if (type == null) {
                    type = "";
                }
                builder.setPlacementType(type);
            }
            String connectionType = getConnectionType();
            if (connectionType != null) {
                builder.setConnectionType(connectionType);
            }
            String connectionTypeDetail$vungle_ads_release = getConnectionTypeDetail$vungle_ads_release();
            if (connectionTypeDetail$vungle_ads_release != null) {
                builder.setConnectionTypeDetail(connectionTypeDetail$vungle_ads_release);
            }
            Sdk.SDKMetric build = builder.build();
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Sending Metric: " + build.getType());
            linkedBlockingQueue.add(build);
        }
        this.api.sendMetrics(VungleHeader.INSTANCE.getHeaderUa(), metricsEndpoint, RequestBody.Companion.Wwwwwwwwwwwwwwwwwwwww(RequestBody.Companion, MediaType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CommonGatewayClient.HEADER_PROTOBUF), Sdk.MetricBatch.newBuilder().addAllMetrics(linkedBlockingQueue).build().toByteArray(), 0, 0, 12, null)).enqueue(new Callback<Void>() { // from class: com.vungle.ads.internal.network.VungleApiClient$reportMetrics$2
            @Override // com.vungle.ads.internal.network.Callback
            public void onFailure(@Nullable Call<Void> call, @Nullable Throwable th) {
                AnalyticsClient.RequestListener.this.onFailure();
            }

            @Override // com.vungle.ads.internal.network.Callback
            public void onResponse(@Nullable Call<Void> call, @Nullable Response<Void> response) {
                AnalyticsClient.RequestListener.this.onSuccess();
            }
        });
    }

    @Nullable
    public final Call<AdPayload> requestAd(@NotNull String str, @Nullable VungleAdSize vungleAdSize) throws IllegalStateException {
        ConfigManager configManager = ConfigManager.INSTANCE;
        String adsEndpoint = configManager.getAdsEndpoint();
        CommonRequestBody requestBody = requestBody(!configManager.signalsDisabled(), configManager.fpdEnabled());
        CommonRequestBody.RequestParam requestParam = new CommonRequestBody.RequestParam(CollectionsKt.listOf(str), (CommonRequestBody.AdSizeParam) null, (Long) null, (String) null, (String) null, (String) null, 62, (DefaultConstructorMarker) null);
        if (vungleAdSize != null) {
            requestParam.setAdSize(new CommonRequestBody.AdSizeParam(vungleAdSize.getWidth(), vungleAdSize.getHeight()));
        }
        requestBody.setRequest(requestParam);
        return this.gzipApi.ads(VungleHeader.INSTANCE.getHeaderUa(), adsEndpoint, requestBody);
    }

    @NotNull
    public final CommonRequestBody requestBody(boolean z, boolean z2) throws IllegalStateException {
        CommonRequestBody commonRequestBody = new CommonRequestBody(getDeviceBody(), this.appBody, getUserBody(z2), (CommonRequestBody.RequestExt) null, (CommonRequestBody.RequestParam) null, 24, (DefaultConstructorMarker) null);
        CommonRequestBody.RequestExt extBody = getExtBody(z);
        if (extBody != null) {
            commonRequestBody.setExt(extBody);
        }
        return commonRequestBody;
    }

    @Nullable
    public final Call<Void> ri(@NotNull CommonRequestBody.RequestParam requestParam) {
        AppNode appNode;
        String riEndpoint = ConfigManager.INSTANCE.getRiEndpoint();
        if (riEndpoint == null || riEndpoint.length() == 0 || (appNode = this.appBody) == null) {
            return null;
        }
        CommonRequestBody commonRequestBody = new CommonRequestBody(getDeviceBody(), appNode, getUserBody$default(this, false, 1, null), (CommonRequestBody.RequestExt) null, (CommonRequestBody.RequestParam) null, 24, (DefaultConstructorMarker) null);
        commonRequestBody.setRequest(requestParam);
        CommonRequestBody.RequestExt extBody$default = getExtBody$default(this, false, 1, null);
        if (extBody$default != null) {
            commonRequestBody.setExt(extBody$default);
        }
        return this.api.ri(VungleHeader.INSTANCE.getHeaderUa(), riEndpoint, commonRequestBody);
    }

    public final void sendAdMarkup(@NotNull String str, @NotNull String str2) {
        this.api.sendAdMarkup(str2, RequestBody.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, MediaType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("application/json"))).enqueue(new Callback<Void>() { // from class: com.vungle.ads.internal.network.VungleApiClient$sendAdMarkup$1
            @Override // com.vungle.ads.internal.network.Callback
            public void onFailure(@Nullable Call<Void> call, @Nullable Throwable th) {
            }

            @Override // com.vungle.ads.internal.network.Callback
            public void onResponse(@Nullable Call<Void> call, @Nullable Response<Void> response) {
            }
        });
    }

    public final void setAppBody$vungle_ads_release(@Nullable AppNode appNode) {
        this.appBody = appNode;
    }

    public final void setGzipApi$vungle_ads_release(@NotNull VungleApi vungleApi) {
        this.gzipApi = vungleApi;
    }

    public final void setResponseInterceptor$vungle_ads_release(@NotNull Interceptor interceptor) {
        this.responseInterceptor = interceptor;
    }

    public final void setRetryAfterDataMap$vungle_ads_release(@NotNull Map<String, Long> map) {
        this.retryAfterDataMap = map;
    }

    @VisibleForTesting
    public static /* synthetic */ void getAppBody$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGzipApi$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getResponseInterceptor$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getRetryAfterDataMap$vungle_ads_release$annotations() {
    }
}
