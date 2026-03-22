package com.sensorsdata.analytics.android.autotrack.core.pageleave;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.autotrack.core.business.SAPageTools;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.exceptions.SensorsDataExceptionHandler;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.monitor.SensorsDataActivityLifecycleCallbacks;
import com.sensorsdata.analytics.android.sdk.util.SAPageInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ActivityPageLeaveCallbacks implements SensorsDataActivityLifecycleCallbacks.SAActivityLifecycleCallbacks, SensorsDataExceptionHandler.SAExceptionListener {
    private static final String START_TIME = "sa_start_time";
    private List<Class<?>> mIgnoreList;
    private final boolean mIsEmpty;
    private final HashMap<Integer, JSONObject> mResumedActivities = new HashMap<>();
    private final String DIALOG_ACTIVITY = "com.sensorsdata.sf.ui.view.DialogActivity";

    public ActivityPageLeaveCallbacks(List<Class<?>> list) {
        if (list != null && !list.isEmpty()) {
            this.mIgnoreList = list;
            this.mIsEmpty = false;
            return;
        }
        this.mIsEmpty = true;
    }

    private boolean ignorePage(Object obj) {
        if (!this.mIsEmpty) {
            return this.mIgnoreList.contains(obj.getClass());
        }
        return false;
    }

    private void trackActivityStart(Activity activity) {
        try {
            if (!"com.sensorsdata.sf.ui.view.DialogActivity".equals(activity.getClass().getCanonicalName())) {
                JSONObject activityPageInfo = SAPageInfoUtils.getActivityPageInfo(activity);
                String screenUrl = SAPageTools.getScreenUrl(activity);
                activityPageInfo.put("$url", screenUrl);
                if (SensorsDataAPI.sharedInstance().isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_VIEW_SCREEN)) {
                    SAPageTools.setCurrentScreenUrl(screenUrl);
                }
                String referrer = SAPageTools.getReferrer();
                if (!activityPageInfo.has("$referrer") && !TextUtils.isEmpty(referrer)) {
                    activityPageInfo.put("$referrer", referrer);
                }
                activityPageInfo.put(START_TIME, SystemClock.elapsedRealtime());
                this.mResumedActivities.put(Integer.valueOf(activity.hashCode()), activityPageInfo);
            }
        } catch (JSONException e) {
            SALog.printStackTrace(e);
        }
    }

    private void trackAppPageLeave(final JSONObject jSONObject) {
        try {
            long optLong = jSONObject.optLong(START_TIME);
            jSONObject.remove(START_TIME);
            Float duration = TimeUtils.duration(optLong, SystemClock.elapsedRealtime());
            if (duration.floatValue() >= 0.05d) {
                jSONObject.put("event_duration", duration);
                SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.pageleave.ActivityPageLeaveCallbacks.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SensorsDataAPI.sharedInstance().getSAContextManager().trackEvent(new InputData().setEventName("$AppPageLeave").setProperties(jSONObject).setEventType(EventType.TRACK));
                    }
                });
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        String optString;
        long optLong;
        try {
            int hashCode = activity.hashCode();
            if (this.mResumedActivities.containsKey(Integer.valueOf(hashCode))) {
                JSONObject jSONObject = this.mResumedActivities.get(Integer.valueOf(hashCode));
                if (jSONObject == null) {
                    optString = "";
                } else {
                    optString = jSONObject.optString("$referrer");
                }
                if (jSONObject == null) {
                    optLong = 0;
                } else {
                    optLong = jSONObject.optLong(START_TIME);
                }
                JSONObject activityPageInfo = SAPageInfoUtils.getActivityPageInfo(activity);
                activityPageInfo.put(START_TIME, optLong);
                activityPageInfo.put("$url", SAPageTools.getScreenUrl(activity));
                if (!TextUtils.isEmpty(optString)) {
                    activityPageInfo.put("$referrer", optString);
                }
                trackAppPageLeave(activityPageInfo);
                this.mResumedActivities.remove(Integer.valueOf(hashCode));
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (!ignorePage(activity)) {
            trackActivityStart(activity);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.exceptions.SensorsDataExceptionHandler.SAExceptionListener
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            Iterator<Integer> it = this.mResumedActivities.keySet().iterator();
            while (it.hasNext()) {
                Integer next = it.next();
                next.intValue();
                JSONObject jSONObject = this.mResumedActivities.get(next);
                if (jSONObject != null) {
                    trackAppPageLeave(jSONObject);
                    it.remove();
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.monitor.SensorsDataActivityLifecycleCallbacks.SAActivityLifecycleCallbacks
    public void onNewIntent(Intent intent) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
