package com.sensorsdata.analytics.android.sdk.advert.deeplink;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.advert.SAAdvertConstants;
import com.sensorsdata.analytics.android.sdk.advert.oaid.SAOaidHelper;
import com.sensorsdata.analytics.android.sdk.advert.utils.ChannelUtils;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.eventbus.SAEventBus;
import com.sensorsdata.analytics.android.sdk.core.eventbus.SAEventBusConstants;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.deeplink.SADeepLinkObject;
import com.sensorsdata.analytics.android.sdk.deeplink.SensorsDataDeepLinkCallback;
import com.sensorsdata.analytics.android.sdk.deeplink.SensorsDataDeferredDeepLinkCallback;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.internal.beans.ServerUrl;
import com.sensorsdata.analytics.android.sdk.util.Base64Coder;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.NetworkUtils;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.Date;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class DeepLinkManager {
    public static final String IS_ANALYTICS_DEEPLINK = "is_analytics_deeplink";
    private static JSONObject mCacheProperties = null;
    private static SensorsDataDeepLinkCallback mDeepLinkCallback = null;
    private static DeepLinkProcessor mDeepLinkProcessor = null;
    private static SensorsDataDeferredDeepLinkCallback mDeferredDeepLinkCallback = null;
    private static boolean mEnableDeepLinkInstallSource = false;
    private static boolean mIsDeepLink = false;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum DeepLinkType {
        CHANNEL,
        SENSORSDATA
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface OnDeepLinkParseFinishCallback {
        void onFinish(DeepLinkType deepLinkType, String str, JSONObject jSONObject, boolean z, long j);
    }

    private static void cacheProperties() {
        if (mCacheProperties == null) {
            mCacheProperties = new JSONObject();
        }
        mergeDeepLinkProperty(mCacheProperties);
    }

    private static DeepLinkProcessor createDeepLink(Intent intent, String str, String str2) {
        if (intent == null) {
            return null;
        }
        if (isSensorsDataDeepLink(intent, new ServerUrl(str).getHost(), NetworkUtils.getHost(str2))) {
            return new SensorsDataDeepLink(intent, str, str2);
        }
        if (!isUtmDeepLink(intent)) {
            return null;
        }
        return new ChannelDeepLink(intent);
    }

    public static void enableDeepLinkInstallSource(boolean z) {
        mEnableDeepLinkInstallSource = z;
    }

    private static boolean isDeepLink(Intent intent) {
        if (intent != null && "android.intent.action.VIEW".equals(intent.getAction()) && intent.getData() != null) {
            return true;
        }
        return false;
    }

    private static boolean isParsedDeepLink(Activity activity) {
        try {
        } catch (Throwable th) {
            SALog.i(SAAdvertConstants.TAG, th.getMessage());
        }
        if (SensorsDataUtils.isUniApp()) {
            if (!ChannelUtils.isDeepLinkBlackList(activity)) {
            }
            return false;
        }
        Intent intent = activity.getIntent();
        if (intent != null && intent.getData() != null) {
            return intent.getBooleanExtra(IS_ANALYTICS_DEEPLINK, false);
        }
        return false;
    }

    private static boolean isSensorsDataDeepLink(Intent intent, String str, String str2) {
        Uri data;
        List<String> pathSegments;
        if (isDeepLink(intent) && (pathSegments = (data = intent.getData()).getPathSegments()) != null && !pathSegments.isEmpty()) {
            String host = data.getHost();
            if (pathSegments.get(0).equals("slink")) {
                if (TextUtils.isEmpty(host) || TextUtils.isEmpty(str2) || (!NetworkUtils.compareMainDomain(str2, host) && !host.equals(DbParams.DATABASE_NAME))) {
                    return false;
                }
                return true;
            } else if (pathSegments.get(0).equals("sd") && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(host) && (host.equals(str) || host.equals(DbParams.DATABASE_NAME))) {
                return true;
            }
        }
        return false;
    }

    private static boolean isUtmDeepLink(Intent intent) {
        if (!isDeepLink(intent)) {
            return false;
        }
        Uri data = intent.getData();
        if (data.isOpaque()) {
            SALog.d("ChannelDeepLink", data + " isOpaque");
            return false;
        }
        Set<String> queryParameterNames = data.getQueryParameterNames();
        if (queryParameterNames == null || queryParameterNames.size() <= 0) {
            return false;
        }
        return ChannelUtils.hasLinkUtmProperties(queryParameterNames);
    }

    public static void mergeCacheProperties(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (jSONObject != null && (jSONObject2 = mCacheProperties) != null && jSONObject2.length() != 0) {
            JSONUtils.mergeJSONObject(mCacheProperties, jSONObject);
            mCacheProperties = null;
        }
    }

    public static void mergeDeepLinkProperty(JSONObject jSONObject) {
        try {
            DeepLinkProcessor deepLinkProcessor = mDeepLinkProcessor;
            if (deepLinkProcessor != null) {
                deepLinkProcessor.mergeDeepLinkProperty(jSONObject);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void parseDeepLink(Activity activity, final boolean z) {
        SAConfigOptions configOptions;
        try {
            if (isDeepLink(activity.getIntent()) && !isParsedDeepLink(activity)) {
                Intent intent = activity.getIntent();
                String serverUrl = SensorsDataAPI.sharedInstance().getServerUrl();
                configOptions = AbstractSensorsDataAPI.getConfigOptions();
                DeepLinkProcessor createDeepLink = createDeepLink(intent, serverUrl, configOptions.getCustomADChannelUrl());
                mDeepLinkProcessor = createDeepLink;
                if (createDeepLink != null) {
                    ChannelUtils.clearUtm();
                    mIsDeepLink = true;
                    mDeepLinkProcessor.setDeepLinkParseFinishCallback(new OnDeepLinkParseFinishCallback() { // from class: com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkManager.2
                        @Override // com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkManager.OnDeepLinkParseFinishCallback
                        public void onFinish(DeepLinkType deepLinkType, String str, JSONObject jSONObject, boolean z2, long j) {
                            if (z) {
                                ChannelUtils.saveDeepLinkInfo();
                            }
                            SAEventBus.getInstance().post(SAEventBusConstants.Tag.DEEPLINK_LAUNCH, ChannelUtils.getLatestUtmProperties());
                            if (deepLinkType == DeepLinkType.SENSORSDATA) {
                                try {
                                    if (DeepLinkManager.mDeferredDeepLinkCallback != null) {
                                        DeepLinkManager.mDeferredDeepLinkCallback.onReceive(new SADeepLinkObject(str, jSONObject, "", z2, j));
                                    } else if (DeepLinkManager.mDeepLinkCallback != null) {
                                        DeepLinkManager.mDeepLinkCallback.onReceive(str, z2, j);
                                    }
                                } catch (Exception e) {
                                    SALog.printStackTrace(e);
                                }
                            }
                        }
                    });
                    mDeepLinkProcessor.parseDeepLink(intent);
                    cacheProperties();
                    trackDeepLinkLaunchEvent(activity.getApplicationContext(), mDeepLinkProcessor);
                    activity.getIntent().putExtra(IS_ANALYTICS_DEEPLINK, true);
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void requestDeferredDeepLink(Context context, JSONObject jSONObject, String str, String str2, JSONObject jSONObject2, String str3, boolean z) {
        String deviceInfo;
        if (!mIsDeepLink) {
            try {
                JSONObject jSONObject3 = new JSONObject();
                String openAdIdentifierByReflection = SAOaidHelper.getOpenAdIdentifierByReflection(context);
                if (jSONObject != null) {
                    if (jSONObject.has("$oaid")) {
                        str2 = jSONObject.optString("$oaid");
                        openAdIdentifierByReflection = "";
                        jSONObject.remove("$oaid");
                    }
                    deviceInfo = ChannelUtils.getDeviceInfo(context, str, str2, openAdIdentifierByReflection);
                    if (jSONObject.has("$gaid")) {
                        deviceInfo = String.format("%s##gaid=%s", deviceInfo, jSONObject.optString("$gaid"));
                        jSONObject.remove("$gaid");
                    }
                    if (jSONObject.has("$user_agent")) {
                        jSONObject3.put("ua", jSONObject.optString("$user_agent"));
                        jSONObject.remove("$user_agent");
                    }
                    jSONObject3.put("app_parameter", jSONObject.toString());
                } else {
                    deviceInfo = ChannelUtils.getDeviceInfo(context, str, str2, openAdIdentifierByReflection);
                }
                jSONObject3.put("ids", Base64Coder.encodeString(deviceInfo));
                jSONObject3.put("model", jSONObject2.optString("$model"));
                jSONObject3.put("os", jSONObject2.optString("$os"));
                jSONObject3.put(TPDownloadProxyEnum.USER_OS_VERSION, jSONObject2.optString("$os_version"));
                jSONObject3.put("network", jSONObject2.optString("$network_type"));
                jSONObject3.put("app_id", jSONObject2.optString("$app_id"));
                jSONObject3.put("app_version", jSONObject2.optString("$app_version"));
                jSONObject3.put(CampaignEx.JSON_KEY_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
                jSONObject3.put("project", new ServerUrl(SensorsDataAPI.sharedInstance().getServerUrl()).getProject());
                DeferredDeepLinkHelper.request(jSONObject3, mDeferredDeepLinkCallback, str3, z);
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void resetDeepLinkProcessor() {
        mDeepLinkProcessor = null;
    }

    public static void setDeepLinkCallback(SensorsDataDeepLinkCallback sensorsDataDeepLinkCallback) {
        mDeepLinkCallback = sensorsDataDeepLinkCallback;
    }

    public static void setDeferredDeepLinkCallback(SensorsDataDeferredDeepLinkCallback sensorsDataDeferredDeepLinkCallback) {
        mDeferredDeepLinkCallback = sensorsDataDeferredDeepLinkCallback;
    }

    private static void trackDeepLinkLaunchEvent(final Context context, DeepLinkProcessor deepLinkProcessor) {
        final boolean z;
        final JSONObject jSONObject = new JSONObject();
        if ((deepLinkProcessor instanceof SensorsDataDeepLink) && mEnableDeepLinkInstallSource) {
            z = true;
        } else {
            z = false;
        }
        try {
            jSONObject.put(SAAdvertConstants.Properties.DEEPLINK_URL, deepLinkProcessor.getDeepLinkUrl());
            jSONObject.put("$time", new Date(System.currentTimeMillis()));
        } catch (JSONException e) {
            SALog.printStackTrace(e);
        }
        JSONUtils.mergeJSONObject(ChannelUtils.getLatestUtmProperties(), jSONObject);
        JSONUtils.mergeJSONObject(ChannelUtils.getUtmProperties(), jSONObject);
        SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkManager.1
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    try {
                        JSONObject jSONObject2 = jSONObject;
                        Context context2 = context;
                        jSONObject2.put("$ios_install_source", ChannelUtils.getDeviceInfo(context2, SensorsDataUtils.getIdentifier(context2), SAOaidHelper.getOpenAdIdentifier(context), SAOaidHelper.getOpenAdIdentifierByReflection(context)));
                    } catch (JSONException e2) {
                        SALog.printStackTrace(e2);
                    }
                }
                SACoreHelper.getInstance().trackEvent(new InputData().setEventType(EventType.TRACK).setEventName(SAAdvertConstants.EventName.DEEPLINK_LAUNCH).setProperties(jSONObject));
            }
        });
    }
}
