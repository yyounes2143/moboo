package com.sensorsdata.analytics.android.sdk.core.business;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAPluginVersion {
    private static final String TAG = "SA.SAPluginVersion";
    private static boolean isTrackEventWithPluginVersion = false;

    public static void appendPluginVersion(JSONObject jSONObject) {
        if (!isTrackEventWithPluginVersion && !jSONObject.has("$lib_plugin_version")) {
            JSONArray pluginVersion = getPluginVersion();
            if (pluginVersion == null) {
                isTrackEventWithPluginVersion = true;
                return;
            }
            try {
                jSONObject.put("$lib_plugin_version", pluginVersion);
                isTrackEventWithPluginVersion = true;
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static JSONArray getPluginVersion() {
        try {
            if (!TextUtils.isEmpty(SensorsDataAPI.ANDROID_PLUGIN_VERSION)) {
                SALog.i(TAG, "android plugin version: " + SensorsDataAPI.ANDROID_PLUGIN_VERSION);
                JSONArray jSONArray = new JSONArray();
                jSONArray.put("android:" + SensorsDataAPI.ANDROID_PLUGIN_VERSION);
                return jSONArray;
            }
            return null;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }
}
