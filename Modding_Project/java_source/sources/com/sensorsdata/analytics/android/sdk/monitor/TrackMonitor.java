package com.sensorsdata.analytics.android.sdk.monitor;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.listener.SAFunctionListener;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TrackMonitor {
    private JSONObject cacheData;
    private List<SAFunctionListener> mFunctionListener;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class SingletonHolder {
        private static final TrackMonitor INSTANCE = new TrackMonitor();

        private SingletonHolder() {
        }
    }

    private void call(String str, JSONObject jSONObject) {
        List<SAFunctionListener> list;
        if (!TextUtils.isEmpty(str) && (list = this.mFunctionListener) != null) {
            for (SAFunctionListener sAFunctionListener : list) {
                sAFunctionListener.call(str, jSONObject);
            }
        }
    }

    public static TrackMonitor getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public void addFunctionListener(SAFunctionListener sAFunctionListener) {
        try {
            if (this.mFunctionListener == null) {
                this.mFunctionListener = new ArrayList();
            }
            if (sAFunctionListener != null && !this.mFunctionListener.contains(sAFunctionListener)) {
                this.mFunctionListener.add(sAFunctionListener);
            }
            JSONObject jSONObject = this.cacheData;
            if (jSONObject != null) {
                call("trackEvent", jSONObject);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void callEnableDataCollect() {
        call("enableDataCollect", null);
    }

    public void callIdentify(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("distinctId", str);
            call("identify", jSONObject);
        } catch (JSONException e) {
            SALog.printStackTrace(e);
        }
    }

    public void callLogin(String str) {
        if (this.mFunctionListener != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("distinctId", str);
                call("login", jSONObject);
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public void callLogout() {
        call("logout", null);
    }

    public void callResetAnonymousId(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("distinctId", str);
            call("resetAnonymousId", jSONObject);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void callTrack(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("eventJSON", jSONObject);
            if ("$AppStart".equals(jSONObject.optString("event")) && this.mFunctionListener == null) {
                this.cacheData = jSONObject2;
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.monitor.TrackMonitor.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TrackMonitor.this.cacheData = null;
                    }
                }, 2000L);
                return;
            }
            call("trackEvent", jSONObject2);
        } catch (JSONException e) {
            SALog.printStackTrace(e);
        }
    }

    public void removeFunctionListener(SAFunctionListener sAFunctionListener) {
        List<SAFunctionListener> list = this.mFunctionListener;
        if (list != null && sAFunctionListener != null) {
            list.remove(sAFunctionListener);
        }
    }

    private TrackMonitor() {
    }
}
