package com.sensorsdata.analytics.android.sdk.advert.utils;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.advert.oaid.SAOaidHelper;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ChannelUtils {
    private static final String SHARED_PREF_CORRECT_TRACK_INSTALLATION = "sensorsdata.correct.track.installation";
    private static final String SHARED_PREF_UTM = "sensorsdata.utm";
    private static final String UTM_CAMPAIGN_KEY = "SENSORS_ANALYTICS_UTM_CAMPAIGN";
    private static final String UTM_CONTENT_KEY = "SENSORS_ANALYTICS_UTM_CONTENT";
    private static final String UTM_MEDIUM_KEY = "SENSORS_ANALYTICS_UTM_MEDIUM";
    private static final String UTM_SOURCE_KEY = "SENSORS_ANALYTICS_UTM_SOURCE";
    private static final String UTM_TERM_KEY = "SENSORS_ANALYTICS_UTM_TERM";
    private static HashSet<String> sChannelSourceKeySet = new HashSet<>();
    private static final HashMap<String, String> UTM_MAP = new HashMap<String, String>() { // from class: com.sensorsdata.analytics.android.sdk.advert.utils.ChannelUtils.1
        {
            put(ChannelUtils.UTM_SOURCE_KEY, "$utm_source");
            put(ChannelUtils.UTM_MEDIUM_KEY, "$utm_medium");
            put(ChannelUtils.UTM_TERM_KEY, "$utm_term");
            put(ChannelUtils.UTM_CONTENT_KEY, "$utm_content");
            put(ChannelUtils.UTM_CAMPAIGN_KEY, "$utm_campaign");
        }
    };
    private static final List<String> mDeepLinkBlackList = new ArrayList() { // from class: com.sensorsdata.analytics.android.sdk.advert.utils.ChannelUtils.2
        {
            add("io.dcloud.PandoraEntryActivity");
        }
    };
    private static final HashMap<String, String> UTM_LINK_MAP = new HashMap<String, String>() { // from class: com.sensorsdata.analytics.android.sdk.advert.utils.ChannelUtils.3
        {
            put(ChannelUtils.UTM_SOURCE_KEY, "utm_source");
            put(ChannelUtils.UTM_MEDIUM_KEY, "utm_medium");
            put(ChannelUtils.UTM_TERM_KEY, "utm_term");
            put(ChannelUtils.UTM_CONTENT_KEY, "utm_content");
            put(ChannelUtils.UTM_CAMPAIGN_KEY, "utm_campaign");
        }
    };
    private static final Map<String, String> LATEST_UTM_MAP = new HashMap<String, String>() { // from class: com.sensorsdata.analytics.android.sdk.advert.utils.ChannelUtils.4
        {
            put(ChannelUtils.UTM_SOURCE_KEY, "$latest_utm_source");
            put(ChannelUtils.UTM_MEDIUM_KEY, "$latest_utm_medium");
            put(ChannelUtils.UTM_TERM_KEY, "$latest_utm_term");
            put(ChannelUtils.UTM_CONTENT_KEY, "$latest_utm_content");
            put(ChannelUtils.UTM_CAMPAIGN_KEY, "$latest_utm_campaign");
        }
    };
    private static Map<String, String> sUtmProperties = new HashMap();
    private static Map<String, String> sLatestUtmProperties = new HashMap();

    public static boolean checkDeviceInfo(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            String[] split = str.split("##");
            HashMap hashMap = new HashMap();
            if (split.length == 0) {
                return false;
            }
            for (String str2 : split) {
                String[] split2 = str2.trim().split("=");
                if (split2.length == 2) {
                    hashMap.put(split2[0], split2[1]);
                }
            }
            if (hashMap.isEmpty()) {
                return false;
            }
            if ((hashMap.containsKey("oaid") && TextUtils.equals((CharSequence) hashMap.get("oaid"), SAOaidHelper.getOpenAdIdentifier(context))) || ((hashMap.containsKey("imei") && TextUtils.equals((CharSequence) hashMap.get("imei"), SensorsDataUtils.getInternationalIdentifier(context))) || ((hashMap.containsKey("imei_old") && TextUtils.equals((CharSequence) hashMap.get("imei_old"), SensorsDataUtils.getInternationalIdOld(context))) || ((hashMap.containsKey("imei_slot1") && TextUtils.equals((CharSequence) hashMap.get("imei_slot1"), SensorsDataUtils.getSlot(context, 0))) || ((hashMap.containsKey("imei_slot2") && TextUtils.equals((CharSequence) hashMap.get("imei_slot2"), SensorsDataUtils.getSlot(context, 1))) || ((hashMap.containsKey("imei_meid") && TextUtils.equals((CharSequence) hashMap.get("imei_meid"), SensorsDataUtils.getEquipmentIdentifier(context))) || ((hashMap.containsKey("android_id") && TextUtils.equals((CharSequence) hashMap.get("android_id"), SensorsDataUtils.getIdentifier(context))) || (hashMap.containsKey(TPDownloadProxyEnum.USER_MAC) && TextUtils.equals((CharSequence) hashMap.get(TPDownloadProxyEnum.USER_MAC), SensorsDataUtils.getMediaAddress(context)))))))))) {
                return true;
            }
        }
        return false;
    }

    public static JSONObject checkOrSetChannelCallbackEvent(String str, JSONObject jSONObject, Context context) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("$is_channel_callback_event", isFirstChannelEvent(str));
            if (context != null && !hasUtmProperties(jSONObject)) {
                mergeUtmByMetaData(context, jSONObject);
            }
            jSONObject.put("$channel_device_info", "1");
            return jSONObject;
        } catch (JSONException e) {
            SALog.printStackTrace(e);
            return jSONObject;
        }
    }

    public static void clearLocalUtm() {
        try {
            SAStoreManager.getInstance().setString(SHARED_PREF_UTM, "");
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void clearMemoryUtm() {
        sUtmProperties.clear();
        sLatestUtmProperties.clear();
    }

    public static void clearUtm() {
        clearMemoryUtm();
        clearLocalUtm();
    }

    public static void commitRequestDeferredDeeplink(boolean z) {
        SAStoreManager.getInstance().setBool(DbParams.PersistentName.REQUEST_DEFERRER_DEEPLINK, z);
    }

    private static String getApplicationMetaData(Context context, String str) {
        int i;
        try {
            ApplicationInfo applicationInfo = context.getApplicationContext().getPackageManager().getApplicationInfo(context.getApplicationContext().getPackageName(), 128);
            String string = applicationInfo.metaData.getString(str);
            if (string == null) {
                i = applicationInfo.metaData.getInt(str, -1);
            } else {
                i = -1;
            }
            if (i != -1) {
                return String.valueOf(i);
            }
            return string;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getDeviceInfo(Context context, String str, String str2, String str3) {
        return String.format("android_id=%s##imei=%s##imei_old=%s##imei_slot1=%s##imei_slot2=%s##imei_meid=%s##mac=%s##oaid=%s##oaid_reflection=%s", str, SensorsDataUtils.getInternationalIdentifier(context), SensorsDataUtils.getInternationalIdOld(context), SensorsDataUtils.getSlot(context, 0), SensorsDataUtils.getSlot(context, 1), SensorsDataUtils.getEquipmentIdentifier(context), SensorsDataUtils.getMediaAddress(context), str2, str3);
    }

    public static JSONObject getLatestUtmProperties() {
        if (sLatestUtmProperties.size() > 0) {
            return new JSONObject(sLatestUtmProperties);
        }
        return new JSONObject();
    }

    public static JSONObject getUtmProperties() {
        if (sUtmProperties.size() > 0) {
            return new JSONObject(sUtmProperties);
        }
        return new JSONObject();
    }

    public static boolean hasLinkUtmProperties(Set<String> set) {
        if (set != null && !set.isEmpty()) {
            for (Map.Entry<String, String> entry : UTM_LINK_MAP.entrySet()) {
                if (entry != null && set.contains(entry.getValue())) {
                    return true;
                }
            }
            Iterator<String> it = sChannelSourceKeySet.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (!TextUtils.isEmpty(next) && sChannelSourceKeySet.contains(next)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean hasUtmByMetaData(Context context) {
        if (context == null) {
            return false;
        }
        for (Map.Entry<String, String> entry : UTM_MAP.entrySet()) {
            if (entry != null && !TextUtils.isEmpty(getApplicationMetaData(context, entry.getKey()))) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasUtmProperties(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        for (Map.Entry<String, String> entry : UTM_MAP.entrySet()) {
            if (entry != null && jSONObject.has(entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isCorrectTrackInstallation() {
        try {
            return SAStoreManager.getInstance().getBool(SHARED_PREF_CORRECT_TRACK_INSTALLATION, false);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    public static boolean isDeepLinkBlackList(Activity activity) {
        if (activity != null) {
            for (String str : mDeepLinkBlackList) {
                try {
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
                if (Class.forName(str).isAssignableFrom(activity.getClass())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static boolean isExistRequestDeferredDeeplink() {
        return SAStoreManager.getInstance().isExists(DbParams.PersistentName.REQUEST_DEFERRER_DEEPLINK);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isFirstChannelEvent(java.lang.String r4) {
        /*
            com.sensorsdata.analytics.android.sdk.SAConfigOptions r0 = com.sensorsdata.analytics.android.sdk.SensorsDataAPI.getConfigOptions()
            java.util.List r0 = r0.getStorePlugins()
            if (r0 == 0) goto L2e
            com.sensorsdata.analytics.android.sdk.SAConfigOptions r0 = com.sensorsdata.analytics.android.sdk.SensorsDataAPI.getConfigOptions()
            java.util.List r0 = r0.getStorePlugins()
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L19
            goto L2e
        L19:
            com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager r0 = com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager.getInstance()
            java.lang.String r1 = "encryptAES"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = 0
            r2[r3] = r4
            java.lang.String r3 = "sensors_analytics_module_encrypt"
            java.lang.Object r0 = r0.invokeModuleFunction(r3, r1, r2)
            java.lang.String r0 = (java.lang.String) r0
            goto L2f
        L2e:
            r0 = r4
        L2f:
            com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter r1 = com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter.getInstance()
            java.lang.String[] r4 = new java.lang.String[]{r0, r4}
            boolean r4 = r1.isFirstChannelEvent(r4)
            if (r4 == 0) goto L44
            com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter r1 = com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter.getInstance()
            r1.addChannelEvent(r0)
        L44:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.advert.utils.ChannelUtils.isFirstChannelEvent(java.lang.String):boolean");
    }

    public static boolean isGetDeviceInfo(Context context, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(SensorsDataUtils.getInternationalIdentifier(context)) && TextUtils.isEmpty(SensorsDataUtils.getInternationalIdOld(context)) && TextUtils.isEmpty(SensorsDataUtils.getSlot(context, 0)) && TextUtils.isEmpty(SensorsDataUtils.getSlot(context, 1))) {
                if (TextUtils.isEmpty(SensorsDataUtils.getEquipmentIdentifier(context))) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    public static boolean isRequestDeferredDeeplink() {
        return SAStoreManager.getInstance().getBool(DbParams.PersistentName.REQUEST_DEFERRER_DEEPLINK, true);
    }

    public static boolean isTrackInstallation() {
        try {
            return SAStoreManager.getInstance().isExists(SHARED_PREF_CORRECT_TRACK_INSTALLATION);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    public static void loadUtmByLocal() {
        try {
            sLatestUtmProperties.clear();
            String string = SAStoreManager.getInstance().getString(SHARED_PREF_UTM, "");
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(string);
                for (Map.Entry<String, String> entry : LATEST_UTM_MAP.entrySet()) {
                    String value = entry.getValue();
                    if (jSONObject.has(value)) {
                        sLatestUtmProperties.put(value, jSONObject.optString(value));
                    }
                }
                Iterator<String> it = sChannelSourceKeySet.iterator();
                while (it.hasNext()) {
                    String str = "_latest_" + it.next();
                    if (jSONObject.has(str)) {
                        sLatestUtmProperties.put(str, jSONObject.optString(str));
                    }
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void mergeUtmByMetaData(Context context, JSONObject jSONObject) throws JSONException {
        if (jSONObject != null) {
            for (Map.Entry<String, String> entry : UTM_MAP.entrySet()) {
                if (entry != null) {
                    String applicationMetaData = getApplicationMetaData(context, entry.getKey());
                    if (!TextUtils.isEmpty(applicationMetaData)) {
                        jSONObject.put(entry.getValue(), applicationMetaData);
                    }
                }
            }
        }
    }

    public static void parseParams(Map<String, String> map) {
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry : UTM_LINK_MAP.entrySet()) {
                String str = map.get(entry.getValue());
                if (!TextUtils.isEmpty(str)) {
                    sUtmProperties.put(UTM_MAP.get(entry.getKey()), str);
                    sLatestUtmProperties.put(LATEST_UTM_MAP.get(entry.getKey()), str);
                }
            }
            Iterator<String> it = sChannelSourceKeySet.iterator();
            while (it.hasNext()) {
                String next = it.next();
                try {
                    if (SADataHelper.assertPropertyKey(next)) {
                        String str2 = map.get(next);
                        if (!TextUtils.isEmpty(str2)) {
                            sUtmProperties.put(next, str2);
                            Map<String, String> map2 = sLatestUtmProperties;
                            map2.put("_latest_" + next, str2);
                        }
                    }
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
        }
    }

    public static void removeDeepLinkInfo(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (next.startsWith("$latest") || next.startsWith("_latest")) {
                        keys.remove();
                    }
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void saveCorrectTrackInstallation(boolean z) {
        try {
            SAStoreManager.getInstance().setBool(SHARED_PREF_CORRECT_TRACK_INSTALLATION, z);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void saveDeepLinkInfo() {
        try {
            if (sLatestUtmProperties.size() > 0) {
                SAStoreManager.getInstance().setString(SHARED_PREF_UTM, sLatestUtmProperties.toString());
            } else {
                clearLocalUtm();
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void setSourceChannelKeys(String... strArr) {
        sChannelSourceKeySet.clear();
        if (strArr != null && strArr.length > 0) {
            for (String str : strArr) {
                if (!TextUtils.isEmpty(str)) {
                    sChannelSourceKeySet.add(str);
                }
            }
        }
    }
}
