package com.sensorsdata.analytics.android.sdk.visual;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.autotrack.core.beans.AutoTrackConstants;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.listener.SAEventListener;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.ThreadUtils;
import com.sensorsdata.analytics.android.sdk.visual.constant.VisualConstants;
import com.sensorsdata.analytics.android.sdk.visual.model.VisualConfig;
import com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager;
import java.util.List;
import java.util.concurrent.ExecutorService;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class VisualDebugHelper {
    private static final String TAG = "SA.VP.VisualDebugHelper";
    private JSONArray mJsonArray;
    private TrackEventAdapter mEventListener = null;
    private final Object object = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handlerEvent(JSONObject jSONObject) {
        JSONArray jSONArray;
        if (jSONObject == null) {
            return;
        }
        try {
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        if (!VisualizedAutoTrackService.getInstance().isServiceRunning()) {
            return;
        }
        String optString = jSONObject.optString("event");
        if (!TextUtils.equals("$AppClick", optString) && !TextUtils.equals(VisualConstants.WEB_CLICK_EVENT_NAME, optString)) {
            SALog.i(TAG, "eventName is " + optString + " filter");
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject(SAPropertyFilter.PROPERTIES);
        if (optJSONObject == null) {
            return;
        }
        if (!VisualPropertiesManager.getInstance().checkAppIdAndProject()) {
            return;
        }
        VisualConfig visualConfig = VisualPropertiesManager.getInstance().getVisualConfig();
        if (visualConfig == null) {
            return;
        }
        List<VisualConfig.VisualPropertiesConfig> list = visualConfig.events;
        if (list != null && list.size() != 0) {
            if (TextUtils.equals("$AppClick", optString)) {
                String optString2 = optJSONObject.optString("$screen_name");
                if (TextUtils.isEmpty(optString2)) {
                    SALog.i(TAG, "screenName is empty ");
                    return;
                }
                List<VisualConfig.VisualPropertiesConfig> matchEventConfigList = VisualPropertiesManager.getInstance().getMatchEventConfigList(list, VisualPropertiesManager.VisualEventType.getVisualEventType(optString), optString2, optJSONObject.optString(VisualConstants.ELEMENT_PATH), optJSONObject.optString(VisualConstants.ELEMENT_POSITION), optJSONObject.optString(AutoTrackConstants.ELEMENT_CONTENT));
                if (matchEventConfigList.size() > 0) {
                    synchronized (this.object) {
                        try {
                        } catch (Exception e2) {
                            SALog.printStackTrace(e2);
                        } finally {
                        }
                        for (VisualConfig.VisualPropertiesConfig visualPropertiesConfig : matchEventConfigList) {
                            JSONObject jSONObject2 = new JSONObject();
                            JSONUtils.mergeJSONObject(jSONObject, jSONObject2);
                            jSONObject2.put(DbParams.KEY_CHANNEL_EVENT_NAME, visualPropertiesConfig.eventName);
                            if (this.mJsonArray == null) {
                                this.mJsonArray = new JSONArray();
                            }
                            this.mJsonArray.put(jSONObject2);
                        }
                    }
                }
            } else if (TextUtils.equals(VisualConstants.WEB_CLICK_EVENT_NAME, optString)) {
                try {
                    JSONArray optJSONArray = optJSONObject.optJSONArray("sensorsdata_web_visual_eventName");
                    if (optJSONArray == null) {
                        int hashCode = jSONObject.hashCode();
                        jSONArray = VisualPropertiesManager.getInstance().getVisualPropertiesH5Helper().getEventName(hashCode);
                        VisualPropertiesManager.getInstance().getVisualPropertiesH5Helper().clearCache(hashCode);
                    } else {
                        jSONArray = optJSONArray;
                    }
                    if (jSONArray != null && jSONArray.length() > 0) {
                        synchronized (this.object) {
                            for (int i = 0; i < jSONArray.length(); i++) {
                                try {
                                    JSONObject jSONObject3 = new JSONObject();
                                    JSONUtils.mergeJSONObject(jSONObject, jSONObject3);
                                    jSONObject3.put(DbParams.KEY_CHANNEL_EVENT_NAME, jSONArray.optString(i));
                                    if (this.mJsonArray == null) {
                                        this.mJsonArray = new JSONArray();
                                    }
                                    this.mJsonArray.put(jSONObject3);
                                } catch (Exception e3) {
                                    SALog.printStackTrace(e3);
                                } finally {
                                }
                            }
                        }
                    }
                } catch (Exception e4) {
                    SALog.printStackTrace(e4);
                }
            }
            return;
        }
        SALog.i(TAG, "propertiesConfigs is empty ");
    }

    public String getDebugInfo() {
        synchronized (this.object) {
            try {
                JSONArray jSONArray = this.mJsonArray;
                if (jSONArray == null) {
                    return null;
                }
                String jSONArray2 = jSONArray.toString();
                this.mJsonArray = null;
                return jSONArray2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void startMonitor() {
        try {
            if (this.mEventListener == null) {
                final ExecutorService singlePool = ThreadUtils.getSinglePool();
                this.mEventListener = new TrackEventAdapter() { // from class: com.sensorsdata.analytics.android.sdk.visual.VisualDebugHelper.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super();
                    }

                    @Override // com.sensorsdata.analytics.android.sdk.listener.SAEventListener
                    public void trackEvent(final JSONObject jSONObject) {
                        singlePool.execute(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.visual.VisualDebugHelper.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                VisualDebugHelper.this.handlerEvent(jSONObject);
                            }
                        });
                    }
                };
            }
            SensorsDataAPI.sharedInstance().addEventListener(this.mEventListener);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void stopMonitor() {
        try {
            if (this.mEventListener != null) {
                SensorsDataAPI.sharedInstance().removeEventListener(this.mEventListener);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static abstract class TrackEventAdapter implements SAEventListener {
        private TrackEventAdapter() {
        }

        @Override // com.sensorsdata.analytics.android.sdk.listener.SAEventListener
        public void identify() {
        }

        @Override // com.sensorsdata.analytics.android.sdk.listener.SAEventListener
        public void login() {
        }

        @Override // com.sensorsdata.analytics.android.sdk.listener.SAEventListener
        public void logout() {
        }

        @Override // com.sensorsdata.analytics.android.sdk.listener.SAEventListener
        public void resetAnonymousId() {
        }
    }
}
