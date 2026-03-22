package com.vungle.ads.internal;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.vungle.ads.APIFailedStatusCodeError;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.InvalidEndpointError;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.model.Cookie;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.network.Call;
import com.vungle.ads.internal.network.Callback;
import com.vungle.ads.internal.network.Response;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0007J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0017\u0010\u001b\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u000fH\u0001¢\u0006\u0002\b\u001dJ\r\u0010\u001e\u001a\u00020\u001fH\u0001¢\u0006\u0002\b J\u0006\u0010!\u001a\u00020\u0007J8\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$2!\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b'\u0012\b\b(\u0012\u0004\b\b()\u0012\u0004\u0012\u00020\u001f0&H\u0000¢\u0006\u0002\b*J\u0006\u0010+\u001a\u00020\u001aJ\u0006\u0010,\u001a\u00020\fJ\u0018\u0010-\u001a\u0004\u0018\u00010\u000f2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\fJ\u0006\u00101\u001a\u00020\u0004J\u0006\u00102\u001a\u00020\u0007J\u0006\u00103\u001a\u00020\fJ\u0006\u00104\u001a\u00020\fJ\b\u00105\u001a\u0004\u0018\u00010\fJ\b\u00106\u001a\u0004\u0018\u00010\fJ\b\u00107\u001a\u0004\u0018\u00010\fJ\u0006\u00108\u001a\u00020\fJ\b\u00109\u001a\u0004\u0018\u00010\fJ\u0006\u0010:\u001a\u00020\u001aJ\u0006\u0010;\u001a\u00020\u0004J\u0006\u0010<\u001a\u00020\u001aJ\u0006\u0010=\u001a\u00020\fJ\b\u0010>\u001a\u0004\u0018\u00010\fJ\u0006\u0010?\u001a\u00020\fJ\u0012\u0010@\u001a\u0004\u0018\u00010\u00172\b\u0010A\u001a\u0004\u0018\u00010\fJ\b\u0010B\u001a\u0004\u0018\u00010\fJ\u0006\u0010C\u001a\u00020\u0007J\u0006\u0010D\u001a\u00020\u0007J\b\u0010E\u001a\u0004\u0018\u00010FJ3\u0010G\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010H\u001a\u00020\u001a2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010JH\u0000¢\u0006\u0002\bKJ\u0006\u0010L\u001a\u00020\u001aJ\u0006\u0010M\u001a\u00020\u001aJ\u0006\u0010N\u001a\u00020\u001aJ\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016J\u0006\u0010O\u001a\u00020\u001aJ\u0006\u0010P\u001a\u00020\u001aJ\u0015\u0010Q\u001a\u00020\u001f2\u0006\u0010\r\u001a\u00020\fH\u0000¢\u0006\u0002\bRJ\u0006\u0010S\u001a\u00020\u001aJ\u0006\u0010T\u001a\u00020\u001aJ\u0016\u0010U\u001a\u00020\u001f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020/J\u001d\u0010V\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$2\u0006\u0010W\u001a\u00020\fH\u0001¢\u0006\u0002\bXJ\u0017\u0010Y\u001a\u00020\u001a2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000fH\u0001¢\u0006\u0002\bZJ\u0019\u0010[\u001a\u00020\u001a2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0001¢\u0006\u0002\b\\R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006]²\u0006\n\u0010^\u001a\u00020_X\u008a\u0084\u0002²\u0006\n\u0010.\u001a\u00020/X\u008a\u0084\u0002²\u0006\n\u0010.\u001a\u00020/X\u008a\u0084\u0002²\u0006\n\u0010^\u001a\u00020_X\u008a\u0084\u0002²\u0006\n\u0010`\u001a\u00020aX\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/ConfigManager;", "", "()V", "CONFIG_ALL_DATA", "", "CONFIG_LAST_VALIDATED_TIMESTAMP_ONLY", "CONFIG_LAST_VALIDATE_TS_DEFAULT", "", "CONFIG_NOT_AVAILABLE", "DEFAULT_SESSION_TIMEOUT_SECONDS", "DEFAULT_SIGNALS_SESSION_TIMEOUT_SECONDS", "TAG", "", "applicationId", "config", "Lcom/vungle/ads/internal/model/ConfigPayload;", "configExt", "endpoints", "Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;", "json", "Lkotlinx/serialization/json/Json;", "placements", "", "Lcom/vungle/ads/internal/model/Placement;", "afterClickDuration", "allowAutoRedirects", "", "checkConfigPayload", "configPayload", "checkConfigPayload$vungle_ads_release", "clearConfig", "", "clearConfig$vungle_ads_release", "configLastValidatedTimestamp", "fetchConfigAsync", "context", "Landroid/content/Context;", "onComplete", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "result", "fetchConfigAsync$vungle_ads_release", "fpdEnabled", "getAdsEndpoint", "getCachedConfig", "filePreferences", "Lcom/vungle/ads/internal/persistence/FilePreferences;", RemoteConfigConstants.RequestFieldKey.APP_ID, "getCleverCacheDiskPercentage", "getCleverCacheDiskSize", "getConfigExtension", "getErrorLoggingEndpoint", "getGDPRButtonAccept", "getGDPRButtonDeny", "getGDPRConsentMessage", "getGDPRConsentMessageVersion", "getGDPRConsentTitle", "getGDPRIsCountryDataProtected", "getLogLevel", "getMetricsEnabled", "getMetricsEndpoint", "getMraidEndpoint", "getMraidJsVersion", "getPlacement", "id", "getRiEndpoint", "getSessionTimeout", "getSignalsSessionTimeout", "getTcfStatus", "Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;", "initWithConfig", "fromCachedConfig", "metric", "Lcom/vungle/ads/SingleValueMetric;", "initWithConfig$vungle_ads_release", "isCleverCacheEnabled", "isReportIncentivizedEnabled", "otEnabled", "retryPriorityTPATs", "rtaDebuggingEnabled", "setAppId", "setAppId$vungle_ads_release", "shouldDisableAdId", "signalsDisabled", "updateCachedConfig", "updateConfigExtension", "ext", "updateConfigExtension$vungle_ads_release", "validateConfig", "validateConfig$vungle_ads_release", "validateEndpoints", "validateEndpoints$vungle_ads_release", "vungle-ads_release", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;", "sdkExecutors", "Lcom/vungle/ads/internal/executor/Executors;"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class ConfigManager {
    private static final int CONFIG_ALL_DATA = 2;
    private static final int CONFIG_LAST_VALIDATED_TIMESTAMP_ONLY = 1;
    public static final long CONFIG_LAST_VALIDATE_TS_DEFAULT = -1;
    private static final int CONFIG_NOT_AVAILABLE = 0;
    private static final int DEFAULT_SESSION_TIMEOUT_SECONDS = 900;
    private static final int DEFAULT_SIGNALS_SESSION_TIMEOUT_SECONDS = 1800;
    @NotNull
    public static final String TAG = "ConfigManager";
    private static String applicationId;
    @Nullable
    private static ConfigPayload config;
    @Nullable
    private static String configExt;
    @Nullable
    private static ConfigPayload.Endpoints endpoints;
    @Nullable
    private static List<Placement> placements;
    @NotNull
    public static final ConfigManager INSTANCE = new ConfigManager();
    @NotNull
    private static final Json json = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.vungle.ads.internal.ConfigManager$json$1
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

    private ConfigManager() {
    }

    /* renamed from: fetchConfigAsync$lambda-0  reason: not valid java name */
    private static final VungleApiClient m287fetchConfigAsync$lambda0(Lazy<VungleApiClient> lazy) {
        return lazy.getValue();
    }

    /* renamed from: initWithConfig$lambda-2  reason: not valid java name */
    private static final FilePreferences m288initWithConfig$lambda2(Lazy<FilePreferences> lazy) {
        return lazy.getValue();
    }

    /* renamed from: initWithConfig$lambda-4  reason: not valid java name */
    private static final VungleApiClient m289initWithConfig$lambda4(Lazy<VungleApiClient> lazy) {
        return lazy.getValue();
    }

    /* renamed from: initWithConfig$lambda-5  reason: not valid java name */
    private static final Executors m290initWithConfig$lambda5(Lazy<? extends Executors> lazy) {
        return lazy.getValue();
    }

    public static /* synthetic */ void initWithConfig$vungle_ads_release$default(ConfigManager configManager, Context context, ConfigPayload configPayload, boolean z, SingleValueMetric singleValueMetric, int i, Object obj) {
        if ((i & 8) != 0) {
            singleValueMetric = null;
        }
        configManager.initWithConfig$vungle_ads_release(context, configPayload, z, singleValueMetric);
    }

    /* renamed from: updateConfigExtension$lambda-1  reason: not valid java name */
    private static final FilePreferences m291updateConfigExtension$lambda1(Lazy<FilePreferences> lazy) {
        return lazy.getValue();
    }

    public static /* synthetic */ boolean validateEndpoints$vungle_ads_release$default(ConfigManager configManager, ConfigPayload.Endpoints endpoints2, int i, Object obj) {
        if ((i & 1) != 0) {
            endpoints2 = endpoints;
        }
        return configManager.validateEndpoints$vungle_ads_release(endpoints2);
    }

    public final long afterClickDuration() {
        ConfigPayload.AutoRedirect autoRedirect;
        Long afterClickDuration;
        ConfigPayload configPayload = config;
        if (configPayload != null && (autoRedirect = configPayload.getAutoRedirect()) != null && (afterClickDuration = autoRedirect.getAfterClickDuration()) != null) {
            return afterClickDuration.longValue();
        }
        return Long.MAX_VALUE;
    }

    public final boolean allowAutoRedirects() {
        ConfigPayload.AutoRedirect autoRedirect;
        Boolean allowAutoRedirect;
        ConfigPayload configPayload = config;
        if (configPayload != null && (autoRedirect = configPayload.getAutoRedirect()) != null && (allowAutoRedirect = autoRedirect.getAllowAutoRedirect()) != null) {
            return allowAutoRedirect.booleanValue();
        }
        return false;
    }

    @VisibleForTesting
    public final int checkConfigPayload$vungle_ads_release(@Nullable ConfigPayload configPayload) {
        Long configLastValidatedTimestamp;
        if (configPayload == null || configPayload.getConfigLastValidatedTimestamp() == null || ((configLastValidatedTimestamp = configPayload.getConfigLastValidatedTimestamp()) != null && configLastValidatedTimestamp.longValue() == -1)) {
            return 0;
        }
        if (configPayload.getEndpoints() == null) {
            return 1;
        }
        return 2;
    }

    @VisibleForTesting
    public final void clearConfig$vungle_ads_release() {
        endpoints = null;
        placements = null;
        config = null;
    }

    public final long configLastValidatedTimestamp() {
        Long configLastValidatedTimestamp;
        ConfigPayload configPayload = config;
        if (configPayload != null && (configLastValidatedTimestamp = configPayload.getConfigLastValidatedTimestamp()) != null) {
            return configLastValidatedTimestamp.longValue();
        }
        return -1L;
    }

    public final void fetchConfigAsync$vungle_ads_release(@NotNull final Context context, @NotNull final Function1<? super Boolean, Unit> function1) {
        boolean z;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        try {
            Call<ConfigPayload> config2 = m287fetchConfigAsync$lambda0(LazyKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.ConfigManager$fetchConfigAsync$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final VungleApiClient invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
                }
            })).config();
            if (config2 != null) {
                config2.enqueue(new Callback<ConfigPayload>() { // from class: com.vungle.ads.internal.ConfigManager$fetchConfigAsync$1
                    @Override // com.vungle.ads.internal.network.Callback
                    public void onFailure(@Nullable Call<ConfigPayload> call, @Nullable Throwable th) {
                        String str;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Error while fetching config: ");
                        if (th != null) {
                            str = th.getMessage();
                        } else {
                            str = null;
                        }
                        sb.append(str);
                        new NetworkUnreachable(sb.toString()).logErrorNoReturnValue$vungle_ads_release();
                        function1.invoke(Boolean.FALSE);
                    }

                    @Override // com.vungle.ads.internal.network.Callback
                    public void onResponse(@Nullable Call<ConfigPayload> call, @Nullable Response<ConfigPayload> response) {
                        Integer num;
                        if (response != null && response.isSuccessful() && response.body() != null) {
                            SingleValueMetric singleValueMetric = new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.CONFIG_LOADED_FROM_INIT);
                            ConfigManager.INSTANCE.initWithConfig$vungle_ads_release(context, response.body(), false, singleValueMetric);
                            function1.invoke(Boolean.TRUE);
                            return;
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append("config API: ");
                        if (response != null) {
                            num = Integer.valueOf(response.code());
                        } else {
                            num = null;
                        }
                        sb.append(num);
                        new APIFailedStatusCodeError(sb.toString()).logErrorNoReturnValue$vungle_ads_release();
                        function1.invoke(Boolean.FALSE);
                    }
                });
            }
        } catch (Throwable th) {
            if (th instanceof UnknownHostException) {
                z = true;
            } else {
                z = th instanceof SecurityException;
            }
            if (z) {
                new NetworkUnreachable("Config unknown: " + th.getMessage()).logErrorNoReturnValue$vungle_ads_release();
            } else {
                new NetworkUnreachable("Config: " + th.getMessage()).logErrorNoReturnValue$vungle_ads_release();
            }
            function1.invoke(Boolean.FALSE);
        }
    }

    public final boolean fpdEnabled() {
        Boolean fpdEnabled;
        ConfigPayload configPayload = config;
        if (configPayload != null && (fpdEnabled = configPayload.getFpdEnabled()) != null) {
            return fpdEnabled.booleanValue();
        }
        return true;
    }

    @NotNull
    public final String getAdsEndpoint() {
        String str;
        ConfigPayload.Endpoints endpoints2 = endpoints;
        String str2 = null;
        if (endpoints2 != null) {
            str = endpoints2.getAdsEndpoint();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            str2 = str;
        }
        if (str2 == null) {
            return Constants.DEFAULT_ADS_ENDPOINT;
        }
        return str2;
    }

    @Nullable
    public final ConfigPayload getCachedConfig(@NotNull FilePreferences filePreferences, @NotNull String str) {
        long j;
        Long refreshTime;
        try {
            String string = filePreferences.getString(Cookie.CONFIG_APP_ID);
            if (string != null && string.length() != 0 && StringsKt.equals(string, str, true)) {
                String string2 = filePreferences.getString(Cookie.CONFIG_RESPONSE);
                if (string2 == null) {
                    return null;
                }
                long j2 = filePreferences.getLong(Cookie.CONFIG_UPDATE_TIME, 0L);
                Json json2 = json;
                ConfigPayload configPayload = (ConfigPayload) json2.decodeFromString(SerializersKt.serializer(json2.getSerializersModule(), Reflection.typeOf(ConfigPayload.class)), string2);
                ConfigPayload.ConfigSettings configSettings = configPayload.getConfigSettings();
                if (configSettings != null && (refreshTime = configSettings.getRefreshTime()) != null) {
                    j = refreshTime.longValue();
                } else {
                    j = -1;
                }
                if (j + j2 < System.currentTimeMillis()) {
                    Logger.Companion.w(TAG, "cache config expired. re-config");
                    return null;
                }
                Logger.Companion.w(TAG, "use cache config.");
                return configPayload;
            }
            Logger.Companion.w(TAG, "app id mismatch, re-config");
            return null;
        } catch (Exception e) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Error while parsing cached config: " + e.getMessage());
            return null;
        }
    }

    public final int getCleverCacheDiskPercentage() {
        ConfigPayload.CleverCache cleverCache;
        Integer diskPercentage;
        ConfigPayload configPayload = config;
        if (configPayload != null && (cleverCache = configPayload.getCleverCache()) != null && (diskPercentage = cleverCache.getDiskPercentage()) != null) {
            return diskPercentage.intValue();
        }
        return 3;
    }

    public final long getCleverCacheDiskSize() {
        ConfigPayload.CleverCache cleverCache;
        Long diskSize;
        ConfigPayload configPayload = config;
        if (configPayload != null && (cleverCache = configPayload.getCleverCache()) != null && (diskSize = cleverCache.getDiskSize()) != null) {
            long j = 1024;
            return diskSize.longValue() * j * j;
        }
        return 1048576000L;
    }

    @NotNull
    public final String getConfigExtension() {
        String str = configExt;
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getErrorLoggingEndpoint() {
        String str;
        ConfigPayload.Endpoints endpoints2 = endpoints;
        String str2 = null;
        if (endpoints2 != null) {
            str = endpoints2.getErrorLogsEndpoint();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            str2 = str;
        }
        if (str2 == null) {
            return Constants.DEFAULT_ERROR_LOGS_ENDPOINT;
        }
        return str2;
    }

    @Nullable
    public final String getGDPRButtonAccept() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (gdpr = userPrivacy.getGdpr()) != null) {
            return gdpr.getButtonAccept();
        }
        return null;
    }

    @Nullable
    public final String getGDPRButtonDeny() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (gdpr = userPrivacy.getGdpr()) != null) {
            return gdpr.getButtonDeny();
        }
        return null;
    }

    @Nullable
    public final String getGDPRConsentMessage() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (gdpr = userPrivacy.getGdpr()) != null) {
            return gdpr.getConsentMessage();
        }
        return null;
    }

    @NotNull
    public final String getGDPRConsentMessageVersion() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        String consentMessageVersion;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (gdpr = userPrivacy.getGdpr()) != null && (consentMessageVersion = gdpr.getConsentMessageVersion()) != null) {
            return consentMessageVersion;
        }
        return "";
    }

    @Nullable
    public final String getGDPRConsentTitle() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (gdpr = userPrivacy.getGdpr()) != null) {
            return gdpr.getConsentTitle();
        }
        return null;
    }

    public final boolean getGDPRIsCountryDataProtected() {
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.GDPRSettings gdpr;
        Boolean isCountryDataProtected;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (gdpr = userPrivacy.getGdpr()) != null && (isCountryDataProtected = gdpr.isCountryDataProtected()) != null) {
            return isCountryDataProtected.booleanValue();
        }
        return false;
    }

    public final int getLogLevel() {
        ConfigPayload.LogMetricsSettings logMetricsSettings;
        Integer errorLogLevel;
        ConfigPayload configPayload = config;
        if (configPayload != null && (logMetricsSettings = configPayload.getLogMetricsSettings()) != null && (errorLogLevel = logMetricsSettings.getErrorLogLevel()) != null) {
            return errorLogLevel.intValue();
        }
        return AnalyticsClient.LogLevel.ERROR_LOG_LEVEL_ERROR.getLevel();
    }

    public final boolean getMetricsEnabled() {
        ConfigPayload.LogMetricsSettings logMetricsSettings;
        Boolean metricsEnabled;
        ConfigPayload configPayload = config;
        if (configPayload != null && (logMetricsSettings = configPayload.getLogMetricsSettings()) != null && (metricsEnabled = logMetricsSettings.getMetricsEnabled()) != null) {
            return metricsEnabled.booleanValue();
        }
        return false;
    }

    @NotNull
    public final String getMetricsEndpoint() {
        String str;
        ConfigPayload.Endpoints endpoints2 = endpoints;
        String str2 = null;
        if (endpoints2 != null) {
            str = endpoints2.getMetricsEndpoint();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            str2 = str;
        }
        if (str2 == null) {
            return Constants.DEFAULT_METRICS_ENDPOINT;
        }
        return str2;
    }

    @Nullable
    public final String getMraidEndpoint() {
        ConfigPayload.Endpoints endpoints2 = endpoints;
        if (endpoints2 != null) {
            return endpoints2.getMraidEndpoint();
        }
        return null;
    }

    @NotNull
    public final String getMraidJsVersion() {
        String mraidEndpoint;
        if (getMraidEndpoint() != null) {
            String str = "mraid_" + Uri.parse(mraidEndpoint).getLastPathSegment();
            if (str != null) {
                return str;
            }
            return "mraid_1";
        }
        return "mraid_1";
    }

    @Nullable
    public final Placement getPlacement(@Nullable String str) {
        List<Placement> list = placements;
        Object obj = null;
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (Intrinsics.areEqual(((Placement) next).getReferenceId(), str)) {
                obj = next;
                break;
            }
        }
        return (Placement) obj;
    }

    @Nullable
    public final String getRiEndpoint() {
        ConfigPayload.Endpoints endpoints2 = endpoints;
        if (endpoints2 != null) {
            return endpoints2.getRiEndpoint();
        }
        return null;
    }

    public final long getSessionTimeout() {
        int i;
        Integer sessionTimeout;
        ConfigPayload configPayload = config;
        if (configPayload != null && (sessionTimeout = configPayload.getSessionTimeout()) != null) {
            i = sessionTimeout.intValue();
        } else {
            i = 900;
        }
        return i * 1000;
    }

    public final long getSignalsSessionTimeout() {
        int i;
        Integer signalSessionTimeout;
        ConfigPayload configPayload = config;
        if (configPayload != null && (signalSessionTimeout = configPayload.getSignalSessionTimeout()) != null) {
            i = signalSessionTimeout.intValue();
        } else {
            i = DEFAULT_SIGNALS_SESSION_TIMEOUT_SECONDS;
        }
        return i * 1000;
    }

    @Nullable
    public final ConfigPayload.IABSettings.TcfStatus getTcfStatus() {
        Integer num;
        ConfigPayload.UserPrivacy userPrivacy;
        ConfigPayload.IABSettings iab;
        ConfigPayload.IABSettings.TcfStatus.Companion companion = ConfigPayload.IABSettings.TcfStatus.Companion;
        ConfigPayload configPayload = config;
        if (configPayload != null && (userPrivacy = configPayload.getUserPrivacy()) != null && (iab = userPrivacy.getIab()) != null) {
            num = iab.getTcfStatus();
        } else {
            num = null;
        }
        return companion.fromRawValue(num);
    }

    public final synchronized void initWithConfig$vungle_ads_release(@NotNull final Context context, @Nullable ConfigPayload configPayload, boolean z, @Nullable SingleValueMetric singleValueMetric) {
        long j;
        ConfigPayload.Endpoints endpoints2;
        try {
            try {
                ServiceLocator.Companion companion = ServiceLocator.Companion;
                LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
                Lazy lazy = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<FilePreferences>() { // from class: com.vungle.ads.internal.ConfigManager$initWithConfig$$inlined$inject$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.FilePreferences, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final FilePreferences invoke() {
                        return ServiceLocator.Companion.getInstance(context).getService(FilePreferences.class);
                    }
                });
                int checkConfigPayload$vungle_ads_release = checkConfigPayload$vungle_ads_release(configPayload);
                if (checkConfigPayload$vungle_ads_release != 0) {
                    if (checkConfigPayload$vungle_ads_release != 1) {
                        config = configPayload;
                        List<Placement> list = null;
                        if (configPayload != null) {
                            endpoints2 = configPayload.getEndpoints();
                        } else {
                            endpoints2 = null;
                        }
                        endpoints = endpoints2;
                        if (configPayload != null) {
                            list = configPayload.getPlacements();
                        }
                        placements = list;
                        int logLevel = getLogLevel();
                        boolean metricsEnabled = getMetricsEnabled();
                        Lazy lazy2 = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.ConfigManager$initWithConfig$$inlined$inject$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
                            @Override // kotlin.jvm.functions.Function0
                            @NotNull
                            public final VungleApiClient invoke() {
                                return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
                            }
                        });
                        Lazy lazy3 = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Executors>() { // from class: com.vungle.ads.internal.ConfigManager$initWithConfig$$inlined$inject$3
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
                            @Override // kotlin.jvm.functions.Function0
                            @NotNull
                            public final Executors invoke() {
                                return ServiceLocator.Companion.getInstance(context).getService(Executors.class);
                            }
                        });
                        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                        analyticsClient.initOrUpdate$vungle_ads_release(m289initWithConfig$lambda4(lazy2), m290initWithConfig$lambda5(lazy3).getLoggerExecutor(), logLevel, metricsEnabled);
                        if (!z && configPayload != null) {
                            updateCachedConfig(configPayload, m288initWithConfig$lambda2(lazy));
                            String configExtension = configPayload.getConfigExtension();
                            if (configExtension != null) {
                                INSTANCE.updateConfigExtension$vungle_ads_release(context, configExtension);
                            }
                        }
                        if (singleValueMetric != null) {
                            AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, singleValueMetric, (LogEntry) null, (String) null, 6, (Object) null);
                        }
                        PrivacyManager.INSTANCE.updateDisableAdId(shouldDisableAdId());
                        return;
                    }
                    if (!z && configPayload != null) {
                        Long configLastValidatedTimestamp = configPayload.getConfigLastValidatedTimestamp();
                        if (configLastValidatedTimestamp != null) {
                            j = configLastValidatedTimestamp.longValue();
                        } else {
                            j = -1;
                        }
                        ConfigPayload configPayload2 = config;
                        if (configPayload2 != null) {
                            configPayload2.setConfigLastValidatedTimestamp(Long.valueOf(j));
                        }
                        ConfigPayload configPayload3 = config;
                        if (configPayload3 != null) {
                            INSTANCE.updateCachedConfig(configPayload3, m288initWithConfig$lambda2(lazy));
                        }
                    }
                    return;
                }
                Logger.Companion.e(TAG, "Config is not available.");
            } catch (Exception e) {
                Logger.Companion.e(TAG, "Error while validating config: " + e.getMessage());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean isCleverCacheEnabled() {
        ConfigPayload.CleverCache cleverCache;
        Boolean enabled;
        ConfigPayload configPayload = config;
        if (configPayload != null && (cleverCache = configPayload.getCleverCache()) != null && (enabled = cleverCache.getEnabled()) != null) {
            return enabled.booleanValue();
        }
        return false;
    }

    public final boolean isReportIncentivizedEnabled() {
        Boolean isReportIncentivizedEnabled;
        ConfigPayload configPayload = config;
        if (configPayload != null && (isReportIncentivizedEnabled = configPayload.isReportIncentivizedEnabled()) != null) {
            return isReportIncentivizedEnabled.booleanValue();
        }
        return false;
    }

    public final boolean otEnabled() {
        Boolean enableOT;
        ConfigPayload configPayload = config;
        if (configPayload != null && (enableOT = configPayload.getEnableOT()) != null) {
            return enableOT.booleanValue();
        }
        return true;
    }

    @Nullable
    public final List<Placement> placements() {
        return placements;
    }

    public final boolean retryPriorityTPATs() {
        Boolean retryPriorityTPATs;
        ConfigPayload configPayload = config;
        if (configPayload != null && (retryPriorityTPATs = configPayload.getRetryPriorityTPATs()) != null) {
            return retryPriorityTPATs.booleanValue();
        }
        return false;
    }

    public final boolean rtaDebuggingEnabled() {
        Boolean rtaDebugging;
        ConfigPayload configPayload = config;
        if (configPayload != null && (rtaDebugging = configPayload.getRtaDebugging()) != null) {
            return rtaDebugging.booleanValue();
        }
        return false;
    }

    public final void setAppId$vungle_ads_release(@NotNull String str) {
        applicationId = str;
    }

    public final boolean shouldDisableAdId() {
        Boolean disableAdId;
        ConfigPayload configPayload = config;
        if (configPayload != null && (disableAdId = configPayload.getDisableAdId()) != null) {
            return disableAdId.booleanValue();
        }
        return true;
    }

    public final boolean signalsDisabled() {
        Boolean signalsDisabled;
        ConfigPayload configPayload = config;
        if (configPayload != null && (signalsDisabled = configPayload.getSignalsDisabled()) != null) {
            return signalsDisabled.booleanValue();
        }
        return false;
    }

    public final void updateCachedConfig(@NotNull ConfigPayload configPayload, @NotNull FilePreferences filePreferences) {
        try {
            String str = applicationId;
            if (str == null) {
                str = null;
            }
            filePreferences.put(Cookie.CONFIG_APP_ID, str);
            filePreferences.put(Cookie.CONFIG_UPDATE_TIME, System.currentTimeMillis());
            Json json2 = json;
            filePreferences.put(Cookie.CONFIG_RESPONSE, json2.encodeToString(SerializersKt.serializer(json2.getSerializersModule(), Reflection.typeOf(ConfigPayload.class)), configPayload));
            filePreferences.apply();
        } catch (Exception e) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Exception: " + e.getMessage() + " for updating cached config");
        }
    }

    @VisibleForTesting
    public final void updateConfigExtension$vungle_ads_release(@NotNull final Context context, @NotNull String str) {
        configExt = str;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        m291updateConfigExtension$lambda1(LazyKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new Function0<FilePreferences>() { // from class: com.vungle.ads.internal.ConfigManager$updateConfigExtension$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.FilePreferences, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FilePreferences invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(FilePreferences.class);
            }
        })).put(Cookie.CONFIG_EXTENSION, str).apply();
    }

    @VisibleForTesting
    public final boolean validateConfig$vungle_ads_release(@Nullable ConfigPayload configPayload) {
        ConfigPayload.Endpoints endpoints2;
        if (configPayload != null) {
            endpoints2 = configPayload.getEndpoints();
        } else {
            endpoints2 = null;
        }
        if (endpoints2 != null && validateEndpoints$vungle_ads_release(configPayload.getEndpoints()) && configPayload.getPlacements() != null) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    public final boolean validateEndpoints$vungle_ads_release(@Nullable ConfigPayload.Endpoints endpoints2) {
        String str;
        boolean z;
        String str2;
        String str3;
        String str4;
        String str5 = null;
        if (endpoints2 != null) {
            str = endpoints2.getAdsEndpoint();
        } else {
            str = null;
        }
        boolean z2 = false;
        if (str != null && str.length() != 0) {
            z = true;
        } else {
            new InvalidEndpointError(Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT, "The ads endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
            z = false;
        }
        if (endpoints2 != null) {
            str2 = endpoints2.getRiEndpoint();
        } else {
            str2 = null;
        }
        if (str2 == null || str2.length() == 0) {
            new InvalidEndpointError(Sdk.SDKError.Reason.INVALID_RI_ENDPOINT, "The ri endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
        }
        if (endpoints2 != null) {
            str3 = endpoints2.getMraidEndpoint();
        } else {
            str3 = null;
        }
        if (str3 != null && str3.length() != 0) {
            z2 = z;
        } else {
            new InvalidEndpointError(Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR, "The mraid endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
        }
        if (endpoints2 != null) {
            str4 = endpoints2.getMetricsEndpoint();
        } else {
            str4 = null;
        }
        if (str4 == null || str4.length() == 0) {
            new InvalidEndpointError(Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT, "The metrics endpoint was not provided in the config.").logErrorNoReturnValue$vungle_ads_release();
        }
        if (endpoints2 != null) {
            str5 = endpoints2.getErrorLogsEndpoint();
        }
        if (str5 != null && str5.length() != 0) {
            return z2;
        }
        Logger.Companion.e(TAG, "The error logging endpoint was not provided in the config.");
        return z2;
    }
}
