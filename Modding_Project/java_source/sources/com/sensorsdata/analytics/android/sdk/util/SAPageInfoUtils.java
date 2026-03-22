package com.sensorsdata.analytics.android.sdk.util;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.ScreenAutoTracker;
import com.sensorsdata.analytics.android.sdk.SensorsDataFragmentTitle;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAPageInfoUtils {
    public static final String SCREEN_NAME = "$screen_name";
    public static final String TITLE = "$title";

    public static JSONObject getActivityPageInfo(Activity activity) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("$screen_name", activity.getClass().getCanonicalName());
            String activityTitle = SensorsDataUtils.getActivityTitle(activity);
            if (!TextUtils.isEmpty(activityTitle)) {
                jSONObject.put("$title", activityTitle);
            }
            if (activity instanceof ScreenAutoTracker) {
                JSONUtils.mergeJSONObject(((ScreenAutoTracker) activity).getTrackProperties(), jSONObject);
            }
            return jSONObject;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return new JSONObject();
        }
    }

    public static JSONObject getFragmentPageInfo(Activity activity, Object obj) {
        String str;
        SensorsDataFragmentTitle sensorsDataFragmentTitle;
        JSONObject trackProperties;
        JSONObject jSONObject = new JSONObject();
        try {
            String str2 = null;
            if ((obj instanceof ScreenAutoTracker) && (trackProperties = ((ScreenAutoTracker) obj).getTrackProperties()) != null) {
                if (trackProperties.has("$screen_name")) {
                    str = trackProperties.optString("$screen_name");
                } else {
                    str = null;
                }
                if (trackProperties.has("$title")) {
                    str2 = trackProperties.optString("$title");
                }
                JSONUtils.mergeJSONObject(trackProperties, jSONObject);
            } else {
                str = null;
            }
            boolean isEmpty = TextUtils.isEmpty(str2);
            boolean isEmpty2 = TextUtils.isEmpty(str);
            if (isEmpty && obj.getClass().isAnnotationPresent(SensorsDataFragmentTitle.class) && (sensorsDataFragmentTitle = (SensorsDataFragmentTitle) obj.getClass().getAnnotation(SensorsDataFragmentTitle.class)) != null) {
                str2 = sensorsDataFragmentTitle.title();
            }
            boolean isEmpty3 = TextUtils.isEmpty(str2);
            if (isEmpty3 || isEmpty2) {
                if (activity == null) {
                    activity = SAFragmentUtils.getActivityFromFragment(obj);
                }
                if (activity != null) {
                    if (isEmpty3) {
                        str2 = SensorsDataUtils.getActivityTitle(activity);
                    }
                    if (isEmpty2) {
                        str = String.format(TimeUtils.SDK_LOCALE, "%s|%s", activity.getClass().getCanonicalName(), obj.getClass().getCanonicalName());
                    }
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("$title", str2);
            }
            if (TextUtils.isEmpty(str)) {
                str = obj.getClass().getCanonicalName();
            }
            jSONObject.put("$screen_name", str);
            return jSONObject;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return jSONObject;
        }
    }

    public static JSONObject getRNPageInfo() {
        return getRNPageInfo(null);
    }

    public static JSONObject getRNPageInfo(View view) {
        Object tag;
        try {
            String str = (String) ReflectUtil.callStaticMethod(ReflectUtil.getCurrentClass(new String[]{"com.sensorsdata.analytics.utils.RNViewUtils"}), "getVisualizeProperties", new Object[0]);
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                if (view == null || !jSONObject.optBoolean("isSetRNViewTag", false) || ((tag = view.getTag(R.id.sensors_analytics_tag_view_rn_key)) != null && ((Boolean) tag).booleanValue())) {
                    String optString = jSONObject.optString("$screen_name");
                    String optString2 = jSONObject.optString("$title");
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("$screen_name", optString);
                    jSONObject2.put("$title", optString2);
                    return jSONObject2;
                }
                return null;
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        return null;
    }
}
