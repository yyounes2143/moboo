package com.sensorsdata.analytics.android.sdk.remote;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Patterns;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.network.HttpCallback;
import com.sensorsdata.analytics.android.sdk.network.HttpMethod;
import com.sensorsdata.analytics.android.sdk.network.RequestHelper;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class BaseSensorsDataSDKRemoteManager {
    protected static final String TAG = "SA.SensorsDataSDKRemoteConfigBase";
    protected static SensorsDataSDKRemoteConfig mSDKRemoteConfig;
    protected SAContextManager mContextManager;
    protected boolean mDisableDefaultRemoteConfig;
    protected SensorsDataAPI mSensorsDataAPI;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum RandomTimeType {
        RandomTimeTypeWrite,
        RandomTimeTypeClean,
        RandomTimeTypeNone
    }

    public BaseSensorsDataSDKRemoteManager(SensorsDataAPI sensorsDataAPI, SAContextManager sAContextManager) {
        this.mSensorsDataAPI = sensorsDataAPI;
        this.mContextManager = sAContextManager;
        this.mDisableDefaultRemoteConfig = sensorsDataAPI.isDisableDefaultRemoteConfig();
    }

    public static boolean isSDKDisabledByRemote() {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig == null) {
            return false;
        }
        return sensorsDataSDKRemoteConfig.isDisableSDK();
    }

    public abstract void applySDKConfigFromCache();

    public String buildRemoteUrl(boolean z) {
        String str;
        String str2;
        String serverUrl = this.mSensorsDataAPI.getServerUrl();
        String str3 = null;
        if (this.mContextManager.getInternalConfigs().saConfigOptions != null) {
            str = this.mContextManager.getInternalConfigs().saConfigOptions.getRemoteConfigUrl();
        } else {
            str = null;
        }
        if (!TextUtils.isEmpty(str) && Patterns.WEB_URL.matcher(str).matches()) {
            SALog.i(TAG, "SAConfigOptions remote url is " + str);
        } else if (!TextUtils.isEmpty(serverUrl) && Patterns.WEB_URL.matcher(serverUrl).matches()) {
            int lastIndexOf = serverUrl.lastIndexOf("/");
            if (lastIndexOf != -1) {
                str = serverUrl.substring(0, lastIndexOf) + "/config/Android.conf";
            } else {
                str = null;
            }
            SALog.i(TAG, "SensorsDataAPI remote url is " + str);
        } else {
            SALog.i(TAG, String.format(TimeUtils.SDK_LOCALE, "ServerUlr: %s, SAConfigOptions remote url: %s", serverUrl, str));
            SALog.i(TAG, "Remote config url verification failed");
            return null;
        }
        if (z && (SensorsDataUtils.checkVersionIsNew(this.mContextManager.getContext(), this.mSensorsDataAPI.getSDKVersion()) || !isSecretKeyValid())) {
            z = false;
        }
        if (TextUtils.isEmpty(str)) {
            SALog.i(TAG, "remote request url is empty");
            return "";
        }
        Uri parse = Uri.parse(str);
        Uri.Builder buildUpon = parse.buildUpon();
        if (!TextUtils.isEmpty(str) && z) {
            SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
            if (sensorsDataSDKRemoteConfig != null) {
                str3 = sensorsDataSDKRemoteConfig.getOldVersion();
                str2 = sensorsDataSDKRemoteConfig.getNewVersion();
                SALog.i(TAG, "The current config: " + sensorsDataSDKRemoteConfig);
            } else {
                str2 = null;
            }
            if (!TextUtils.isEmpty(str3) && TextUtils.isEmpty(parse.getQueryParameter("v"))) {
                buildUpon.appendQueryParameter("v", str3);
            }
            if (!TextUtils.isEmpty(str2) && TextUtils.isEmpty(parse.getQueryParameter("nv"))) {
                buildUpon.appendQueryParameter("nv", str2);
            }
        }
        if (!TextUtils.isEmpty(serverUrl) && TextUtils.isEmpty(parse.getQueryParameter("project"))) {
            String queryParameter = Uri.parse(serverUrl).getQueryParameter("project");
            if (!TextUtils.isEmpty(queryParameter)) {
                buildUpon.appendQueryParameter("project", queryParameter);
            }
        }
        if (TextUtils.isEmpty(parse.getQueryParameter("app_id"))) {
            buildUpon.appendQueryParameter("app_id", AppInfoUtils.getProcessName(this.mContextManager.getContext()));
        }
        buildUpon.build();
        String builder = buildUpon.toString();
        SALog.i(TAG, "Android remote config url is " + builder);
        return builder;
    }

    public boolean ignoreEvent(String str) {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig != null && sensorsDataSDKRemoteConfig.getEventBlacklist() != null) {
            try {
                int length = mSDKRemoteConfig.getEventBlacklist().length();
                for (int i = 0; i < length; i++) {
                    if (str.equals(mSDKRemoteConfig.getEventBlacklist().get(i))) {
                        SALog.i(TAG, "remote config: " + str + " is ignored by remote config");
                        return true;
                    }
                }
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }
        return false;
    }

    public Boolean isAutoTrackEnabled() {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig != null) {
            if (sensorsDataSDKRemoteConfig.getAutoTrackMode() == 0) {
                SALog.i(TAG, "remote config: AutoTrackMode is closing by remote config");
                return Boolean.FALSE;
            } else if (mSDKRemoteConfig.getAutoTrackMode() > 0) {
                return Boolean.TRUE;
            } else {
                return null;
            }
        }
        return null;
    }

    public Boolean isAutoTrackEventTypeIgnored(int i) {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig != null && sensorsDataSDKRemoteConfig.getAutoTrackMode() != -1) {
            if (mSDKRemoteConfig.getAutoTrackMode() == 0) {
                return Boolean.TRUE;
            }
            return Boolean.valueOf(mSDKRemoteConfig.isAutoTrackEventTypeIgnored(i));
        }
        return null;
    }

    public boolean isSecretKeyValid() {
        if (this.mContextManager.getInternalConfigs().saConfigOptions.isEnableEncrypt() && SAModuleManager.getInstance().hasModuleByName(Modules.Encrypt.MODULE_NAME)) {
            String str = (String) SAModuleManager.getInstance().invokeModuleFunction(Modules.Encrypt.MODULE_NAME, Modules.Encrypt.METHOD_LOAD_SECRET_KEY, new Object[0]);
            try {
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("key")) {
                    if (!TextUtils.isEmpty(jSONObject.optString("key"))) {
                        return true;
                    }
                }
                return false;
            } catch (JSONException e) {
                SALog.printStackTrace(e);
                return false;
            }
        }
        return true;
    }

    public abstract void pullSDKConfigFromServer();

    public abstract void requestRemoteConfig(RandomTimeType randomTimeType, boolean z);

    public void requestRemoteConfig(boolean z, HttpCallback.StringCallback stringCallback) {
        try {
            String buildRemoteUrl = buildRemoteUrl(z);
            if (TextUtils.isEmpty(buildRemoteUrl)) {
                return;
            }
            new RequestHelper.Builder(HttpMethod.GET, buildRemoteUrl).callback(stringCallback).execute();
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public abstract void resetPullSDKConfigTimer();

    public abstract void setSDKRemoteConfig(SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig);

    public SensorsDataSDKRemoteConfig toSDKRemoteConfig(String str) {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = new SensorsDataSDKRemoteConfig();
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                sensorsDataSDKRemoteConfig.setOldVersion(jSONObject.optString("v"));
                String optString = jSONObject.optString("configs");
                if (!TextUtils.isEmpty(optString)) {
                    JSONObject jSONObject2 = new JSONObject(optString);
                    sensorsDataSDKRemoteConfig.setDisableDebugMode(jSONObject2.optBoolean("disableDebugMode", false));
                    sensorsDataSDKRemoteConfig.setDisableSDK(jSONObject2.optBoolean("disableSDK", false));
                    sensorsDataSDKRemoteConfig.setAutoTrackMode(jSONObject2.optInt("autoTrackMode", -1));
                    sensorsDataSDKRemoteConfig.setEventBlacklist(jSONObject2.optJSONArray("event_blacklist"));
                    sensorsDataSDKRemoteConfig.setNewVersion(jSONObject2.optString("nv", ""));
                    sensorsDataSDKRemoteConfig.setEffectMode(jSONObject2.optInt("effect_mode", 0));
                    return sensorsDataSDKRemoteConfig;
                }
                sensorsDataSDKRemoteConfig.setDisableDebugMode(false);
                sensorsDataSDKRemoteConfig.setDisableSDK(false);
                sensorsDataSDKRemoteConfig.setAutoTrackMode(-1);
                sensorsDataSDKRemoteConfig.setEventBlacklist(new JSONArray());
                sensorsDataSDKRemoteConfig.setNewVersion("");
                sensorsDataSDKRemoteConfig.setEffectMode(0);
                return sensorsDataSDKRemoteConfig;
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        return sensorsDataSDKRemoteConfig;
    }
}
