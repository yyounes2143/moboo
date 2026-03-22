package com.sensorsdata.analytics.android.autotrack.core.pageleave;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.exceptions.SensorsDataExceptionHandler;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.util.Dispatcher;
import com.sensorsdata.analytics.android.sdk.util.SAFragmentUtils;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FragmentPageLeaveCallbacks implements SAFragmentLifecycleCallbacks, SensorsDataExceptionHandler.SAExceptionListener {
    private static final String START_TIME = "sa_start_time";
    private List<Class<?>> mIgnoreList;
    private final boolean mIsEmpty;
    private final HashMap<Integer, JSONObject> mResumedFragments = new HashMap<>();

    public FragmentPageLeaveCallbacks(List<Class<?>> list) {
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

    private void trackAppPageLeave(Object obj) {
        try {
            int hashCode = obj.hashCode();
            if (this.mResumedFragments.containsKey(Integer.valueOf(hashCode))) {
                this.mResumedFragments.remove(Integer.valueOf(hashCode));
                trackPageLeaveEvent(this.mResumedFragments.get(Integer.valueOf(hashCode)));
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    private void trackFragmentStart(final Object obj) {
        Dispatcher.getInstance().postDelayed(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.pageleave.FragmentPageLeaveCallbacks.1
            /* JADX WARN: Removed duplicated region for block: B:12:0x003f A[Catch: JSONException -> 0x0030, TryCatch #0 {JSONException -> 0x0030, blocks: (B:2:0x0000, B:4:0x0025, B:10:0x0035, B:12:0x003f, B:13:0x0044, B:9:0x0032), top: B:17:0x0000 }] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r4 = this;
                    org.json.JSONObject r0 = new org.json.JSONObject     // Catch: org.json.JSONException -> L30
                    r0.<init>()     // Catch: org.json.JSONException -> L30
                    java.lang.String r1 = "sa_start_time"
                    long r2 = android.os.SystemClock.elapsedRealtime()     // Catch: org.json.JSONException -> L30
                    r0.put(r1, r2)     // Catch: org.json.JSONException -> L30
                    java.lang.Object r1 = r2     // Catch: org.json.JSONException -> L30
                    java.lang.String r1 = com.sensorsdata.analytics.android.autotrack.core.business.SAPageTools.getScreenUrl(r1)     // Catch: org.json.JSONException -> L30
                    java.lang.String r2 = "$url"
                    r0.put(r2, r1)     // Catch: org.json.JSONException -> L30
                    com.sensorsdata.analytics.android.sdk.SensorsDataAPI r2 = com.sensorsdata.analytics.android.sdk.SensorsDataAPI.sharedInstance()     // Catch: org.json.JSONException -> L30
                    com.sensorsdata.analytics.android.sdk.SensorsDataAPI$AutoTrackEventType r3 = com.sensorsdata.analytics.android.sdk.SensorsDataAPI.AutoTrackEventType.APP_VIEW_SCREEN     // Catch: org.json.JSONException -> L30
                    boolean r2 = r2.isAutoTrackEventTypeIgnored(r3)     // Catch: org.json.JSONException -> L30
                    if (r2 != 0) goto L32
                    com.sensorsdata.analytics.android.sdk.SensorsDataAPI r2 = com.sensorsdata.analytics.android.sdk.SensorsDataAPI.sharedInstance()     // Catch: org.json.JSONException -> L30
                    boolean r2 = r2.isTrackFragmentAppViewScreenEnabled()     // Catch: org.json.JSONException -> L30
                    if (r2 != 0) goto L35
                    goto L32
                L30:
                    r0 = move-exception
                    goto L81
                L32:
                    com.sensorsdata.analytics.android.autotrack.core.business.SAPageTools.setCurrentScreenUrl(r1)     // Catch: org.json.JSONException -> L30
                L35:
                    java.lang.String r1 = com.sensorsdata.analytics.android.autotrack.core.business.SAPageTools.getReferrer()     // Catch: org.json.JSONException -> L30
                    boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: org.json.JSONException -> L30
                    if (r2 != 0) goto L44
                    java.lang.String r2 = "$referrer"
                    r0.put(r2, r1)     // Catch: org.json.JSONException -> L30
                L44:
                    java.lang.String r1 = "$referrer_title"
                    java.lang.String r2 = com.sensorsdata.analytics.android.autotrack.core.business.SAPageTools.getReferrerTitle()     // Catch: org.json.JSONException -> L30
                    r0.put(r1, r2)     // Catch: org.json.JSONException -> L30
                    java.lang.Object r1 = r2     // Catch: org.json.JSONException -> L30
                    r2 = 0
                    org.json.JSONObject r1 = com.sensorsdata.analytics.android.sdk.util.SAPageInfoUtils.getFragmentPageInfo(r2, r1)     // Catch: org.json.JSONException -> L30
                    com.sensorsdata.analytics.android.sdk.util.JSONUtils.mergeJSONObject(r1, r0)     // Catch: org.json.JSONException -> L30
                    java.lang.String r1 = "SA.FragmentPageLeave"
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: org.json.JSONException -> L30
                    r2.<init>()     // Catch: org.json.JSONException -> L30
                    java.lang.String r3 = "trackFragmentStart = "
                    r2.append(r3)     // Catch: org.json.JSONException -> L30
                    r2.append(r0)     // Catch: org.json.JSONException -> L30
                    java.lang.String r2 = r2.toString()     // Catch: org.json.JSONException -> L30
                    com.sensorsdata.analytics.android.sdk.SALog.i(r1, r2)     // Catch: org.json.JSONException -> L30
                    com.sensorsdata.analytics.android.autotrack.core.pageleave.FragmentPageLeaveCallbacks r1 = com.sensorsdata.analytics.android.autotrack.core.pageleave.FragmentPageLeaveCallbacks.this     // Catch: org.json.JSONException -> L30
                    java.util.HashMap r1 = com.sensorsdata.analytics.android.autotrack.core.pageleave.FragmentPageLeaveCallbacks.access$000(r1)     // Catch: org.json.JSONException -> L30
                    java.lang.Object r2 = r2     // Catch: org.json.JSONException -> L30
                    int r2 = r2.hashCode()     // Catch: org.json.JSONException -> L30
                    java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: org.json.JSONException -> L30
                    r1.put(r2, r0)     // Catch: org.json.JSONException -> L30
                    return
                L81:
                    com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r0)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.autotrack.core.pageleave.FragmentPageLeaveCallbacks.AnonymousClass1.run():void");
            }
        }, 300L);
    }

    private void trackPageLeaveEvent(final JSONObject jSONObject) {
        try {
            long optLong = jSONObject.optLong(START_TIME);
            jSONObject.remove(START_TIME);
            Float duration = TimeUtils.duration(optLong, SystemClock.elapsedRealtime());
            if (duration.floatValue() >= 0.05d) {
                jSONObject.put("event_duration", duration);
                SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.pageleave.FragmentPageLeaveCallbacks.2
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

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onHiddenChanged(Object obj, boolean z) {
        if (!ignorePage(obj)) {
            if (SAFragmentUtils.isFragmentVisible(obj)) {
                trackFragmentStart(obj);
            } else {
                trackAppPageLeave(obj);
            }
        }
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onPause(Object obj) {
        try {
            if (this.mResumedFragments.containsKey(Integer.valueOf(obj.hashCode()))) {
                trackAppPageLeave(obj);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onResume(Object obj) {
        if (!ignorePage(obj) && SAFragmentUtils.isFragmentVisible(obj)) {
            trackFragmentStart(obj);
        }
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void setUserVisibleHint(Object obj, boolean z) {
        if (!ignorePage(obj)) {
            if (SAFragmentUtils.isFragmentVisible(obj)) {
                trackFragmentStart(obj);
            } else {
                trackAppPageLeave(obj);
            }
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.exceptions.SensorsDataExceptionHandler.SAExceptionListener
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            Iterator<Integer> it = this.mResumedFragments.keySet().iterator();
            while (it.hasNext()) {
                Integer next = it.next();
                next.intValue();
                JSONObject jSONObject = this.mResumedFragments.get(next);
                if (jSONObject != null) {
                    trackPageLeaveEvent(jSONObject);
                    it.remove();
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onCreate(Object obj) {
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onStart(Object obj) {
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onStop(Object obj) {
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onViewCreated(Object obj, View view, Bundle bundle) {
    }
}
