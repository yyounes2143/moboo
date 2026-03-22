package com.sensorsdata.analytics.android.sdk.core.business.instantevent;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class InstantEventUtils {
    private static boolean instanceEventType(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!str.equals(EventType.TRACK.getEventType()) && !str.equals(EventType.TRACK_SIGNUP.getEventType()) && !str.equals(EventType.TRACK_ID_BIND.getEventType()) && !str.equals(EventType.TRACK_ID_UNBIND.getEventType())) {
            return false;
        }
        return true;
    }

    public static boolean isInstantEvent(InputData inputData) {
        SAConfigOptions configOptions;
        if (inputData == null) {
            return false;
        }
        try {
            if (TextUtils.isEmpty(inputData.getExtras())) {
                configOptions = AbstractSensorsDataAPI.getConfigOptions();
                List instantEvents = configOptions.getInstantEvents();
                if (inputData.getEventType() == null) {
                    return false;
                }
                if (inputData.getEventType().isTrack() && !TextUtils.isEmpty(inputData.getEventName()) && instantEvents != null && instantEvents.contains(inputData.getEventName())) {
                    return true;
                }
            } else {
                JSONObject jSONObject = new JSONObject(inputData.getExtras());
                String optString = jSONObject.optString("type", "");
                boolean optBoolean = jSONObject.optBoolean(DbParams.KEY_IS_INSTANT_EVENT, false);
                if (instanceEventType(optString) && optBoolean) {
                    return true;
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        return false;
    }

    public static int isInstantEvent(JSONObject jSONObject) {
        SAConfigOptions configOptions;
        try {
            if (jSONObject.optBoolean("_hybrid_h5", false)) {
                boolean optBoolean = jSONObject.optBoolean(DbParams.KEY_IS_INSTANT_EVENT, false);
                String optString = jSONObject.optString("type", "");
                jSONObject.remove(DbParams.KEY_IS_INSTANT_EVENT);
                if (instanceEventType(optString) && optBoolean) {
                    return 1;
                }
            } else {
                String optString2 = jSONObject.optString("type", "");
                String optString3 = jSONObject.optString("event", "");
                configOptions = AbstractSensorsDataAPI.getConfigOptions();
                List instantEvents = configOptions.getInstantEvents();
                if (instanceEventType(optString2) && !TextUtils.isEmpty(optString3) && instantEvents != null && instantEvents.contains(optString3)) {
                    return 1;
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        return 0;
    }
}
