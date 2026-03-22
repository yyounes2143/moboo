package com.sensorsdata.analytics.android.sdk.core.business.session;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SessionRelatedManager {
    private static volatile SessionRelatedManager mSessionRelatedManager;
    private long mLastEventTime;
    private String mSessionID;
    private long mStartTime;
    private final String SHARED_PREF_SESSION_CUTDATA = "sensorsdata.session.cutdata";
    public final String EVENT_SESSION_ID = "$event_session_id";
    private final String KEY_SESSION_ID = "sessionID";
    private final String KEY_START_TIME = "startTime";
    private final String KEY_LAST_EVENT_TIME = "lastEventTime";
    private long SESSION_LAST_INTERVAL_TIME = 300000;
    private final long SESSION_START_INTERVAL_TIME = 43200000;

    private SessionRelatedManager() {
        SAConfigOptions configOptions;
        SAConfigOptions configOptions2;
        try {
            configOptions = AbstractSensorsDataAPI.getConfigOptions();
            setSessionLastIntervalTime(configOptions.getEventSessionTimeout());
            configOptions2 = AbstractSensorsDataAPI.getConfigOptions();
            if (!configOptions2.isEnableSession()) {
                deleteSessionData();
            } else {
                readSessionData();
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    private synchronized void createSessionData(long j, boolean z) {
        try {
            this.mSessionID = UUID.randomUUID().toString();
            if (z) {
                this.mStartTime = j;
            }
            this.mLastEventTime = Math.max(j, this.mLastEventTime);
            SAStoreManager.getInstance().setString("sensorsdata.session.cutdata", getSessionDataPack());
        } catch (Throwable th) {
            throw th;
        }
    }

    private void deleteSessionData() {
        this.mSessionID = null;
        this.mStartTime = -1L;
        this.mLastEventTime = -1L;
        SAStoreManager.getInstance().remove("sensorsdata.session.cutdata");
    }

    public static SessionRelatedManager getInstance() {
        if (mSessionRelatedManager == null) {
            synchronized (SessionRelatedManager.class) {
                try {
                    if (mSessionRelatedManager == null) {
                        mSessionRelatedManager = new SessionRelatedManager();
                    }
                } finally {
                }
            }
        }
        return mSessionRelatedManager;
    }

    private String getSessionDataPack() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sessionID", this.mSessionID);
            jSONObject.put("startTime", this.mStartTime);
            jSONObject.put("lastEventTime", this.mLastEventTime);
            return jSONObject.toString();
        } catch (JSONException e) {
            SALog.printStackTrace(e);
            return "";
        }
    }

    private synchronized void handleSessionState(long j) {
        if (j <= 0) {
            return;
        }
        try {
            if (!TextUtils.isEmpty(this.mSessionID) && j - this.mLastEventTime <= this.SESSION_LAST_INTERVAL_TIME && j - this.mStartTime <= 43200000) {
                updateSessionLastTime(j);
            }
            createSessionData(j, true);
        } catch (Throwable th) {
            throw th;
        }
    }

    private void readSessionData() {
        String string = SAStoreManager.getInstance().getString("sensorsdata.session.cutdata", "");
        if (!TextUtils.isEmpty(string)) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                if (jSONObject.has("sessionID")) {
                    this.mSessionID = jSONObject.optString("sessionID");
                }
                if (jSONObject.has("startTime")) {
                    this.mStartTime = jSONObject.optLong("startTime");
                }
                if (jSONObject.has("lastEventTime")) {
                    this.mLastEventTime = jSONObject.optLong("lastEventTime");
                }
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }
    }

    private void setSessionLastIntervalTime(int i) {
        if (i > 0) {
            this.SESSION_LAST_INTERVAL_TIME = i * 1000;
        }
    }

    private void updateSessionLastTime(long j) {
        this.mLastEventTime = j;
        SAStoreManager.getInstance().setString("sensorsdata.session.cutdata", getSessionDataPack());
    }

    public String getSessionID() {
        return this.mSessionID;
    }

    public void handleEventOfSession(String str, JSONObject jSONObject, long j) {
        SAConfigOptions configOptions;
        configOptions = AbstractSensorsDataAPI.getConfigOptions();
        if (configOptions.isEnableSession()) {
            try {
                if ("$AppEnd".equals(str)) {
                    if (j > this.mLastEventTime) {
                        this.mLastEventTime = j;
                        return;
                    }
                    return;
                }
                handleSessionState(j);
                jSONObject.put("$event_session_id", this.mSessionID);
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public void refreshSessionByTimer(long j) {
        if (j - this.mLastEventTime > this.SESSION_LAST_INTERVAL_TIME) {
            createSessionData(j, TextUtils.isEmpty(this.mSessionID));
        }
    }
}
