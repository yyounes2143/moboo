package com.sensorsdata.analytics.android.sdk.util;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.business.SAPropertyManager;
import com.sensorsdata.analytics.android.sdk.internal.beans.LimitKey;
import com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class SensorsDataUtils {
    public static final String COMMAND_HARMONYOS_VERSION = "getprop hw_sc.build.platform.version";
    private static final String SHARED_PREF_APP_VERSION = "sensorsdata.app.version";
    private static final String TAG = "SA.SensorsDataUtils";
    private static final String marshmallowMacAddress = "02:00:00:00:00:00";
    private static final Map<String, String> deviceUniqueIdentifiersMap = new HashMap();
    private static boolean isUniApp = false;
    private static String androidID = "";
    private static String mCurrentCarrier = null;
    private static final Map<String, String> sCarrierMap = new HashMap();
    private static final List<String> mInvalidAndroidId = new ArrayList<String>() { // from class: com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils.1
        {
            add("9774d56d682e549c");
            add("0123456789abcdef");
            add("0000000000000000");
        }
    };

    public static boolean checkVersionIsNew(Context context, String str) {
        try {
            String string = SAStoreManager.getInstance().getString(SHARED_PREF_APP_VERSION, "");
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SAStoreManager.getInstance().setString(SHARED_PREF_APP_VERSION, str);
                return true;
            }
            return false;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return true;
        }
    }

    private static Class<?> compatActivity() {
        Class<?> cls;
        try {
            cls = ReflectUtil.getClassByName("androidx.appcompat.app.AppCompatActivity");
        } catch (Exception unused) {
            cls = null;
        }
        if (cls == null) {
            try {
                return ReflectUtil.getClassByName("androidx.appcompat.app.AppCompatActivity");
            } catch (Exception unused2) {
                return cls;
            }
        }
        return cls;
    }

    public static String getActivityTitle(Activity activity) {
        PackageManager packageManager;
        if (activity != null) {
            try {
                String toolbarTitle = getToolbarTitle(activity);
                if (TextUtils.isEmpty(toolbarTitle)) {
                    toolbarTitle = null;
                }
                if (TextUtils.isEmpty(toolbarTitle)) {
                    toolbarTitle = activity.getTitle().toString();
                }
                if (TextUtils.isEmpty(toolbarTitle) && (packageManager = activity.getPackageManager()) != null) {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(activity.getComponentName(), 0);
                    if (!TextUtils.isEmpty(activityInfo.loadLabel(packageManager))) {
                        return activityInfo.loadLabel(packageManager).toString();
                    }
                }
                return toolbarTitle;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static String getCarrierFromJsonObject(String str, String str2) {
        if (str != null && !TextUtils.isEmpty(str2)) {
            try {
                String optString = new JSONObject(str).optString(str2);
                if (!TextUtils.isEmpty(optString)) {
                    sCarrierMap.put(str2, optString);
                    return optString;
                }
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getCarrierName(android.content.Context r2, android.telephony.TelephonyManager r3) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 28
            if (r0 < r1) goto L15
            java.lang.CharSequence r0 = com.sensorsdata.analytics.android.sdk.util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L15
            java.lang.String r0 = r0.toString()
            goto L16
        L15:
            r0 = 0
        L16:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L2f
            int r0 = r3.getSimState()
            r1 = 5
            if (r0 != r1) goto L28
            java.lang.String r2 = r3.getSimOperatorName()
            return r2
        L28:
            int r3 = com.sensorsdata.analytics.android.sdk.R.string.sensors_analytics_carrier_unknown
            java.lang.String r2 = r2.getString(r3)
            return r2
        L2f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils.getCarrierName(android.content.Context, android.telephony.TelephonyManager):java.lang.String");
    }

    public static String getEquipmentIdentifier(Context context) {
        if (SAPropertyManager.getInstance().isLimitKey(LimitKey.MEID)) {
            return SAPropertyManager.getInstance().getLimitValue(LimitKey.MEID);
        }
        return getPhoneIdentifier(context, -2);
    }

    @SuppressLint({"HardwareIds"})
    public static String getIdentifier(Context context) {
        try {
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        if (SAPropertyManager.getInstance().isLimitKey(LimitKey.ANDROID_ID)) {
            return SAPropertyManager.getInstance().getLimitValue(LimitKey.ANDROID_ID);
        }
        if (TextUtils.isEmpty(androidID)) {
            SALog.i(TAG, "SensorsData getIdentifier");
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            androidID = string;
            if (!isValidAndroidId(string)) {
                androidID = "";
            }
        }
        return androidID;
    }

    public static String getInternationalIdOld(Context context) {
        if (SAPropertyManager.getInstance().isLimitKey(LimitKey.IMEI)) {
            return "";
        }
        return getPhoneIdentifier(context, -1);
    }

    @SuppressLint({"MissingPermission", "HardwareIds"})
    public static String getInternationalIdentifier(Context context) {
        TelephonyManager telephonyManager;
        String imei;
        String str = "";
        try {
            if (SAPropertyManager.getInstance().isLimitKey(LimitKey.IMEI)) {
                return SAPropertyManager.getInstance().getLimitValue(LimitKey.IMEI);
            }
            Map<String, String> map = deviceUniqueIdentifiersMap;
            if (map.containsKey("IMEI")) {
                str = map.get("IMEI");
            }
            if (TextUtils.isEmpty(str) && PermissionUtils.hasReadPhoneStatePermission(context) && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                SALog.i(TAG, "SensorsData getInternationalIdentifier");
                int i = Build.VERSION.SDK_INT;
                if (i > 28) {
                    if (telephonyManager.hasCarrierPrivileges()) {
                        imei = telephonyManager.getImei();
                    }
                    map.put("IMEI", str);
                } else {
                    imei = i >= 26 ? telephonyManager.getImei() : telephonyManager.getDeviceId();
                }
                str = imei;
                map.put("IMEI", str);
            }
            return str;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return "";
        }
    }

    private static String getMacAddressByInterface() {
        try {
            ArrayList list = Collections.list(NetworkInterface.getNetworkInterfaces());
            int size = list.size();
            int i = 0;
            while (i < size) {
                Object obj = list.get(i);
                i++;
                NetworkInterface networkInterface = (NetworkInterface) obj;
                if ("wlan0".equalsIgnoreCase(networkInterface.getName())) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    int length = hardwareAddress.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        sb.append(String.format("%02X:", Byte.valueOf(hardwareAddress[i2])));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @SuppressLint({"MissingPermission"})
    public static String getMediaAddress(Context context) {
        WifiManager wifiManager;
        String str = marshmallowMacAddress;
        String str2 = "";
        try {
            if (SAPropertyManager.getInstance().isLimitKey(LimitKey.MAC)) {
                return SAPropertyManager.getInstance().getLimitValue(LimitKey.MAC);
            }
            Map<String, String> map = deviceUniqueIdentifiersMap;
            if (map.containsKey("macAddress")) {
                str2 = map.get("macAddress");
            }
            if (TextUtils.isEmpty(str2) && PermissionUtils.checkSelfPermission(context, "android.permission.ACCESS_WIFI_STATE") && (wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi")) != null) {
                SALog.i(TAG, "SensorsData getMacAddress");
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                if (connectionInfo != null) {
                    str2 = connectionInfo.getMacAddress();
                    if (!TextUtils.isEmpty(str2)) {
                        if (marshmallowMacAddress.equals(str2)) {
                            String macAddressByInterface = getMacAddressByInterface();
                            if (macAddressByInterface != null) {
                                str = macAddressByInterface;
                            }
                        } else {
                            str = str2;
                        }
                        try {
                            map.put("macAddress", str);
                            return str;
                        } catch (Exception e) {
                            e = e;
                            str2 = str;
                            SALog.printStackTrace(e);
                            return str2;
                        }
                    }
                }
            }
            return str2;
        } catch (Exception e2) {
            e = e2;
        }
    }

    public static String getOperator(Context context) {
        try {
            try {
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        } catch (Error e2) {
            SALog.i(TAG, e2.toString());
        }
        if (SAPropertyManager.getInstance().isLimitKey(LimitKey.CARRIER)) {
            return SAPropertyManager.getInstance().getLimitValue(LimitKey.CARRIER);
        }
        if (TextUtils.isEmpty(mCurrentCarrier)) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    SALog.i(TAG, "SensorsData getCarrier");
                    String simOperator = telephonyManager.getSimOperator();
                    if (!TextUtils.isEmpty(simOperator)) {
                        String operatorToCarrier = operatorToCarrier(context, simOperator, telephonyManager);
                        mCurrentCarrier = operatorToCarrier;
                        return operatorToCarrier;
                    }
                }
            } catch (Exception e3) {
                SALog.printStackTrace(e3);
            }
        }
        return mCurrentCarrier;
    }

    @SuppressLint({"MissingPermission", "HardwareIds"})
    private static String getPhoneIdentifier(Context context, int i) {
        TelephonyManager telephonyManager;
        String deviceId;
        String str = "";
        try {
            String str2 = "deviceID" + i;
            Map<String, String> map = deviceUniqueIdentifiersMap;
            if (map.containsKey(str2)) {
                str = map.get(str2);
            }
            if (TextUtils.isEmpty(str) && PermissionUtils.hasReadPhoneStatePermission(context) && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                SALog.i(TAG, "SensorsData getPhoneIdentifier");
                if (i == -1) {
                    deviceId = telephonyManager.getDeviceId();
                } else if (i == -2 && Build.VERSION.SDK_INT >= 26) {
                    deviceId = telephonyManager.getMeid();
                } else {
                    deviceId = telephonyManager.getDeviceId(i);
                }
                str = deviceId;
                map.put(str2, str);
            }
            return str;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return str;
        }
    }

    public static String getSlot(Context context, int i) {
        if (SAPropertyManager.getInstance().isLimitKey(LimitKey.IMEI)) {
            return "";
        }
        return getPhoneIdentifier(context, i);
    }

    public static String getToolbarTitle(Activity activity) {
        Object invoke;
        CharSequence charSequence;
        try {
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        if ("com.tencent.connect.common.AssistActivity".equals(SnapCache.getInstance().getCanonicalName(activity.getClass()))) {
            if (TextUtils.isEmpty(activity.getTitle())) {
                return null;
            }
            return activity.getTitle().toString();
        }
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            if (!TextUtils.isEmpty(actionBar.getTitle())) {
                return actionBar.getTitle().toString();
            }
        } else {
            try {
                Class<?> compatActivity = compatActivity();
                if (compatActivity != null && compatActivity.isInstance(activity) && (invoke = activity.getClass().getMethod("getSupportActionBar", null).invoke(activity, null)) != null && (charSequence = (CharSequence) invoke.getClass().getMethod("getTitle", null).invoke(invoke, null)) != null) {
                    return charSequence.toString();
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static void handleSchemeUrl(Activity activity, Intent intent) {
        SASchemeHelper.handleSchemeUrl(activity, intent);
    }

    private static void initDefaultCarrier(Context context) {
        Map<String, String> map = sCarrierMap;
        if (map.size() == 0) {
            String string = context.getString(R.string.sensors_analytics_carrier_mobile);
            map.put("46000", string);
            map.put("46002", string);
            map.put("46007", string);
            map.put("46008", string);
            String string2 = context.getString(R.string.sensors_analytics_carrier_unicom);
            map.put("46001", string2);
            map.put("46006", string2);
            map.put("46009", string2);
            map.put("46010", string2);
            String string3 = context.getString(R.string.sensors_analytics_carrier_telecom);
            map.put("46003", string3);
            map.put("46005", string3);
            map.put("46011", string3);
            map.put("46004", context.getString(R.string.sensors_analytics_carrier_satellite));
            map.put("46020", context.getString(R.string.sensors_analytics_carrier_tietong));
        }
    }

    public static void initUniAppStatus() {
        try {
            Class.forName("io.dcloud.application.DCloudApplication");
            isUniApp = true;
        } catch (ClassNotFoundException unused) {
        }
    }

    public static boolean isUniApp() {
        return isUniApp;
    }

    public static boolean isValidAndroidId(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return !mInvalidAndroidId.contains(str.toLowerCase(Locale.getDefault()));
    }

    @Deprecated
    public static void mergeJSONObject(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONUtils.mergeJSONObject(jSONObject, jSONObject2);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    private static String operatorToCarrier(Context context, String str, TelephonyManager telephonyManager) {
        try {
            Map<String, String> map = sCarrierMap;
            if (map.containsKey(str)) {
                return map.get(str);
            }
            if (TextUtils.isEmpty(str)) {
                return getCarrierName(context, telephonyManager);
            }
            initDefaultCarrier(context);
            if (map.containsKey(str)) {
                return map.get(str);
            }
            String carrierFromJsonObject = getCarrierFromJsonObject(context.getString(R.string.sensors_analytics_carrier), str);
            if (TextUtils.isEmpty(carrierFromJsonObject)) {
                carrierFromJsonObject = getCarrierFromJsonObject(context.getString(R.string.sensors_analytics_carrier1), str);
                if (TextUtils.isEmpty(carrierFromJsonObject)) {
                    carrierFromJsonObject = getCarrierFromJsonObject(context.getString(R.string.sensors_analytics_carrier2), str);
                }
            }
            if (TextUtils.isEmpty(carrierFromJsonObject)) {
                String carrierName = getCarrierName(context, telephonyManager);
                map.put(str, carrierName);
                return carrierName;
            }
            map.put(str, carrierFromJsonObject);
            return carrierFromJsonObject;
        } catch (Throwable th) {
            SALog.i(TAG, th.getMessage());
            return getCarrierName(context, telephonyManager);
        }
    }
}
