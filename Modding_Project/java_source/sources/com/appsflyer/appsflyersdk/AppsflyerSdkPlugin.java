package com.appsflyer.appsflyersdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AFAdRevenueData;
import com.appsflyer.AFLogger;
import com.appsflyer.AFPurchaseDetails;
import com.appsflyer.AFPurchaseType;
import com.appsflyer.AppsFlyerConsent;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerInAppPurchaseValidationCallback;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.MediationNetwork;
import com.appsflyer.appsflyersdk.AppsflyerSdkPlugin;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.deeplink.DeepLinkListener;
import com.appsflyer.deeplink.DeepLinkResult;
import com.appsflyer.internal.platform_extension.Plugin;
import com.appsflyer.internal.platform_extension.PluginInfo;
import com.appsflyer.share.CrossPromotionHelper;
import com.appsflyer.share.LinkGenerator;
import com.appsflyer.share.ShareInviteHelper;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.tencent.vod.flutter.FTXEvent;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import j$.util.Objects;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.text.Typography;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppsflyerSdkPlugin implements MethodChannel.MethodCallHandler, FlutterPlugin, ActivityAware {
    private static DeepLinkResult cachedDeepLinkResult;
    private static Map<String, String> cachedOnAppOpenAttribution;
    private static String cachedOnAttributionFailure;
    private static String cachedOnConversionDataFail;
    private static Map<String, Object> cachedOnConversionDataSuccess;
    private static boolean saveCallbacks;
    private Activity activity;
    private final AppsFlyerConversionListener afConversionListener;
    private final DeepLinkListener afDeepLinkListener;
    private final MethodChannel.MethodCallHandler callbacksHandler;
    private Boolean gcdCallback;
    private Boolean isFacebookDeferredApplinksEnabled;
    private Boolean isSetDisableAdvertisingIdentifiersEnable;
    private Application mApplication;
    private MethodChannel mCallbackChannel;
    private Map<String, Map<String, Object>> mCallbacks;
    private Context mContext;
    private EventChannel mEventChannel;
    private MethodChannel mMethodChannel;
    private Boolean oaoaCallback;
    PluginRegistry.NewIntentListener onNewIntentListener;
    private Boolean udlCallback;
    final Handler uiThreadHandler = new Handler(Looper.getMainLooper());
    private Boolean validatePurchaseCallback;

    /* compiled from: Proguard */
    /* renamed from: com.appsflyer.appsflyersdk.AppsflyerSdkPlugin$5  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass5 implements AppsFlyerRequestListener {
        public AnonymousClass5() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onError$1(int i, String str) {
            if (AppsflyerSdkPlugin.this.mMethodChannel != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("errorCode", Integer.valueOf(i));
                hashMap.put("errorMessage", str);
                AppsflyerSdkPlugin.this.mMethodChannel.invokeMethod("onError", hashMap);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSuccess$0() {
            if (AppsflyerSdkPlugin.this.mMethodChannel != null) {
                AppsflyerSdkPlugin.this.mMethodChannel.invokeMethod("onSuccess", null);
            }
        }

        @Override // com.appsflyer.attribution.AppsFlyerRequestListener
        public void onError(final int i, final String str) {
            AppsflyerSdkPlugin.this.uiThreadHandler.post(new Runnable() { // from class: com.appsflyer.appsflyersdk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AppsflyerSdkPlugin.AnonymousClass5.this.lambda$onError$1(i, str);
                }
            });
        }

        @Override // com.appsflyer.attribution.AppsFlyerRequestListener
        public void onSuccess() {
            AppsflyerSdkPlugin.this.uiThreadHandler.post(new Runnable() { // from class: com.appsflyer.appsflyersdk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AppsflyerSdkPlugin.AnonymousClass5.this.lambda$onSuccess$0();
                }
            });
        }
    }

    public AppsflyerSdkPlugin() {
        Boolean bool = Boolean.FALSE;
        this.gcdCallback = bool;
        this.oaoaCallback = bool;
        this.udlCallback = bool;
        this.validatePurchaseCallback = bool;
        this.isFacebookDeferredApplinksEnabled = bool;
        this.isSetDisableAdvertisingIdentifiersEnable = bool;
        this.mCallbacks = new HashMap();
        this.onNewIntentListener = new PluginRegistry.NewIntentListener() { // from class: com.appsflyer.appsflyersdk.AppsflyerSdkPlugin.1
            @Override // io.flutter.plugin.common.PluginRegistry.NewIntentListener
            public boolean onNewIntent(Intent intent) {
                AppsflyerSdkPlugin.this.activity.setIntent(intent);
                return false;
            }
        };
        this.afConversionListener = new AppsFlyerConversionListener() { // from class: com.appsflyer.appsflyersdk.AppsflyerSdkPlugin.2
            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onAppOpenAttribution(Map<String, String> map) {
                if (AppsflyerSdkPlugin.saveCallbacks) {
                    AppsflyerSdkPlugin.cachedOnAppOpenAttribution = map;
                } else if (AppsflyerSdkPlugin.this.oaoaCallback.booleanValue()) {
                    AppsflyerSdkPlugin.this.runOnUIThread(new JSONObject(AppsflyerSdkPlugin.this.replaceNullValues(map)), "onAppOpenAttribution", FirebaseAnalytics.Param.SUCCESS);
                }
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onAttributionFailure(String str) {
                if (AppsflyerSdkPlugin.saveCallbacks) {
                    AppsflyerSdkPlugin.cachedOnAttributionFailure = str;
                } else if (AppsflyerSdkPlugin.this.oaoaCallback.booleanValue()) {
                    AppsflyerSdkPlugin.this.runOnUIThread(AppsflyerSdkPlugin.this.buildJsonResponse(str, "failure"), "onAppOpenAttribution", "failure");
                }
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onConversionDataFail(String str) {
                if (AppsflyerSdkPlugin.saveCallbacks) {
                    AppsflyerSdkPlugin.cachedOnConversionDataFail = str;
                } else if (AppsflyerSdkPlugin.this.gcdCallback.booleanValue()) {
                    AppsflyerSdkPlugin.this.runOnUIThread(AppsflyerSdkPlugin.this.buildJsonResponse(str, "failure"), "onInstallConversionData", "failure");
                }
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onConversionDataSuccess(Map<String, Object> map) {
                if (AppsflyerSdkPlugin.saveCallbacks) {
                    AppsflyerSdkPlugin.cachedOnConversionDataSuccess = map;
                } else if (AppsflyerSdkPlugin.this.gcdCallback.booleanValue()) {
                    AppsflyerSdkPlugin.this.runOnUIThread(new JSONObject(AppsflyerSdkPlugin.this.replaceNullValues(map)), "onInstallConversionData", FirebaseAnalytics.Param.SUCCESS);
                }
            }
        };
        this.afDeepLinkListener = new DeepLinkListener() { // from class: com.appsflyer.appsflyersdk.AppsflyerSdkPlugin.3
            @Override // com.appsflyer.deeplink.DeepLinkListener
            public void onDeepLinking(DeepLinkResult deepLinkResult) {
                if (AppsflyerSdkPlugin.saveCallbacks) {
                    AppsflyerSdkPlugin.cachedDeepLinkResult = deepLinkResult;
                } else if (AppsflyerSdkPlugin.this.udlCallback.booleanValue()) {
                    AppsflyerSdkPlugin.this.runOnUIThread(deepLinkResult, "onDeepLinking", FirebaseAnalytics.Param.SUCCESS);
                }
            }
        };
        this.callbacksHandler = new MethodChannel.MethodCallHandler() { // from class: com.appsflyer.appsflyersdk.AppsflyerSdkPlugin.4
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if ("startListening".equals(methodCall.method)) {
                    AppsflyerSdkPlugin.this.startListening(methodCall.arguments, result);
                } else {
                    result.notImplemented();
                }
            }
        };
    }

    private void addPushNotificationDeepLinkPath(MethodCall methodCall, MethodChannel.Result result) {
        Object obj = methodCall.arguments;
        if (obj != null) {
            ArrayList arrayList = (ArrayList) obj;
            AppsFlyerLib.getInstance().addPushNotificationDeepLinkPath((String[]) arrayList.toArray(new String[arrayList.size()]));
        }
        result.success(null);
    }

    private void anonymizeUser(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().anonymizeUser(((Boolean) methodCall.argument("shouldAnonymize")).booleanValue());
        result.success(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject buildJsonResponse(Object obj, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, str);
            jSONObject.put("data", obj.toString());
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    private void disableAppSetId(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().disableAppSetId();
        result.success(null);
    }

    private void enableFacebookDeferredApplinks(MethodCall methodCall, MethodChannel.Result result) {
        Boolean bool = (Boolean) methodCall.argument("isFacebookDeferredApplinksEnabled");
        bool.booleanValue();
        this.isFacebookDeferredApplinksEnabled = bool;
        if (bool.booleanValue()) {
            AppsFlyerLib.getInstance().enableFacebookDeferredApplinks(true);
        } else {
            AppsFlyerLib.getInstance().enableFacebookDeferredApplinks(false);
        }
        result.success(null);
    }

    private void enableTCFDataCollection(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().enableTCFDataCollection(((Boolean) methodCall.argument("shouldCollect")).booleanValue());
        result.success(null);
    }

    private void generateInviteLink(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) methodCall.argument(AppsFlyerProperties.CHANNEL);
        String str2 = (String) methodCall.argument("customerID");
        String str3 = (String) methodCall.argument("campaign");
        String str4 = (String) methodCall.argument("referrerName");
        String str5 = (String) methodCall.argument("referrerImageUrl");
        String str6 = (String) methodCall.argument("baseDeeplink");
        String str7 = (String) methodCall.argument("brandDomain");
        Map<String, String> map = (Map) methodCall.argument("customParams");
        LinkGenerator generateInviteUrl = ShareInviteHelper.generateInviteUrl(this.mContext);
        if (str != null && !str.equals("")) {
            generateInviteUrl.setChannel(str);
        }
        if (str3 != null && !str3.equals("")) {
            generateInviteUrl.setCampaign(str3);
        }
        if (str4 != null && !str4.equals("")) {
            generateInviteUrl.setReferrerName(str4);
        }
        if (str5 != null && !str5.equals("")) {
            generateInviteUrl.setReferrerImageURL(str5);
        }
        if (str2 != null && !str2.equals("")) {
            generateInviteUrl.setReferrerCustomerId(str2);
        }
        if (str6 != null && !str6.equals("")) {
            generateInviteUrl.setBaseDeeplink(str6);
        }
        if (str7 != null && !str7.equals("")) {
            generateInviteUrl.setBrandDomain(str7);
        }
        if (map != null && !map.equals("")) {
            generateInviteUrl.addParameters(map);
        }
        generateInviteUrl.generateLink(this.mContext, new LinkGenerator.ResponseListener() { // from class: com.appsflyer.appsflyersdk.AppsflyerSdkPlugin.6
            final JSONObject obj = new JSONObject();

            @Override // com.appsflyer.share.LinkGenerator.ResponseListener
            public void onResponse(String str8) {
                if (AppsflyerSdkPlugin.this.mCallbacks.containsKey("generateInviteLinkSuccess")) {
                    try {
                        this.obj.put("userInviteURL", str8);
                        AppsflyerSdkPlugin.this.runOnUIThread(this.obj, "generateInviteLinkSuccess", FirebaseAnalytics.Param.SUCCESS);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }

            @Override // com.appsflyer.share.LinkGenerator.ResponseListener
            public void onResponseError(String str8) {
                if (AppsflyerSdkPlugin.this.mCallbacks.containsKey("generateInviteLinkFailure")) {
                    try {
                        this.obj.put("error", str8);
                        AppsflyerSdkPlugin.this.runOnUIThread(str8, "generateInviteLinkFailure", "failure");
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        result.success(null);
    }

    @NonNull
    private AppsFlyerConsent getAppsFlyerConsentFromCall(MethodCall methodCall) {
        Map map = (Map) methodCall.arguments;
        return new AppsFlyerConsent((Boolean) map.get("isUserSubjectToGDPR"), (Boolean) map.get("consentForDataUsage"), (Boolean) map.get("consentForAdsPersonalization"), (Boolean) map.get("hasConsentForAdStorage"));
    }

    private void getAppsFlyerUID(MethodChannel.Result result) {
        result.success(AppsFlyerLib.getInstance().getAppsFlyerUID(this.mContext));
    }

    private void getHostName(MethodChannel.Result result) {
        result.success(AppsFlyerLib.getInstance().getHostName());
    }

    private void getHostPrefix(MethodChannel.Result result) {
        result.success(AppsFlyerLib.getInstance().getHostPrefix());
    }

    private void getOutOfStore(MethodChannel.Result result) {
        result.success(AppsFlyerLib.getInstance().getOutOfStore(this.mContext));
    }

    private void getSdkVersion(MethodChannel.Result result) {
        result.success(AppsFlyerLib.getInstance().getSdkVersion());
    }

    private void initSdk(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib appsFlyerLib = AppsFlyerLib.getInstance();
        boolean booleanValue = ((Boolean) methodCall.argument("manualStart")).booleanValue();
        String str = (String) methodCall.argument("afDevKey");
        AppsFlyerConversionListener appsFlyerConversionListener = null;
        if (str != null && !str.equals("")) {
            if (((Boolean) methodCall.argument("disableAdvertisingIdentifier")).booleanValue()) {
                appsFlyerLib.setDisableAdvertisingIdentifiers(true);
            }
            if (((Boolean) methodCall.argument("GCD")).booleanValue()) {
                appsFlyerConversionListener = this.afConversionListener;
            }
            if (((Boolean) methodCall.argument("UDL")).booleanValue()) {
                appsFlyerLib.subscribeForDeepLink(this.afDeepLinkListener);
            }
            if (((Boolean) methodCall.argument("isDebug")).booleanValue()) {
                appsFlyerLib.setLogLevel(AFLogger.LogLevel.DEBUG);
                appsFlyerLib.setDebugLog(true);
            } else {
                appsFlyerLib.setDebugLog(false);
            }
            appsFlyerLib.setPluginInfo(new PluginInfo(Plugin.FLUTTER, "6.17.8"));
            appsFlyerLib.init(str, appsFlyerConversionListener, this.mContext);
            String str2 = (String) methodCall.argument("appInviteOneLink");
            if (str2 != null) {
                appsFlyerLib.setAppInviteOneLink(str2);
            }
            if (!booleanValue) {
                appsFlyerLib.start(this.activity);
            }
            if (saveCallbacks) {
                saveCallbacks = false;
                sendCachedCallbacksToDart();
            }
            result.success(FirebaseAnalytics.Param.SUCCESS);
            return;
        }
        result.error("INIT_ERROR", LogMessages.AF_DEV_KEY_IS_EMPTY, null);
    }

    private static Bundle jsonToBundle(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            bundle.putString(next, jSONObject.getString(next));
        }
        return bundle;
    }

    private void logAdRevenue(MethodCall methodCall, MethodChannel.Result result) {
        try {
            String str = (String) requireNonNullArgument(methodCall, "monetizationNetwork");
            String str2 = (String) requireNonNullArgument(methodCall, "currencyIso4217Code");
            double doubleValue = ((Double) requireNonNullArgument(methodCall, "revenue")).doubleValue();
            AFAdRevenueData aFAdRevenueData = new AFAdRevenueData(str, MediationNetwork.valueOf(((String) requireNonNullArgument(methodCall, "mediationNetwork")).toUpperCase(Locale.ENGLISH)), str2, doubleValue);
            AppsFlyerLib.getInstance().logAdRevenue(aFAdRevenueData, (Map) methodCall.argument("additionalParameters"));
            result.success(Boolean.TRUE);
        } catch (IllegalArgumentException e) {
            result.error("INVALID_ARGUMENT_PROVIDED", e.getMessage(), null);
        } catch (Throwable th) {
            result.error("UNEXPECTED_ERROR", "[logAdRevenue]: An unexpected error occurred: " + th.getMessage(), null);
        }
    }

    private void logCrossPromotionAndOpenStore(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) methodCall.argument(RemoteConfigConstants.RequestFieldKey.APP_ID);
        String str2 = (String) methodCall.argument("campaign");
        Map map = (Map) methodCall.argument("params");
        if (str != null && !str.equals("")) {
            CrossPromotionHelper.logAndOpenStore(this.mContext, str, str2, map);
        }
        result.success(null);
    }

    private void logCrossPromotionImpression(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) methodCall.argument(RemoteConfigConstants.RequestFieldKey.APP_ID);
        String str2 = (String) methodCall.argument("campaign");
        Map map = (Map) methodCall.argument("data");
        if (str != null && !str.equals("")) {
            CrossPromotionHelper.logCrossPromoteImpression(this.mContext, str, str2, map);
        }
        result.success(null);
    }

    private void logEvent(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().logEvent(this.mContext, (String) methodCall.argument("eventName"), (Map) methodCall.argument("eventValues"));
        result.success(Boolean.TRUE);
    }

    private AFPurchaseType mapPurchaseType(String str) {
        str.getClass();
        if (!str.equals("one_time_purchase")) {
            if (!str.equals("subscription")) {
                return null;
            }
            return AFPurchaseType.SUBSCRIPTION;
        }
        return AFPurchaseType.ONE_TIME_PURCHASE;
    }

    private void onAttachedToEngine(Context context, BinaryMessenger binaryMessenger) {
        this.mContext = context;
        this.mEventChannel = new EventChannel(binaryMessenger, "af-events");
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "af-api");
        this.mMethodChannel = methodChannel;
        methodChannel.setMethodCallHandler(this);
        MethodChannel methodChannel2 = new MethodChannel(binaryMessenger, "callbacks");
        this.mCallbackChannel = methodChannel2;
        methodChannel2.setMethodCallHandler(this.callbacksHandler);
    }

    private void performOnDeepLinking(MethodCall methodCall, MethodChannel.Result result) {
        Activity activity = this.activity;
        if (activity != null) {
            Intent intent = activity.getIntent();
            if (intent != null) {
                AppsFlyerLib.getInstance().performOnDeepLinking(intent, this.mApplication);
                result.success(null);
                return;
            }
            result.error("NO_INTENT", "The intent is null", null);
            return;
        }
        result.error("NO_ACTIVITY", "The current activity is null", null);
    }

    private void registerValidatorListener() {
        AppsFlyerLib.getInstance().registerValidatorListener(this.mContext, new AppsFlyerInAppPurchaseValidatorListener() { // from class: com.appsflyer.appsflyersdk.AppsflyerSdkPlugin.9
            @Override // com.appsflyer.AppsFlyerInAppPurchaseValidatorListener
            public void onValidateInApp() {
                if (AppsflyerSdkPlugin.this.validatePurchaseCallback.booleanValue()) {
                    AppsflyerSdkPlugin.this.runOnUIThread(new JSONObject(), "validatePurchase", FirebaseAnalytics.Param.SUCCESS);
                }
            }

            @Override // com.appsflyer.AppsFlyerInAppPurchaseValidatorListener
            public void onValidateInAppFailure(String str) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("error", str);
                    if (AppsflyerSdkPlugin.this.validatePurchaseCallback.booleanValue()) {
                        AppsflyerSdkPlugin.this.runOnUIThread(jSONObject, "validatePurchase", "failure");
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> replaceNullValues(Map<String, Object> map) {
        Object value;
        HashMap hashMap = new HashMap();
        Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, Object> next = it.next();
            String key = next.getKey();
            if (next.getValue() == null) {
                value = JSONObject.NULL;
            } else {
                value = next.getValue();
            }
            hashMap.put(key, value);
            it.remove();
        }
        return hashMap;
    }

    private <T> T requireNonNullArgument(MethodCall methodCall, String str) throws IllegalArgumentException {
        T t = (T) methodCall.argument(str);
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException("[" + methodCall.method + "]: " + str + " must not be null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnUIThread(final Object obj, final String str, final String str2) {
        this.uiThreadHandler.post(new Runnable() { // from class: com.appsflyer.appsflyersdk.AppsflyerSdkPlugin.7
            @Override // java.lang.Runnable
            public void run() {
                if (AppsflyerSdkPlugin.this.mCallbackChannel != null) {
                    Objects.toString(obj);
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("id", str);
                        if (str.equals("onDeepLinking")) {
                            DeepLinkResult deepLinkResult = (DeepLinkResult) obj;
                            jSONObject.put("deepLinkStatus", deepLinkResult.getStatus().toString());
                            if (deepLinkResult.getError() != null) {
                                jSONObject.put("deepLinkError", deepLinkResult.getError().toString());
                            }
                            if (deepLinkResult.getStatus() == DeepLinkResult.Status.FOUND) {
                                jSONObject.put("deepLinkObj", deepLinkResult.getDeepLink().getClickEvent());
                            }
                        } else {
                            JSONObject jSONObject2 = (JSONObject) obj;
                            jSONObject.put(NotificationCompat.CATEGORY_STATUS, str2);
                            jSONObject.put("data", obj.toString());
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    AppsflyerSdkPlugin.this.mCallbackChannel.invokeMethod("callListener", jSONObject.toString());
                }
            }
        });
    }

    private void sendCachedCallbacksToDart() {
        DeepLinkResult deepLinkResult = cachedDeepLinkResult;
        if (deepLinkResult != null) {
            this.afDeepLinkListener.onDeepLinking(deepLinkResult);
            cachedDeepLinkResult = null;
        }
        Map<String, Object> map = cachedOnConversionDataSuccess;
        if (map != null) {
            this.afConversionListener.onConversionDataSuccess(map);
            cachedOnConversionDataSuccess = null;
        }
        Map<String, String> map2 = cachedOnAppOpenAttribution;
        if (map2 != null) {
            this.afConversionListener.onAppOpenAttribution(map2);
            cachedOnAppOpenAttribution = null;
        }
        String str = cachedOnAttributionFailure;
        if (str != null) {
            this.afConversionListener.onAttributionFailure(str);
            cachedOnAttributionFailure = null;
        }
        String str2 = cachedOnConversionDataFail;
        if (str2 != null) {
            this.afConversionListener.onConversionDataFail(str2);
            cachedOnConversionDataFail = null;
        }
    }

    private void sendPushNotificationData(MethodCall methodCall, MethodChannel.Result result) {
        String str;
        Map map = (Map) methodCall.arguments;
        if (map == null) {
            return;
        }
        try {
            Bundle jsonToBundle = jsonToBundle(new JSONObject(map));
            Activity activity = this.activity;
            if (activity != null) {
                Intent intent = activity.getIntent();
                if (intent != null) {
                    intent.putExtras(jsonToBundle);
                    this.activity.setIntent(intent);
                    AppsFlyerLib.getInstance().sendPushNotificationData(this.activity);
                    str = null;
                } else {
                    str = "The intent is null. Push payload has not been sent!";
                }
            } else {
                str = "The activity is null. Push payload has not been sent!";
            }
            if (str != null) {
                return;
            }
            result.success(null);
        } catch (JSONException unused) {
        }
    }

    private void setAdditionalData(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setAdditionalData((HashMap) methodCall.argument("customData"));
        result.success(null);
    }

    private void setAndroidIdData(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setAndroidIdData((String) methodCall.argument("androidId"));
        result.success(null);
    }

    private void setAppInivteOneLinkID(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) methodCall.argument("oneLinkID");
        if (str != null && str.length() != 0) {
            AppsFlyerLib.getInstance().setAppInviteOneLink(str);
            if (this.mCallbacks.containsKey("setAppInviteOneLinkIDCallback")) {
                runOnUIThread(buildJsonResponse(FirebaseAnalytics.Param.SUCCESS, FirebaseAnalytics.Param.SUCCESS), "setAppInviteOneLinkIDCallback", FirebaseAnalytics.Param.SUCCESS);
                return;
            }
            return;
        }
        result.success(null);
    }

    private void setCollectAndroidId(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setCollectAndroidID(((Boolean) methodCall.argument("isCollect")).booleanValue());
        result.success(null);
    }

    private void setCollectIMEI(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setCollectIMEI(((Boolean) methodCall.argument("isCollect")).booleanValue());
        result.success(null);
    }

    private void setCurrencyCode(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setCurrencyCode((String) methodCall.argument(AppsFlyerProperties.CURRENCY_CODE));
        result.success(null);
    }

    private void setCustomerIdAndLogSession(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setCustomerIdAndLogSession((String) methodCall.argument("id"), this.mContext);
        result.success(null);
    }

    private void setCustomerUserId(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setCustomerUserId((String) methodCall.argument("id"));
        result.success(null);
    }

    private void setDisableAdvertisingIdentifiers(MethodCall methodCall, MethodChannel.Result result) {
        Boolean bool = (Boolean) methodCall.arguments;
        bool.booleanValue();
        this.isSetDisableAdvertisingIdentifiersEnable = bool;
        if (bool.booleanValue()) {
            AppsFlyerLib.getInstance().setDisableAdvertisingIdentifiers(true);
        } else {
            AppsFlyerLib.getInstance().setDisableAdvertisingIdentifiers(false);
        }
        result.success(null);
    }

    private void setDisableNetworkData(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setDisableNetworkData(((Boolean) methodCall.arguments).booleanValue());
        result.success(null);
    }

    private void setHost(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setHost((String) methodCall.argument("hostPrefix"), (String) methodCall.argument(FTXEvent.EVENT_HOST_NAME));
    }

    private void setImeiData(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setImeiData((String) methodCall.argument("imei"));
        result.success(null);
    }

    private void setIsUpdate(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setIsUpdate(((Boolean) methodCall.argument("isUpdate")).booleanValue());
        result.success(null);
    }

    private void setMinTimeBetweenSessions(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setMinTimeBetweenSessions(((Integer) methodCall.argument("seconds")).intValue());
        result.success(null);
    }

    private void setOneLinkCustomDomain(MethodCall methodCall, MethodChannel.Result result) {
        ArrayList arrayList = (ArrayList) methodCall.arguments;
        AppsFlyerLib.getInstance().setOneLinkCustomDomain((String[]) arrayList.toArray(new String[arrayList.size()]));
        result.success(null);
    }

    private void setOutOfStore(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) methodCall.arguments;
        if (str != null) {
            AppsFlyerLib.getInstance().setOutOfStore(str);
        }
        result.success(null);
    }

    private void setPartnerData(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) methodCall.argument("partnerId");
        HashMap hashMap = (HashMap) methodCall.argument("partnersData");
        if (hashMap != null) {
            AppsFlyerLib.getInstance().setPartnerData(str, hashMap);
        }
        result.success(null);
    }

    private void setPushNotification(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().sendPushNotificationData(this.activity);
        result.success(null);
    }

    private void setResolveDeepLinkURLs(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setResolveDeepLinkURLs((String[]) ((ArrayList) methodCall.arguments).toArray(new String[0]));
        result.success(null);
    }

    private void setSharingFilter(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setSharingFilter(new String[0]);
        result.success(null);
    }

    private void setSharingFilterForAllPartners(MethodChannel.Result result) {
        AppsFlyerLib.getInstance().setSharingFilterForAllPartners();
        result.success(null);
    }

    private void setSharingFilterForPartners(MethodCall methodCall, MethodChannel.Result result) {
        Object obj = methodCall.arguments;
        if (obj != null) {
            ArrayList arrayList = (ArrayList) obj;
            AppsFlyerLib.getInstance().setSharingFilterForPartners((String[]) arrayList.toArray(new String[arrayList.size()]));
        }
        result.success(null);
    }

    private void setUserEmails(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerProperties.EmailsCryptType emailsCryptType;
        List list = (List) methodCall.argument("emails");
        int intValue = ((Integer) methodCall.argument("cryptType")).intValue();
        if (intValue == 0) {
            emailsCryptType = AppsFlyerProperties.EmailsCryptType.NONE;
        } else if (intValue == 1) {
            emailsCryptType = AppsFlyerProperties.EmailsCryptType.SHA256;
        } else {
            throw new InvalidParameterException("You can use only NONE or SHA256 for EmailsCryptType on android");
        }
        if (list != null) {
            AppsFlyerLib.getInstance().setUserEmails(emailsCryptType, (String[]) list.toArray(new String[0]));
        }
        result.success(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startListening(Object obj, MethodChannel.Result result) {
        String str = (String) obj;
        if (str.equals("onInstallConversionData")) {
            this.gcdCallback = Boolean.TRUE;
        }
        if (str.equals("onAppOpenAttribution")) {
            this.oaoaCallback = Boolean.TRUE;
        }
        if (str.equals("onDeepLinking")) {
            this.udlCallback = Boolean.TRUE;
        }
        if (str.equals("validatePurchase")) {
            this.validatePurchaseCallback = Boolean.TRUE;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("id", str);
        this.mCallbacks.put(str, hashMap);
        result.success(null);
    }

    private void startSDK(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().start(this.activity);
        result.success(null);
    }

    private void startSDKwithHandler(MethodCall methodCall, MethodChannel.Result result) {
        try {
            AppsFlyerLib.getInstance().start(this.activity, null, new AnonymousClass5());
            result.success(null);
        } catch (Throwable th) {
            result.error("UNEXPECTED_ERROR", th.getMessage(), null);
        }
    }

    private void stop(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().stop(((Boolean) methodCall.argument("isStopped")).booleanValue(), this.mContext);
        result.success(null);
    }

    private void updateServerUninstallToken(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().updateServerUninstallToken(this.mContext, (String) methodCall.argument(BidResponsed.KEY_TOKEN));
        result.success(null);
    }

    private void validateAndLogInAppPurchase(MethodCall methodCall, MethodChannel.Result result) {
        registerValidatorListener();
        AppsFlyerLib.getInstance().validateAndLogInAppPurchase(this.mContext, (String) methodCall.argument("publicKey"), (String) methodCall.argument(InAppPurchaseMetaData.KEY_SIGNATURE), (String) methodCall.argument("purchaseData"), (String) methodCall.argument("price"), (String) methodCall.argument("currency"), (Map) methodCall.argument("additionalParameters"));
        result.success(null);
    }

    private void validateAndLogInAppPurchaseV2(MethodCall methodCall, final MethodChannel.Result result) {
        try {
            Map map = (Map) methodCall.argument("purchaseDetails");
            Map<String, String> map2 = (Map) methodCall.argument("additionalParameters");
            if (map == null) {
                result.error("INVALID_ARGUMENTS", "Purchase details cannot be null", null);
                return;
            }
            if (map2 == null) {
                map2 = new HashMap<>();
            }
            String str = (String) map.get("purchaseType");
            String str2 = (String) map.get("purchaseToken");
            String str3 = (String) map.get(InAppPurchaseMetaData.KEY_PRODUCT_ID);
            if (str != null && str2 != null && str3 != null) {
                AFPurchaseType mapPurchaseType = mapPurchaseType(str);
                if (mapPurchaseType == null) {
                    result.error("INVALID_PURCHASE_TYPE", "Invalid purchase type: " + str + ". Expected: 'subscription' or 'one_time_purchase'", null);
                    return;
                }
                AFPurchaseDetails aFPurchaseDetails = new AFPurchaseDetails(mapPurchaseType, str2, str3);
                map.toString();
                AppsFlyerLib.getInstance().validateAndLogInAppPurchase(aFPurchaseDetails, map2, new AppsFlyerInAppPurchaseValidationCallback() { // from class: com.appsflyer.appsflyersdk.AppsflyerSdkPlugin.8
                    @Override // com.appsflyer.AppsFlyerInAppPurchaseValidationCallback
                    public void onInAppPurchaseValidationError(@NonNull Map<String, ?> map3) {
                        String str4;
                        if (map3.containsKey("error_message")) {
                            str4 = (String) map3.get("error_message");
                        } else {
                            str4 = "Purchase validation failed";
                        }
                        HashMap hashMap = new HashMap();
                        for (Map.Entry<String, ?> entry : map3.entrySet()) {
                            hashMap.put(entry.getKey(), entry.getValue());
                        }
                        result.error("VALIDATION_ERROR", str4, hashMap);
                    }

                    @Override // com.appsflyer.AppsFlyerInAppPurchaseValidationCallback
                    public void onInAppPurchaseValidationFinished(@NonNull Map<String, ?> map3) {
                        HashMap hashMap = new HashMap();
                        for (Map.Entry<String, ?> entry : map3.entrySet()) {
                            hashMap.put(entry.getKey(), entry.getValue());
                        }
                        result.success(hashMap);
                    }
                });
                return;
            }
            result.error("INVALID_ARGUMENTS", "Purchase details must contain purchaseType, purchaseToken, and productId", null);
        } catch (Exception e) {
            e.getMessage();
            result.error("VALIDATION_ERROR", "Purchase validation failed: " + e.getMessage(), null);
        }
    }

    private void waitForCustomerUserId(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerLib.getInstance().waitForCustomerUserId(((Boolean) methodCall.argument("wait")).booleanValue());
        result.success(null);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        this.activity = activityPluginBinding.getActivity();
        this.mApplication = activityPluginBinding.getActivity().getApplication();
        activityPluginBinding.addOnNewIntentListener(this.onNewIntentListener);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.activity = null;
        saveCallbacks = true;
        AppsFlyerLib.getInstance().unregisterConversionListener();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.activity = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.mMethodChannel.setMethodCallHandler(null);
        this.mMethodChannel = null;
        this.mEventChannel.setStreamHandler(null);
        this.mEventChannel = null;
        AppsFlyerPurchaseConnector.INSTANCE.onDetachedFromEngine(flutterPluginBinding);
        this.mContext = null;
        this.mApplication = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (this.activity == null) {
            result.error("NO_ACTIVITY", "The current activity is null", null);
            return;
        }
        String str = methodCall.method;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -2012504269:
                if (str.equals("setAppInviteOneLinkID")) {
                    c = 0;
                    break;
                }
                break;
            case -1995722377:
                if (str.equals("validateAndLogInAppAndroidPurchase")) {
                    c = 1;
                    break;
                }
                break;
            case -1820568830:
                if (str.equals("setSharingFilterForPartners")) {
                    c = 2;
                    break;
                }
                break;
            case -1777356377:
                if (str.equals("setPushNotification")) {
                    c = 3;
                    break;
                }
                break;
            case -1557719420:
                if (str.equals("disableAppSetId")) {
                    c = 4;
                    break;
                }
                break;
            case -1489605040:
                if (str.equals("getHostPrefix")) {
                    c = 5;
                    break;
                }
                break;
            case -1437772080:
                if (str.equals("setPartnerData")) {
                    c = 6;
                    break;
                }
                break;
            case -1267985549:
                if (str.equals("setOneLinkCustomDomain")) {
                    c = 7;
                    break;
                }
                break;
            case -1253411310:
                if (str.equals("getOutOfStore")) {
                    c = '\b';
                    break;
                }
                break;
            case -1191484736:
                if (str.equals("enableFacebookDeferredApplinks")) {
                    c = '\t';
                    break;
                }
                break;
            case -752931040:
                if (str.equals("setCurrencyCode")) {
                    c = '\n';
                    break;
                }
                break;
            case -717099497:
                if (str.equals("sendPushNotificationData")) {
                    c = 11;
                    break;
                }
                break;
            case -559100112:
                if (str.equals("setCollectIMEI")) {
                    c = '\f';
                    break;
                }
                break;
            case -512438553:
                if (str.equals("logCrossPromotionAndOpenStore")) {
                    c = '\r';
                    break;
                }
                break;
            case -479280098:
                if (str.equals("setOutOfStore")) {
                    c = 14;
                    break;
                }
                break;
            case -249478878:
                if (str.equals("setConsentData")) {
                    c = 15;
                    break;
                }
                break;
            case -191766732:
                if (str.equals("getSDKVersion")) {
                    c = 16;
                    break;
                }
                break;
            case -171680875:
                if (str.equals("logAdRevenue")) {
                    c = 17;
                    break;
                }
                break;
            case -144228848:
                if (str.equals("logCrossPromotionImpression")) {
                    c = 18;
                    break;
                }
                break;
            case -120258830:
                if (str.equals("setDisableNetworkData")) {
                    c = 19;
                    break;
                }
                break;
            case 3540994:
                if (str.equals("stop")) {
                    c = 20;
                    break;
                }
                break;
            case 12497644:
                if (str.equals("setDisableAdvertisingIdentifiers")) {
                    c = 21;
                    break;
                }
                break;
            case 23388530:
                if (str.equals("setAndroidIdData")) {
                    c = 22;
                    break;
                }
                break;
            case 24884786:
                if (str.equals("setSharingFilter")) {
                    c = 23;
                    break;
                }
                break;
            case 205546591:
                if (str.equals("anonymizeUser")) {
                    c = 24;
                    break;
                }
                break;
            case 312972995:
                if (str.equals("updateServerUninstallToken")) {
                    c = 25;
                    break;
                }
                break;
            case 572656008:
                if (str.equals("setMinTimeBetweenSessions")) {
                    c = 26;
                    break;
                }
                break;
            case 655665144:
                if (str.equals("waitForCustomerUserId")) {
                    c = 27;
                    break;
                }
                break;
            case 668311477:
                if (str.equals("setSharingFilterForAllPartners")) {
                    c = 28;
                    break;
                }
                break;
            case 725535758:
                if (str.equals("setCustomerIdAndLogSession")) {
                    c = 29;
                    break;
                }
                break;
            case 747368646:
                if (str.equals("setCustomerUserId")) {
                    c = 30;
                    break;
                }
                break;
            case 768969534:
                if (str.equals("setConsentDataV2")) {
                    c = 31;
                    break;
                }
                break;
            case 927926776:
                if (str.equals("generateInviteLink")) {
                    c = ' ';
                    break;
                }
                break;
            case 1040605788:
                if (str.equals(AppsFlyerProperties.ENABLE_TCF_DATA_COLLECTION)) {
                    c = '!';
                    break;
                }
                break;
            case 1179298132:
                if (str.equals("setResolveDeepLinkURLs")) {
                    c = '\"';
                    break;
                }
                break;
            case 1245101844:
                if (str.equals("setImeiData")) {
                    c = '#';
                    break;
                }
                break;
            case 1316784248:
                if (str.equals("startSDK")) {
                    c = Typography.dollar;
                    break;
                }
                break;
            case 1523989980:
                if (str.equals("performOnDeepLinking")) {
                    c = '%';
                    break;
                }
                break;
            case 1586688044:
                if (str.equals("startSDKwithHandler")) {
                    c = Typography.amp;
                    break;
                }
                break;
            case 1660731908:
                if (str.equals("setUserEmails")) {
                    c = '\'';
                    break;
                }
                break;
            case 1777143241:
                if (str.equals("getHostName")) {
                    c = '(';
                    break;
                }
                break;
            case 1809410897:
                if (str.equals("addPushNotificationDeepLinkPath")) {
                    c = ')';
                    break;
                }
                break;
            case 1824508181:
                if (str.equals("setIsUpdate")) {
                    c = '*';
                    break;
                }
                break;
            case 1877854818:
                if (str.equals("setCollectAndroidId")) {
                    c = '+';
                    break;
                }
                break;
            case 1948321034:
                if (str.equals("initSdk")) {
                    c = AbstractJsonLexerKt.COMMA;
                    break;
                }
                break;
            case 1984636202:
                if (str.equals("setHost")) {
                    c = '-';
                    break;
                }
                break;
            case 1989757366:
                if (str.equals("logEvent")) {
                    c = '.';
                    break;
                }
                break;
            case 1998705368:
                if (str.equals("getAppsFlyerUID")) {
                    c = '/';
                    break;
                }
                break;
            case 2031791638:
                if (str.equals("validateAndLogInAppPurchaseV2")) {
                    c = '0';
                    break;
                }
                break;
            case 2088314227:
                if (str.equals("setAdditionalData")) {
                    c = '1';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                setAppInivteOneLinkID(methodCall, result);
                return;
            case 1:
                validateAndLogInAppPurchase(methodCall, result);
                return;
            case 2:
                setSharingFilterForPartners(methodCall, result);
                return;
            case 3:
                setPushNotification(methodCall, result);
                return;
            case 4:
                disableAppSetId(methodCall, result);
                return;
            case 5:
                getHostPrefix(result);
                return;
            case 6:
                setPartnerData(methodCall, result);
                return;
            case 7:
                setOneLinkCustomDomain(methodCall, result);
                return;
            case '\b':
                getOutOfStore(result);
                return;
            case '\t':
                enableFacebookDeferredApplinks(methodCall, result);
                return;
            case '\n':
                setCurrencyCode(methodCall, result);
                return;
            case 11:
                sendPushNotificationData(methodCall, result);
                return;
            case '\f':
                setCollectIMEI(methodCall, result);
                return;
            case '\r':
                logCrossPromotionAndOpenStore(methodCall, result);
                return;
            case 14:
                setOutOfStore(methodCall, result);
                return;
            case 15:
                setConsentData(methodCall, result);
                return;
            case 16:
                getSdkVersion(result);
                return;
            case 17:
                logAdRevenue(methodCall, result);
                return;
            case 18:
                logCrossPromotionImpression(methodCall, result);
                return;
            case 19:
                setDisableNetworkData(methodCall, result);
                return;
            case 20:
                stop(methodCall, result);
                return;
            case 21:
                setDisableAdvertisingIdentifiers(methodCall, result);
                return;
            case 22:
                setAndroidIdData(methodCall, result);
                return;
            case 23:
                setSharingFilter(methodCall, result);
                return;
            case 24:
                anonymizeUser(methodCall, result);
                return;
            case 25:
                updateServerUninstallToken(methodCall, result);
                return;
            case 26:
                setMinTimeBetweenSessions(methodCall, result);
                return;
            case 27:
                waitForCustomerUserId(methodCall, result);
                return;
            case 28:
                setSharingFilterForAllPartners(result);
                return;
            case 29:
                setCustomerIdAndLogSession(methodCall, result);
                return;
            case 30:
                setCustomerUserId(methodCall, result);
                return;
            case 31:
                setConsentDataV2(methodCall, result);
                return;
            case ' ':
                generateInviteLink(methodCall, result);
                return;
            case '!':
                enableTCFDataCollection(methodCall, result);
                return;
            case '\"':
                setResolveDeepLinkURLs(methodCall, result);
                return;
            case '#':
                setImeiData(methodCall, result);
                return;
            case '$':
                startSDK(methodCall, result);
                return;
            case '%':
                performOnDeepLinking(methodCall, result);
                return;
            case '&':
                startSDKwithHandler(methodCall, result);
                return;
            case '\'':
                setUserEmails(methodCall, result);
                return;
            case '(':
                getHostName(result);
                return;
            case ')':
                addPushNotificationDeepLinkPath(methodCall, result);
                return;
            case '*':
                setIsUpdate(methodCall, result);
                return;
            case '+':
                setCollectAndroidId(methodCall, result);
                return;
            case ',':
                initSdk(methodCall, result);
                return;
            case '-':
                setHost(methodCall, result);
                return;
            case '.':
                logEvent(methodCall, result);
                return;
            case '/':
                getAppsFlyerUID(result);
                return;
            case '0':
                validateAndLogInAppPurchaseV2(methodCall, result);
                return;
            case '1':
                setAdditionalData(methodCall, result);
                return;
            default:
                result.notImplemented();
                return;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        sendCachedCallbacksToDart();
        activityPluginBinding.addOnNewIntentListener(this.onNewIntentListener);
        this.activity = activityPluginBinding.getActivity();
    }

    @Deprecated
    public void setConsentData(MethodCall methodCall, MethodChannel.Result result) {
        AppsFlyerConsent forNonGDPRUser;
        Map map = (Map) ((Map) methodCall.arguments).get("consentData");
        boolean booleanValue = ((Boolean) map.get("isUserSubjectToGDPR")).booleanValue();
        Boolean bool = (Boolean) map.get("hasConsentForDataUsage");
        Boolean bool2 = (Boolean) map.get("hasConsentForAdsPersonalization");
        if (booleanValue && bool != null && bool2 != null) {
            forNonGDPRUser = AppsFlyerConsent.forGDPRUser(bool.booleanValue(), bool2.booleanValue());
        } else {
            forNonGDPRUser = AppsFlyerConsent.forNonGDPRUser();
        }
        AppsFlyerLib.getInstance().setConsentData(forNonGDPRUser);
        result.success(null);
    }

    public void setConsentDataV2(MethodCall methodCall, MethodChannel.Result result) {
        try {
            AppsFlyerLib.getInstance().setConsentData(getAppsFlyerConsentFromCall(methodCall));
            result.success(null);
        } catch (Exception e) {
            e.getMessage();
            result.error("CONSENT_ERROR", LogMessages.ERROR_WHILE_SETTING_CONSENT + e.getMessage(), null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        onAttachedToEngine(flutterPluginBinding.getApplicationContext(), flutterPluginBinding.getBinaryMessenger());
        AppsFlyerPurchaseConnector.INSTANCE.onAttachedToEngine(flutterPluginBinding);
    }
}
