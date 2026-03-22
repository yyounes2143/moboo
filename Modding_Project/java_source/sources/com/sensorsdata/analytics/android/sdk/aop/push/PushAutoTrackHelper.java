package com.sensorsdata.analytics.android.sdk.aop.push;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPIEmptyImplementation;
import com.sensorsdata.analytics.android.sdk.push.core.PushProcess;
import com.sensorsdata.analytics.android.sdk.push.utils.PushUtils;
import com.sensorsdata.analytics.android.sdk.util.ReflectUtil;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class PushAutoTrackHelper {
    private static final String TAG = "SA.PushAutoTrackHelper";
    private static long lastPushClickTime;

    private static String getSFData(String str) {
        try {
            return new JSONObject(str).optString("sf_data");
        } catch (Exception unused) {
            SALog.i(TAG, "get sf_data failed");
            return null;
        }
    }

    private static void hookIntent(Intent intent) {
        if (isTrackPushEnabled()) {
            try {
                PushProcess.getInstance().hookIntent(intent);
                SALog.i(TAG, "hookIntent");
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void hookIntentGetActivity(Context context, int i, Intent intent, int i2) {
        hookIntent(intent);
    }

    public static void hookIntentGetActivityBundle(Context context, int i, Intent intent, int i2, Bundle bundle) {
        hookIntent(intent);
    }

    public static void hookIntentGetBroadcast(Context context, int i, Intent intent, int i2) {
        hookIntent(intent);
    }

    public static void hookIntentGetForegroundService(Context context, int i, Intent intent, int i2) {
        hookIntent(intent);
    }

    public static void hookIntentGetService(Context context, int i, Intent intent, int i2) {
        hookIntent(intent);
    }

    private static void hookPendingIntent(Intent intent, PendingIntent pendingIntent) {
        if (isTrackPushEnabled()) {
            try {
                PushProcess.getInstance().hookPendingIntent(intent, pendingIntent);
                SALog.i(TAG, "hookPendingIntent");
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void hookPendingIntentGetActivity(PendingIntent pendingIntent, Context context, int i, Intent intent, int i2) {
        hookPendingIntent(intent, pendingIntent);
    }

    public static void hookPendingIntentGetActivityBundle(PendingIntent pendingIntent, Context context, int i, Intent intent, int i2, Bundle bundle) {
        hookPendingIntent(intent, pendingIntent);
    }

    public static void hookPendingIntentGetBroadcast(PendingIntent pendingIntent, Context context, int i, Intent intent, int i2) {
        hookPendingIntent(intent, pendingIntent);
    }

    public static void hookPendingIntentGetForegroundService(PendingIntent pendingIntent, Context context, int i, Intent intent, int i2) {
        hookPendingIntent(intent, pendingIntent);
    }

    public static void hookPendingIntentGetService(PendingIntent pendingIntent, Context context, int i, Intent intent, int i2) {
        hookPendingIntent(intent, pendingIntent);
    }

    private static boolean isRepeatEvent() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        SALog.i(TAG, "currentTime: " + elapsedRealtime + ",lastPushClickTime: " + lastPushClickTime);
        if (elapsedRealtime - lastPushClickTime > 2000) {
            lastPushClickTime = elapsedRealtime;
            return false;
        }
        return true;
    }

    private static boolean isTrackPushEnabled() {
        SAConfigOptions configOptions;
        SAConfigOptions configOptions2;
        try {
            if (!(SensorsDataAPI.sharedInstance() instanceof SensorsDataAPIEmptyImplementation)) {
                configOptions = AbstractSensorsDataAPI.getConfigOptions();
                if (configOptions != null) {
                    configOptions2 = AbstractSensorsDataAPI.getConfigOptions();
                    if (configOptions2.isEnableTrackPush()) {
                        return true;
                    }
                }
            }
            SALog.i(TAG, "SDK or push disabled.");
            return false;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    public static void onBroadcastReceiver(BroadcastReceiver broadcastReceiver, Context context, Intent intent) {
        onBroadcastServiceIntent(intent);
    }

    private static void onBroadcastServiceIntent(Intent intent) {
        if (isTrackPushEnabled()) {
            try {
                PushProcess.getInstance().onNotificationClick(null, intent);
                SALog.i(TAG, "onBroadcastServiceIntent");
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void onGeTuiNotificationClicked(Object obj) {
        if (obj == null) {
            SALog.i(TAG, "gtNotificationMessage is null");
        } else if (isTrackPushEnabled()) {
            try {
                String str = (String) ReflectUtil.callMethod(obj, "getMessageId", new Object[0]);
                String str2 = (String) ReflectUtil.callMethod(obj, "getTitle", new Object[0]);
                String str3 = (String) ReflectUtil.callMethod(obj, "getContent", new Object[0]);
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    PushProcess.getInstance().trackGTClickDelayed(str, str2, str3);
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void onGeTuiReceiveMessageData(Object obj) {
        if (obj == null) {
            SALog.i(TAG, "gtNotificationMessage is null");
        } else if (isTrackPushEnabled()) {
            try {
                byte[] bArr = (byte[]) ReflectUtil.callMethod(obj, "getPayload", new Object[0]);
                String str = (String) ReflectUtil.callMethod(obj, "getMessageId", new Object[0]);
                if (bArr != null && !TextUtils.isEmpty(str)) {
                    PushProcess.getInstance().trackReceiveMessageData(new String(bArr), str);
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void onNewIntent(Object obj, Intent intent) {
        if (isTrackPushEnabled()) {
            try {
                if (obj instanceof Activity) {
                    PushProcess.getInstance().onNotificationClick((Activity) obj, intent);
                    SALog.i(TAG, "onNewIntent");
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void onNotify(NotificationManager notificationManager, String str, int i, Notification notification) {
        if (isTrackPushEnabled()) {
            try {
                PushProcess.getInstance().onNotify(str, i, notification);
                SALog.i(TAG, "onNotify");
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void onServiceStart(Service service, Intent intent, int i) {
        onBroadcastServiceIntent(intent);
    }

    public static void onServiceStartCommand(Service service, Intent intent, int i, int i2) {
        onBroadcastServiceIntent(intent);
    }

    public static void onUMengActivityMessage(Intent intent) {
        JSONObject jSONObject;
        JSONObject optJSONObject;
        if (intent == null) {
            SALog.i(TAG, "intent is null");
        } else if (isTrackPushEnabled()) {
            try {
                String stringExtra = intent.getStringExtra("body");
                if (!TextUtils.isEmpty(stringExtra) && (optJSONObject = (jSONObject = new JSONObject(stringExtra)).optJSONObject("body")) != null) {
                    String optString = jSONObject.optString("extra");
                    String optString2 = optJSONObject.optString(CampaignEx.JSON_KEY_TITLE);
                    String optString3 = optJSONObject.optString("text");
                    trackNotificationOpenedEvent(getSFData(optString), optString2, optString3, "UMeng", intent.getStringExtra("message_source"));
                    SALog.i(TAG, String.format("onUMengActivityMessage is called, title is %s, content is %s, extras is %s", optString2, optString3, optString));
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void onUMengNotificationClick(Object obj) {
        if (obj == null) {
            SALog.i(TAG, "UMessage is null");
        } else if (isTrackPushEnabled()) {
            try {
                JSONObject jSONObject = (JSONObject) ReflectUtil.callMethod(obj, "getRaw", new Object[0]);
                if (jSONObject == null) {
                    SALog.i(TAG, "onUMengNotificationClick:raw is null");
                    return;
                }
                JSONObject optJSONObject = jSONObject.optJSONObject("body");
                if (optJSONObject != null) {
                    String optString = jSONObject.optString("extra");
                    String optString2 = optJSONObject.optString(CampaignEx.JSON_KEY_TITLE);
                    String optString3 = optJSONObject.optString("text");
                    trackNotificationOpenedEvent(getSFData(optString), optString2, optString3, "UMeng", null);
                    SALog.i(TAG, String.format("onUMengNotificationClick is called, title is %s, content is %s, extras is %s", optString2, optString3, optString));
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void trackGeTuiNotificationClicked(String str, String str2, String str3, long j) {
        trackNotificationOpenedEvent(str3, str, str2, "GeTui", null, j);
    }

    public static void trackJPushAppOpenNotification(String str, String str2, String str3, String str4) {
        if (!isTrackPushEnabled()) {
            return;
        }
        SALog.i(TAG, String.format("trackJPushAppOpenNotification is called, title is %s, content is %s, extras is %s, appPushChannel is %s, appPushServiceName is %s", str2, str3, str, str4, "JPush"));
        trackNotificationOpenedEvent(getSFData(str), str2, str3, "JPush", str4);
    }

    public static void trackJPushOpenActivity(Intent intent) {
        String str;
        if (intent != null && isTrackPushEnabled()) {
            JSONObject jSONObject = null;
            if (intent.getData() != null) {
                str = intent.getData().toString();
            } else {
                str = null;
            }
            if (TextUtils.isEmpty(str) && intent.getExtras() != null) {
                str = intent.getExtras().getString("JMessageExtra");
            }
            SALog.i(TAG, "trackJPushOpenActivity is called, Intent data is " + str);
            try {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        jSONObject = new JSONObject(str);
                    } catch (Exception unused) {
                        SALog.i(TAG, "Failed to construct JSON");
                    }
                    if (jSONObject != null) {
                        String optString = jSONObject.optString("n_title");
                        String optString2 = jSONObject.optString("n_content");
                        String optString3 = jSONObject.optString("n_extras");
                        String jPushSDKName = PushUtils.getJPushSDKName((byte) jSONObject.optInt("rom_type"));
                        SALog.i(TAG, String.format("trackJPushOpenActivity is called, title is %s, content is %s, extras is %s, appPushChannel is %s", optString, optString2, optString3, jPushSDKName));
                        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && !TextUtils.isEmpty(jPushSDKName)) {
                            trackNotificationOpenedEvent(getSFData(optString3), optString, optString2, "JPush", jPushSDKName);
                        }
                    }
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void trackMeizuAppOpenNotification(String str, String str2, String str3, String str4) {
        JSONObject jSONObject;
        JSONObject optJSONObject;
        if (isTrackPushEnabled()) {
            SALog.i(TAG, String.format("trackMeizuAppOpenNotification is called, title is %s, content is %s, extras is %s, appPushChannel is %s, appPushServiceName is %s", str2, str3, str, "Meizu", str4));
            try {
                try {
                    try {
                        jSONObject = new JSONObject(str);
                    } catch (Exception unused) {
                        SALog.i(TAG, "Failed to construct JSON");
                        jSONObject = null;
                    }
                    if (jSONObject != null && jSONObject.has("JMessageExtra")) {
                        JSONObject optJSONObject2 = jSONObject.optJSONObject("JMessageExtra");
                        if (optJSONObject2 != null && (optJSONObject = optJSONObject2.optJSONObject("m_content")) != null) {
                            str = optJSONObject.optString("n_extras");
                        }
                        str4 = "JPush";
                    }
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
                trackNotificationOpenedEvent(getSFData(str), str2, str3, str4, "Meizu");
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    public static void trackNotificationOpenedEvent(String str, String str2, String str3, String str4, String str5) {
        trackNotificationOpenedEvent(str, str2, str3, str4, str5, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0106 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void trackNotificationOpenedEvent(java.lang.String r4, java.lang.String r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, long r9) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper.trackNotificationOpenedEvent(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, long):void");
    }

    public static void onNotify(NotificationManager notificationManager, int i, Notification notification) {
        if (isTrackPushEnabled()) {
            try {
                onNotify(notificationManager, null, i, notification);
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }
}
