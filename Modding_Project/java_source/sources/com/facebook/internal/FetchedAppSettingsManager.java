package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.appevents.codeless.internal.UnityReflection;
import com.facebook.appevents.internal.AutomaticAnalyticsLogger;
import com.facebook.appevents.internal.Constants;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.mbridge.msdk.MBridgeConstans;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002>?B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u001b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0014\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001a\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ1\u0010 \u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001f0\u001e0\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b \u0010!J#\u0010%\u001a\u0004\u0018\u00010$2\b\u0010\"\u001a\u0004\u0018\u00010\u00162\u0006\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b%\u0010&J'\u0010'\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b'\u0010!R\u001c\u0010+\u001a\n (*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00060,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R \u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\"\u00106\u001a\u0010\u0012\f\u0012\n (*\u0004\u0018\u00010404038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u00105R\u001a\u00109\u001a\b\u0012\u0004\u0012\u00020\u000b078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u00108R\u0016\u0010;\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010:R\u0018\u0010=\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010<¨\u0006@"}, d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "", "applicationId", "Lcom/facebook/internal/FetchedAppSettings;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;", "Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;", "callback", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;)V", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Map;", "forceRequery", "Wwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;", "Lorg/json/JSONObject;", "settingsJSON", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lorg/json/JSONObject;", "dialogConfigResponse", "", "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Ljava/util/Map;", "protectedModeSettings", "ruleType", "Lorg/json/JSONArray;", "Wwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;", "Wwwwwwwwwwwwwwwwwwwwwww", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "APP_SETTING_FIELDS", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "fetchedAppSettings", "Ljava/util/concurrent/atomic/AtomicReference;", "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;", "Ljava/util/concurrent/atomic/AtomicReference;", "loadingState", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "fetchedAppSettingsCallbacks", "Z", "printedSDKUpdatedMessage", "Lorg/json/JSONArray;", "unityEventBindings", "FetchAppSettingState", "FetchedAppSettingsCallback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FetchedAppSettingsManager {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static JSONArray f6697Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6698Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final FetchedAppSettingsManager INSTANCE = new FetchedAppSettingsManager();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6703Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FetchedAppSettingsManager.class.getSimpleName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<String> f6702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.listOf((Object[]) new String[]{"supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories", "app_events_session_timeout", "app_events_feature_bitmask", "auto_event_mapping_android", "seamless_login", "smart_login_bookmark_icon_url", "smart_login_menu_icon_url", "restrictive_data_filter_params", "aam_rules", "suggested_events_setting", "protected_mode_rules", "auto_log_app_events_default", "auto_log_app_events_enabled"});
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, FetchedAppSettings> f6701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicReference<FetchAppSettingState> f6700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicReference<>(FetchAppSettingState.NOT_LOADED);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConcurrentLinkedQueue<FetchedAppSettingsCallback> f6699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentLinkedQueue<>();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;", "", "(Ljava/lang/String;I)V", "NOT_LOADED", "LOADING", "SUCCESS", "ERROR", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum FetchAppSettingState {
        NOT_LOADED,
        LOADING,
        SUCCESS,
        ERROR;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static FetchAppSettingState[] valuesCustom() {
            FetchAppSettingState[] valuesCustom = values();
            return (FetchAppSettingState[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;", "", "Lcom/facebook/internal/FetchedAppSettings;", "fetchedAppSettings", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/FetchedAppSettings;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface FetchedAppSettingsCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable FetchedAppSettings fetchedAppSettings);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    @Nullable
    public static final FetchedAppSettings Wwwwwwwwwwwwwwwwww(@NotNull String str, boolean z) {
        if (!z) {
            Map<String, FetchedAppSettings> map = f6701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        FetchedAppSettingsManager fetchedAppSettingsManager = INSTANCE;
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        FetchedAppSettings Wwwwwwwwwwwwwwwwwwwwwwwww2 = fetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        if (Intrinsics.areEqual(str, FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww())) {
            f6700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(FetchAppSettingState.SUCCESS);
            fetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwww();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public static final void Wwwwwwwwwwwwwwwwwww(FetchedAppSettingsCallback fetchedAppSettingsCallback, FetchedAppSettings fetchedAppSettings) {
        fetchedAppSettingsCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fetchedAppSettings);
    }

    public static final void Wwwwwwwwwwwwwwwwwwww(FetchedAppSettingsCallback fetchedAppSettingsCallback) {
        fetchedAppSettingsCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, String str2) {
        FetchAppSettingState fetchAppSettingState;
        JSONObject jSONObject;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
        FetchedAppSettings fetchedAppSettings = null;
        String string = sharedPreferences.getString(str, null);
        if (!Utility.Kk(string)) {
            if (string != null) {
                try {
                    jSONObject = new JSONObject(string);
                } catch (JSONException e) {
                    Utility.Illlllllllllllllllllllll("FacebookSDK", e);
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    fetchedAppSettings = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwww(str2, jSONObject);
                }
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        FetchedAppSettingsManager fetchedAppSettingsManager = INSTANCE;
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            fetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwww(str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            sharedPreferences.edit().putString(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString()).apply();
        }
        if (fetchedAppSettings != null) {
            String Wwwwwwwwwwwwwwwwwwww2 = fetchedAppSettings.Wwwwwwwwwwwwwwwwwwww();
            if (!f6698Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && Wwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwww2.length() > 0) {
                f6698Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            }
        }
        FetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwww(str2, true);
        AutomaticAnalyticsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        AtomicReference<FetchAppSettingState> atomicReference = f6700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (f6701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(str2)) {
            fetchAppSettingState = FetchAppSettingState.SUCCESS;
        } else {
            fetchAppSettingState = FetchAppSettingState.ERROR;
        }
        atomicReference.set(fetchAppSettingState);
        fetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        final Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        final String Wwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
        if (Utility.Kk(Wwwwwwwwwwwwwwwwwwwwww2)) {
            f6700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(FetchAppSettingState.ERROR);
            INSTANCE.Wwwwwwwwwwwwwwwwwwwww();
        } else if (f6701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(Wwwwwwwwwwwwwwwwwwwwww2)) {
            f6700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(FetchAppSettingState.SUCCESS);
            INSTANCE.Wwwwwwwwwwwwwwwwwwwww();
        } else {
            AtomicReference<FetchAppSettingState> atomicReference = f6700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            FetchAppSettingState fetchAppSettingState = FetchAppSettingState.NOT_LOADED;
            FetchAppSettingState fetchAppSettingState2 = FetchAppSettingState.LOADING;
            if (!androidx.lifecycle.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReference, fetchAppSettingState, fetchAppSettingState2) && !androidx.lifecycle.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReference, FetchAppSettingState.ERROR, fetchAppSettingState2)) {
                INSTANCE.Wwwwwwwwwwwwwwwwwwwww();
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            final String format = String.format("com.facebook.internal.APP_SETTINGS.%s", Arrays.copyOf(new Object[]{Wwwwwwwwwwwwwwwwwwwwww2}, 1));
            FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2, format, Wwwwwwwwwwwwwwwwwwwwww2);
                }
            });
        }
    }

    @JvmStatic
    @Nullable
    public static final Map<String, Boolean> Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject;
        Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = Wwwwwwwwwwwwwwwwwwwwwww2.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).getString(String.format("com.facebook.internal.APP_SETTINGS.%s", Arrays.copyOf(new Object[]{Wwwwwwwwwwwwwwwwwwwwww2}, 1)), null);
        if (!Utility.Kk(string)) {
            if (string != null) {
                try {
                    jSONObject = new JSONObject(string);
                } catch (JSONException e) {
                    Utility.Illlllllllllllllllllllll("FacebookSDK", e);
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    return INSTANCE.Wwwwwwwwwwwwwwwwwwwwwww(jSONObject);
                }
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        return null;
    }

    @JvmStatic
    @Nullable
    public static final FetchedAppSettings Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        if (str != null) {
            return f6701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
        }
        return null;
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull FetchedAppSettingsCallback fetchedAppSettingsCallback) {
        f6699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(fetchedAppSettingsCallback);
        Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwww() {
        FetchAppSettingState fetchAppSettingState = f6700Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
        if (FetchAppSettingState.NOT_LOADED != fetchAppSettingState && FetchAppSettingState.LOADING != fetchAppSettingState) {
            final FetchedAppSettings fetchedAppSettings = f6701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww());
            Handler handler = new Handler(Looper.getMainLooper());
            if (FetchAppSettingState.ERROR == fetchAppSettingState) {
                while (true) {
                    ConcurrentLinkedQueue<FetchedAppSettingsCallback> concurrentLinkedQueue = f6699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (!concurrentLinkedQueue.isEmpty()) {
                        final FetchedAppSettingsCallback poll = concurrentLinkedQueue.poll();
                        handler.post(new Runnable() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // java.lang.Runnable
                            public final void run() {
                                FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwww(FetchedAppSettingsManager.FetchedAppSettingsCallback.this);
                            }
                        });
                    } else {
                        return;
                    }
                }
            } else {
                while (true) {
                    ConcurrentLinkedQueue<FetchedAppSettingsCallback> concurrentLinkedQueue2 = f6699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (!concurrentLinkedQueue2.isEmpty()) {
                        final FetchedAppSettingsCallback poll2 = concurrentLinkedQueue2.poll();
                        handler.post(new Runnable() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // java.lang.Runnable
                            public final void run() {
                                FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwww(FetchedAppSettingsManager.FetchedAppSettingsCallback.this, fetchedAppSettings);
                            }
                        });
                    } else {
                        return;
                    }
                }
            }
        }
    }

    public final JSONArray Wwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONArray(str);
        }
        return null;
    }

    public final Map<String, Boolean> Wwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        if (!jSONObject.isNull("auto_log_app_events_default")) {
            try {
                hashMap.put("auto_log_app_events_default", Boolean.valueOf(jSONObject.getBoolean("auto_log_app_events_default")));
            } catch (JSONException e) {
                Utility.Illlllllllllllllllllllll("FacebookSDK", e);
            }
        }
        if (!jSONObject.isNull("auto_log_app_events_enabled")) {
            try {
                hashMap.put("auto_log_app_events_enabled", Boolean.valueOf(jSONObject.getBoolean("auto_log_app_events_enabled")));
            } catch (JSONException e2) {
                Utility.Illlllllllllllllllllllll("FacebookSDK", e2);
            }
        }
        if (hashMap.isEmpty()) {
            return null;
        }
        return hashMap;
    }

    public final Map<String, Map<String, FetchedAppSettings.DialogFeatureConfig>> Wwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) {
        JSONArray optJSONArray;
        int length;
        HashMap hashMap = new HashMap();
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null && (length = optJSONArray.length()) > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                FetchedAppSettings.DialogFeatureConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FetchedAppSettings.DialogFeatureConfig.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(optJSONArray.optJSONObject(i));
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    Map map = (Map) hashMap.get(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                    if (map == null) {
                        map = new HashMap();
                        hashMap.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, map);
                    }
                    map.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        return hashMap;
    }

    @NotNull
    public final FetchedAppSettings Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull JSONObject jSONObject) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        String jSONArray;
        JSONArray optJSONArray = jSONObject.optJSONArray("android_sdk_error_categories");
        FacebookRequestErrorClassification.Companion companion = FacebookRequestErrorClassification.Companion;
        FacebookRequestErrorClassification Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(optJSONArray);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        FacebookRequestErrorClassification facebookRequestErrorClassification = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        int optInt = jSONObject.optInt("app_events_feature_bitmask", 0);
        if ((optInt & 8) != 0) {
            z = true;
        } else {
            z = false;
        }
        if ((optInt & 16) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((optInt & 32) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if ((optInt & 256) != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        if ((optInt & 16384) != 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        JSONArray optJSONArray2 = jSONObject.optJSONArray("auto_event_mapping_android");
        f6697Wwwwwwwwwwwwwwwwwwwwwwwwwwww = optJSONArray2;
        if (optJSONArray2 != null && InternalSettings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            UnityReflection unityReflection = UnityReflection.INSTANCE;
            if (optJSONArray2 == null) {
                jSONArray = null;
            } else {
                jSONArray = optJSONArray2.toString();
            }
            UnityReflection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONArray);
        }
        FetchedAppSettings fetchedAppSettings = new FetchedAppSettings(jSONObject.optBoolean("supports_implicit_sdk_logging", false), jSONObject.optString("gdpv4_nux_content", ""), jSONObject.optBoolean("gdpv4_nux_enabled", false), jSONObject.optInt("app_events_session_timeout", Constants.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), SmartLoginOption.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optLong("seamless_login")), Wwwwwwwwwwwwwwwwwwwwwwww(jSONObject.optJSONObject("android_dialog_configs")), z, facebookRequestErrorClassification, jSONObject.optString("smart_login_bookmark_icon_url"), jSONObject.optString("smart_login_menu_icon_url"), z2, z3, optJSONArray2, jSONObject.optString("sdk_update_message"), z4, z5, jSONObject.optString("aam_rules"), jSONObject.optString("suggested_events_setting"), jSONObject.optString("restrictive_data_filter_params"), Wwwwwwwwwwwwwwwwwwwwww(jSONObject.optJSONObject("protected_mode_rules"), "standard_params"), Wwwwwwwwwwwwwwwwwwwwww(jSONObject.optJSONObject("protected_mode_rules"), "maca_rules"), Wwwwwwwwwwwwwwwwwwwwwww(jSONObject), Wwwwwwwwwwwwwwwwwwwwww(jSONObject.optJSONObject("protected_mode_rules"), "blocklist_events"), Wwwwwwwwwwwwwwwwwwwwww(jSONObject.optJSONObject("protected_mode_rules"), "redacted_events"), Wwwwwwwwwwwwwwwwwwwwww(jSONObject.optJSONObject("protected_mode_rules"), "sensitive_params"));
        f6701Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(str, fetchedAppSettings);
        return fetchedAppSettings;
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(f6702Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        bundle.putString("fields", TextUtils.join(",", arrayList));
        GraphRequest Wwwwwwwwwww2 = GraphRequest.Companion.Wwwwwwwwwww(null, MBridgeConstans.DYNAMIC_VIEW_WX_APP, null);
        Wwwwwwwwwww2.Www(true);
        Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(bundle);
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return new JSONObject();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
