package com.sensorsdata.analytics.android.sdk.advert.impl;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.advert.SAAdvertConstants;
import com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkManager;
import com.sensorsdata.analytics.android.sdk.advert.monitor.SensorsDataAdvertActivityLifeCallback;
import com.sensorsdata.analytics.android.sdk.advert.oaid.SAOaidHelper;
import com.sensorsdata.analytics.android.sdk.advert.plugin.LatestUtmPlugin;
import com.sensorsdata.analytics.android.sdk.advert.plugin.SAAdvertAppStartPlugin;
import com.sensorsdata.analytics.android.sdk.advert.plugin.SAAdvertAppViewScreenPlugin;
import com.sensorsdata.analytics.android.sdk.advert.scan.SAAdvertScanHelper;
import com.sensorsdata.analytics.android.sdk.advert.utils.ChannelUtils;
import com.sensorsdata.analytics.android.sdk.advert.utils.SAAdvertUtils;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.deeplink.SensorsDataDeepLinkCallback;
import com.sensorsdata.analytics.android.sdk.deeplink.SensorsDataDeferredDeepLinkCallback;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.monitor.SensorsDataLifecycleMonitorManager;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAAdvertProtocolImpl {
    private final Context mContext;
    private boolean mEnableDeepLinkInstallSource;
    private LatestUtmPlugin mLatestUtmPlugin;
    private SensorsDataAdvertActivityLifeCallback mLifecycleCallback;
    private final SAConfigOptions mOptions;
    private final SAContextManager mSAContextManager;
    private SAAdvertAppStartPlugin mStartPlugin;
    private SAAdvertAppViewScreenPlugin mViewScreenPlugin;

    public SAAdvertProtocolImpl(SAContextManager sAContextManager) {
        this.mSAContextManager = sAContextManager;
        this.mContext = sAContextManager.getContext();
        this.mOptions = sAContextManager.getInternalConfigs().saConfigOptions;
        init();
    }

    private void enableDeepLinkInstallSource(boolean z) {
        this.mEnableDeepLinkInstallSource = z;
        DeepLinkManager.enableDeepLinkInstallSource(z);
    }

    private void init() {
        this.mStartPlugin = new SAAdvertAppStartPlugin();
        this.mViewScreenPlugin = new SAAdvertAppViewScreenPlugin();
        this.mLatestUtmPlugin = new LatestUtmPlugin();
        ChannelUtils.setSourceChannelKeys(this.mOptions.channelSourceKeys);
        if (AppInfoUtils.isMainProcess(this.mContext, null)) {
            ChannelUtils.commitRequestDeferredDeeplink(!ChannelUtils.isExistRequestDeferredDeeplink());
        }
    }

    private JSONObject mergeChannelEventProperties(String str, JSONObject jSONObject) {
        if (this.mOptions.isAutoAddChannelCallbackEvent()) {
            return ChannelUtils.checkOrSetChannelCallbackEvent(str, jSONObject, this.mContext);
        }
        return jSONObject;
    }

    private void requestDeferredDeepLink(final JSONObject jSONObject) {
        SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.advert.impl.SAAdvertProtocolImpl.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (ChannelUtils.isRequestDeferredDeeplink()) {
                        DeepLinkManager.requestDeferredDeepLink(SAAdvertProtocolImpl.this.mContext, jSONObject, SAAdvertUtils.getIdentifier(SAAdvertProtocolImpl.this.mContext), SAOaidHelper.getOpenAdIdentifier(SAAdvertProtocolImpl.this.mContext), SensorsDataAPI.sharedInstance().getPresetProperties(), SAAdvertProtocolImpl.this.mOptions.getCustomADChannelUrl(), SAAdvertProtocolImpl.this.mOptions.isSaveDeepLinkInfo());
                        ChannelUtils.commitRequestDeferredDeeplink(false);
                    }
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
        });
    }

    private void trackChannelEvent(final String str, JSONObject jSONObject) {
        if (this.mOptions.isAutoAddChannelCallbackEvent()) {
            SensorsDataAPI.sharedInstance().track(str, jSONObject);
            return;
        }
        final JSONObject jSONObject2 = new JSONObject();
        JSONUtils.mergeJSONObject(jSONObject, jSONObject2);
        SADataHelper.addTimeProperty(jSONObject2);
        SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.advert.impl.SAAdvertProtocolImpl.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    try {
                        jSONObject2.put("$is_channel_callback_event", ChannelUtils.isFirstChannelEvent(str));
                        if (!ChannelUtils.hasUtmProperties(jSONObject2)) {
                            ChannelUtils.mergeUtmByMetaData(SAAdvertProtocolImpl.this.mContext, jSONObject2);
                        }
                        if (!ChannelUtils.hasUtmProperties(jSONObject2)) {
                            if (jSONObject2.has("$oaid")) {
                                String optString = jSONObject2.optString("$oaid");
                                jSONObject2.put("$channel_device_info", ChannelUtils.getDeviceInfo(SAAdvertProtocolImpl.this.mContext, SAAdvertUtils.getIdentifier(SAAdvertProtocolImpl.this.mContext), optString, ""));
                                SALog.i(SAAdvertConstants.TAG, "properties has oaid " + optString);
                            } else {
                                jSONObject2.put("$channel_device_info", ChannelUtils.getDeviceInfo(SAAdvertProtocolImpl.this.mContext, SAAdvertUtils.getIdentifier(SAAdvertProtocolImpl.this.mContext), SAOaidHelper.getOpenAdIdentifier(SAAdvertProtocolImpl.this.mContext), SAOaidHelper.getOpenAdIdentifierByReflection(SAAdvertProtocolImpl.this.mContext)));
                            }
                        }
                        if (jSONObject2.has("$oaid")) {
                            jSONObject2.remove("$oaid");
                        }
                    } catch (Exception e) {
                        SALog.printStackTrace(e);
                    }
                    SACoreHelper.getInstance().trackEvent(new InputData().setEventType(EventType.TRACK).setEventName(str).setProperties(jSONObject2));
                } catch (Exception e2) {
                    SALog.printStackTrace(e2);
                }
            }
        });
    }

    private void trackDeepLinkLaunch(String str, final String str2) {
        final JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SAAdvertConstants.Properties.DEEPLINK_URL, str);
            jSONObject.put("$time", new Date(System.currentTimeMillis()));
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.advert.impl.SAAdvertProtocolImpl.2
            @Override // java.lang.Runnable
            public void run() {
                if (SAAdvertProtocolImpl.this.mEnableDeepLinkInstallSource) {
                    try {
                        String str3 = str2;
                        String str4 = "";
                        if (TextUtils.isEmpty(str3)) {
                            str3 = SAOaidHelper.getOpenAdIdentifier(SAAdvertProtocolImpl.this.mContext);
                            str4 = SAOaidHelper.getOpenAdIdentifierByReflection(SAAdvertProtocolImpl.this.mContext);
                        }
                        jSONObject.put("$ios_install_source", ChannelUtils.getDeviceInfo(SAAdvertProtocolImpl.this.mContext, SAAdvertUtils.getIdentifier(SAAdvertProtocolImpl.this.mContext), str3, str4));
                    } catch (JSONException e2) {
                        SALog.printStackTrace(e2);
                    }
                }
                SACoreHelper.getInstance().trackEvent(new InputData().setEventName(SAAdvertConstants.EventName.DEEPLINK_LAUNCH).setProperties(jSONObject));
            }
        });
    }

    private void trackInstallation(final String str, JSONObject jSONObject, final boolean z) {
        try {
            if (AppInfoUtils.isMainProcess(this.mContext, null)) {
                final JSONObject jSONObject2 = new JSONObject();
                JSONUtils.mergeJSONObject(jSONObject, jSONObject2);
                SADataHelper.addTimeProperty(jSONObject2);
                SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.advert.impl.SAAdvertProtocolImpl.3
                    @Override // java.lang.Runnable
                    public void run() {
                        String openAdIdentifier;
                        String deviceInfo;
                        boolean z2 = false;
                        try {
                            if (SAAdvertUtils.isFirstTrackInstallation(z)) {
                                try {
                                    if (!ChannelUtils.hasUtmProperties(jSONObject2)) {
                                        ChannelUtils.mergeUtmByMetaData(SAAdvertProtocolImpl.this.mContext, jSONObject2);
                                    }
                                    if (!ChannelUtils.hasUtmProperties(jSONObject2)) {
                                        String identifier = SAAdvertUtils.getIdentifier(SAAdvertProtocolImpl.this.mContext);
                                        if (jSONObject2.has("$oaid")) {
                                            openAdIdentifier = jSONObject2.optString("$oaid");
                                            deviceInfo = ChannelUtils.getDeviceInfo(SAAdvertProtocolImpl.this.mContext, identifier, openAdIdentifier, "");
                                            SALog.i(SAAdvertConstants.TAG, "properties has oaid " + openAdIdentifier);
                                        } else {
                                            openAdIdentifier = SAOaidHelper.getOpenAdIdentifier(SAAdvertProtocolImpl.this.mContext);
                                            deviceInfo = ChannelUtils.getDeviceInfo(SAAdvertProtocolImpl.this.mContext, identifier, openAdIdentifier, SAOaidHelper.getOpenAdIdentifierByReflection(SAAdvertProtocolImpl.this.mContext));
                                        }
                                        if (jSONObject2.has("$gaid")) {
                                            deviceInfo = String.format("%s##gaid=%s", deviceInfo, jSONObject2.optString("$gaid"));
                                        }
                                        z2 = ChannelUtils.isGetDeviceInfo(SAAdvertProtocolImpl.this.mContext, identifier, openAdIdentifier);
                                        jSONObject2.put("$ios_install_source", deviceInfo);
                                    }
                                    if (jSONObject2.has("$oaid")) {
                                        jSONObject2.remove("$oaid");
                                    }
                                    if (jSONObject2.has("$gaid")) {
                                        jSONObject2.remove("$gaid");
                                    }
                                    boolean z3 = z;
                                    if (z3) {
                                        jSONObject2.put("$ios_install_disable_callback", z3);
                                    }
                                } catch (Exception e) {
                                    SALog.printStackTrace(e);
                                }
                                SACoreHelper.getInstance().trackEvent(new InputData().setEventType(EventType.TRACK).setEventName(str).setProperties(jSONObject2));
                                JSONObject jSONObject3 = new JSONObject();
                                jSONObject2.remove("$ios_install_disable_callback");
                                JSONUtils.mergeJSONObject(jSONObject2, jSONObject3);
                                jSONObject3.put("$first_visit_time", new Date());
                                SACoreHelper.getInstance().trackEvent(new InputData().setEventType(EventType.PROFILE_SET_ONCE).setProperties(jSONObject3));
                                SAAdvertUtils.setTrackInstallation(z);
                                ChannelUtils.saveCorrectTrackInstallation(z2);
                            }
                            SensorsDataAPI.sharedInstance().flush();
                        } catch (Exception e2) {
                            SALog.printStackTrace(e2);
                        }
                    }
                });
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void delayExecution() {
        SensorsDataAdvertActivityLifeCallback sensorsDataAdvertActivityLifeCallback;
        try {
            if (this.mOptions.getDeeplinkCallback() != null) {
                DeepLinkManager.setDeferredDeepLinkCallback(this.mOptions.getDeeplinkCallback());
                if ((this.mSAContextManager.getInternalConfigs().context instanceof Activity) && (sensorsDataAdvertActivityLifeCallback = this.mLifecycleCallback) != null) {
                    sensorsDataAdvertActivityLifeCallback.onActivityStarted((Activity) this.mSAContextManager.getInternalConfigs().context);
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void delayInitTask() {
        SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.advert.impl.SAAdvertProtocolImpl.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (SAAdvertProtocolImpl.this.mOptions.isSaveDeepLinkInfo()) {
                        ChannelUtils.loadUtmByLocal();
                    } else {
                        ChannelUtils.clearLocalUtm();
                    }
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
        });
    }

    public <T> T invokeModuleFunction(String str, Object... objArr) {
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1770134035:
                if (str.equals(Modules.Advert.METHOD_SET_DEEPLINK_CALLBACK)) {
                    c = 0;
                    break;
                }
                break;
            case -1731065051:
                if (str.equals(Modules.Advert.METHOD_TRACK_INSTALLATION)) {
                    c = 1;
                    break;
                }
                break;
            case -430510755:
                if (str.equals(Modules.Advert.METHOD_COMMIT_REQUEST_DEFERRED_DEEPLINK)) {
                    c = 2;
                    break;
                }
                break;
            case -427927688:
                if (str.equals(Modules.Advert.METHOD_REMOVE_DEEPLINK_INFO)) {
                    c = 3;
                    break;
                }
                break;
            case -159441788:
                if (str.equals(Modules.Advert.METHOD_TRACK_DEEPLINK_LAUNCH)) {
                    c = 4;
                    break;
                }
                break;
            case 126152258:
                if (str.equals(Modules.Advert.METHOD_MERGE_CHANNEL_EVENT_PROPERTIES)) {
                    c = 5;
                    break;
                }
                break;
            case 421616706:
                if (str.equals(Modules.Advert.METHOD_TRACK_CHANNEL_EVENT)) {
                    c = 6;
                    break;
                }
                break;
            case 736927236:
                if (str.equals(Modules.Advert.METHOD_GET_LATEST_UTM_PROPERTIES)) {
                    c = 7;
                    break;
                }
                break;
            case 778248372:
                if (str.equals(Modules.Advert.METHOD_REQUEST_DEFERRED_DEEPLINK)) {
                    c = '\b';
                    break;
                }
                break;
            case 1053487877:
                if (str.equals(Modules.Advert.METHOD_HANDLER_SCAN_URI)) {
                    c = '\t';
                    break;
                }
                break;
            case 1462034308:
                if (str.equals(Modules.Advert.METHOD_SET_DEEPLINK_COMPLETION)) {
                    c = '\n';
                    break;
                }
                break;
            case 2104386157:
                if (str.equals(Modules.Advert.METHOD_ENABLE_DEEPLINK_INSTALL_SOURCE)) {
                    c = 11;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                DeepLinkManager.setDeepLinkCallback((SensorsDataDeepLinkCallback) objArr[0]);
                break;
            case 1:
                if (objArr.length == 3) {
                    trackInstallation((String) objArr[0], (JSONObject) objArr[1], ((Boolean) objArr[2]).booleanValue());
                    break;
                } else if (objArr.length == 2) {
                    trackInstallation((String) objArr[0], (JSONObject) objArr[1], false);
                    break;
                } else {
                    trackInstallation((String) objArr[0], null, false);
                    break;
                }
            case 2:
                ChannelUtils.commitRequestDeferredDeeplink(((Boolean) objArr[0]).booleanValue());
                break;
            case 3:
                ChannelUtils.removeDeepLinkInfo((JSONObject) objArr[0]);
                break;
            case 4:
                if (objArr.length == 2) {
                    trackDeepLinkLaunch((String) objArr[0], (String) objArr[1]);
                    break;
                } else {
                    trackDeepLinkLaunch((String) objArr[0], null);
                    break;
                }
            case 5:
                return (T) mergeChannelEventProperties((String) objArr[0], (JSONObject) objArr[1]);
            case 6:
                if (objArr.length == 2) {
                    trackChannelEvent((String) objArr[0], (JSONObject) objArr[1]);
                    break;
                } else {
                    trackChannelEvent((String) objArr[0], null);
                    break;
                }
            case 7:
                return (T) ChannelUtils.getLatestUtmProperties();
            case '\b':
                requestDeferredDeepLink((JSONObject) objArr[0]);
                break;
            case '\t':
                SAAdvertScanHelper.scanHandler((Activity) objArr[0], (Uri) objArr[1]);
                break;
            case '\n':
                DeepLinkManager.setDeferredDeepLinkCallback((SensorsDataDeferredDeepLinkCallback) objArr[0]);
                break;
            case 11:
                enableDeepLinkInstallSource(((Boolean) objArr[0]).booleanValue());
                break;
        }
        return null;
    }

    public void registerLifeCallback() {
        if (this.mLifecycleCallback == null) {
            this.mLifecycleCallback = new SensorsDataAdvertActivityLifeCallback(this.mOptions);
        }
        SensorsDataLifecycleMonitorManager.getInstance().addActivityLifeCallback(this.mLifecycleCallback);
    }

    public void registerPropertyPlugin() {
        this.mSAContextManager.getPluginManager().registerPropertyPlugin(this.mStartPlugin);
        this.mSAContextManager.getPluginManager().registerPropertyPlugin(this.mViewScreenPlugin);
        this.mSAContextManager.getPluginManager().registerPropertyPlugin(this.mLatestUtmPlugin);
    }

    public void unregisterLifecycleCallback() {
        if (this.mLifecycleCallback != null) {
            SensorsDataLifecycleMonitorManager.getInstance().removeActivityLifeCallback(this.mLifecycleCallback);
        }
    }

    public void unregisterPropertyPlugin() {
        this.mSAContextManager.getPluginManager().unregisterPropertyPlugin(this.mStartPlugin);
        this.mSAContextManager.getPluginManager().unregisterPropertyPlugin(this.mViewScreenPlugin);
        this.mSAContextManager.getPluginManager().unregisterPropertyPlugin(this.mLatestUtmPlugin);
    }
}
