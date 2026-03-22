package com.sensorsdata.analytics.android.autotrack.core.autotrack;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.autotrack.core.business.SAPageTools;
import com.sensorsdata.analytics.android.autotrack.utils.AopUtil;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.ScreenAutoTracker;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.business.session.SessionRelatedManager;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.eventbus.SAEventBus;
import com.sensorsdata.analytics.android.sdk.core.eventbus.SAEventBusConstants;
import com.sensorsdata.analytics.android.sdk.core.eventbus.Subscription;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoader;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils;
import com.sensorsdata.analytics.android.sdk.exceptions.SensorsDataExceptionHandler;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.monitor.SensorsDataActivityLifecycleCallbacks;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ActivityLifecycleCallbacks implements SensorsDataActivityLifecycleCallbacks.SAActivityLifecycleCallbacks, SensorsDataExceptionHandler.SAExceptionListener {
    private static final String EVENT_DURATION = "event_duration";
    private static final String EVENT_TIME = "event_time";
    private static final String TAG = "SA.ActivityLifecycleCallbacks";
    private static final int TIME_INTERVAL = 2000;
    private final SAContextManager mContextManager;
    private Handler mHandler;
    private final SensorsDataAPI mSensorsDataInstance;
    private int mStartActivityCount;
    private long mStartTime;
    private int mStartTimerCount;
    private boolean resumeFromBackground = false;
    private JSONObject activityProperty = new JSONObject();
    private final JSONObject endDataProperty = new JSONObject();
    private JSONObject mDeepLinkProperty = new JSONObject();
    private final String APP_START_TIME = DbParams.TABLE_APP_START_TIME;
    private final String APP_END_DATA = DbParams.PersistentName.APP_END_DATA;
    private final String APP_RESET_STATE = "app_reset_state";
    private final String TIME = "time";
    private final String ELAPSE_TIME = "elapse_time";
    private long messageReceiveTime = 0;
    private final int MESSAGE_CODE_APP_END = 0;
    private final int MESSAGE_CODE_START = 100;
    private final int MESSAGE_CODE_STOP = 200;
    private final int MESSAGE_CODE_TIMER = 300;
    private final Set<Integer> hashSet = new HashSet();
    private final DbAdapter mDbAdapter = DbAdapter.getInstance();

    public ActivityLifecycleCallbacks(SAContextManager sAContextManager) {
        this.mSensorsDataInstance = sAContextManager.getSensorsDataAPI();
        this.mContextManager = sAContextManager;
        initHandler();
        registerAdvertObserver();
    }

    private void buildScreenProperties(Activity activity) {
        JSONObject buildTitleNoAutoTrackerProperties = AopUtil.buildTitleNoAutoTrackerProperties(activity);
        this.activityProperty = buildTitleNoAutoTrackerProperties;
        JSONUtils.mergeJSONObject(buildTitleNoAutoTrackerProperties, this.endDataProperty);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void generateAppEndData(long j, long j2) {
        SAConfigOptions configOptions;
        try {
            if (this.mStartTime == 0) {
                this.mStartTime = DbAdapter.getInstance().getAppStartTime();
            }
            this.endDataProperty.put(EVENT_DURATION, TimeUtils.duration(this.mStartTime, j2));
            this.endDataProperty.put(DbParams.TABLE_APP_START_TIME, this.mStartTime);
            long j3 = j + 2000;
            this.endDataProperty.put(EVENT_TIME, j3);
            configOptions = AbstractSensorsDataAPI.getConfigOptions();
            if (configOptions.isEnableSession()) {
                SessionRelatedManager.getInstance().refreshSessionByTimer(j3);
                JSONObject jSONObject = this.endDataProperty;
                SessionRelatedManager.getInstance().getClass();
                jSONObject.put("$event_session_id", SessionRelatedManager.getInstance().getSessionID());
            }
            this.endDataProperty.put("$app_version", AppInfoUtils.getAppVersionName(this.mContextManager.getContext()));
            this.endDataProperty.put("$lib_version", SensorsDataAPI.sharedInstance().getSDKVersion());
            if (!this.endDataProperty.has("$is_first_day")) {
                this.endDataProperty.put("$is_first_day", this.mContextManager.isFirstDay(System.currentTimeMillis()));
            }
            this.mDbAdapter.commitAppExitData(this.endDataProperty.toString());
        } catch (Throwable th) {
            SALog.i(TAG, th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStartedMessage(Message message) {
        SAConfigOptions configOptions;
        try {
            int activityCount = this.mDbAdapter.getActivityCount();
            DbAdapter dbAdapter = this.mDbAdapter;
            int i = activityCount + 1;
            this.mStartActivityCount = i;
            dbAdapter.commitActivityCount(i);
            if (this.mStartActivityCount == 1) {
                configOptions = AbstractSensorsDataAPI.getConfigOptions();
                if (configOptions.isSaveDeepLinkInfo()) {
                    JSONUtils.mergeJSONObject((JSONObject) SAModuleManager.getInstance().invokeModuleFunction(Modules.Advert.MODULE_NAME, Modules.Advert.METHOD_GET_LATEST_UTM_PROPERTIES, new Object[0]), this.endDataProperty);
                }
                this.mHandler.removeMessages(0);
                if (isSessionTimeOut()) {
                    this.mHandler.sendMessage(obtainAppEndMessage(false));
                    boolean booleanValue = PersistentLoader.getInstance().getFirstStartPst().get().booleanValue();
                    Bundle data = message.getData();
                    try {
                        if (this.mSensorsDataInstance.isAutoTrackEnabled() && !this.mSensorsDataInstance.isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_START)) {
                            if (booleanValue) {
                                PersistentLoader.getInstance().getFirstStartPst().commit(Boolean.FALSE);
                            }
                            final JSONObject jSONObject = new JSONObject();
                            jSONObject.put("$resume_from_background", this.resumeFromBackground);
                            jSONObject.put("$is_first_time", booleanValue);
                            JSONUtils.mergeJSONObject(this.activityProperty, jSONObject);
                            JSONObject jSONObject2 = this.mDeepLinkProperty;
                            if (jSONObject2 != null) {
                                JSONUtils.mergeJSONObject(jSONObject2, jSONObject);
                                this.mDeepLinkProperty = null;
                            }
                            long j = data.getLong("time");
                            if (j <= 0) {
                                j = System.currentTimeMillis();
                            }
                            jSONObject.put(EVENT_TIME, j);
                            SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.ActivityLifecycleCallbacks.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    ActivityLifecycleCallbacks.this.mContextManager.trackEvent(new InputData().setEventName("$AppStart").setProperties(SADataHelper.appendLibMethodAutoTrack(jSONObject)).setEventType(EventType.TRACK));
                                }
                            });
                            SensorsDataAPI.sharedInstance().flush();
                        }
                    } catch (Exception e) {
                        SALog.i(TAG, e);
                    }
                    updateStartTime(data.getLong("elapse_time"));
                    this.resumeFromBackground = true;
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            updateStartTime(SystemClock.elapsedRealtime());
        }
        try {
            int i2 = this.mStartTimerCount;
            this.mStartTimerCount = i2 + 1;
            if (i2 == 0) {
                this.mHandler.sendEmptyMessage(300);
            }
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStoppedMessage(Message message) {
        try {
            int i = this.mStartTimerCount - 1;
            this.mStartTimerCount = i;
            int i2 = 0;
            if (i <= 0) {
                this.mHandler.removeMessages(300);
                this.mStartTimerCount = 0;
            }
            int activityCount = this.mDbAdapter.getActivityCount();
            this.mStartActivityCount = activityCount;
            if (activityCount > 0) {
                i2 = activityCount - 1;
                this.mStartActivityCount = i2;
            }
            this.mStartActivityCount = i2;
            this.mDbAdapter.commitActivityCount(i2);
            if (this.mStartActivityCount <= 0) {
                this.mSensorsDataInstance.flush();
                Bundle data = message.getData();
                generateAppEndData(data.getLong("time"), data.getLong("elapse_time"));
                this.mHandler.sendMessageDelayed(obtainAppEndMessage(true), this.mSensorsDataInstance.getSessionIntervalTime());
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    private void initHandler() {
        try {
            HandlerThread handlerThread = new HandlerThread("SENSORS_DATA_THREAD");
            handlerThread.start();
            this.mHandler = new Handler(handlerThread.getLooper()) { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.ActivityLifecycleCallbacks.2
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    int i = message.what;
                    if (i != 0) {
                        if (i == 100) {
                            ActivityLifecycleCallbacks.this.handleStartedMessage(message);
                        } else if (i == 200) {
                            ActivityLifecycleCallbacks.this.handleStoppedMessage(message);
                        } else if (i == 300) {
                            if (ActivityLifecycleCallbacks.this.mSensorsDataInstance.isAutoTrackEnabled() && ActivityLifecycleCallbacks.this.isAutoTrackAppEnd()) {
                                ActivityLifecycleCallbacks.this.generateAppEndData(System.currentTimeMillis(), SystemClock.elapsedRealtime());
                            }
                            if (ActivityLifecycleCallbacks.this.mStartTimerCount > 0) {
                                ActivityLifecycleCallbacks.this.mHandler.sendEmptyMessageDelayed(300, 2000L);
                            }
                        }
                    } else if (ActivityLifecycleCallbacks.this.messageReceiveTime == 0 || SystemClock.elapsedRealtime() - ActivityLifecycleCallbacks.this.messageReceiveTime >= ActivityLifecycleCallbacks.this.mSensorsDataInstance.getSessionIntervalTime()) {
                        ActivityLifecycleCallbacks.this.messageReceiveTime = SystemClock.elapsedRealtime();
                        Bundle data = message.getData();
                        String string = data.getString(DbParams.PersistentName.APP_END_DATA);
                        boolean z = data.getBoolean("app_reset_state");
                        ActivityLifecycleCallbacks.this.resumeFromBackground = true;
                        if (!z) {
                            ActivityLifecycleCallbacks.this.trackAppEnd(string);
                            return;
                        }
                        SAModuleManager.getInstance().invokeModuleFunction(Modules.Advert.MODULE_NAME, Modules.Advert.METHOD_COMMIT_REQUEST_DEFERRED_DEEPLINK, Boolean.FALSE);
                        if (DbAdapter.getInstance().getActivityCount() <= 0) {
                            ActivityLifecycleCallbacks.this.trackAppEnd(string);
                        }
                    } else {
                        SALog.i(ActivityLifecycleCallbacks.TAG, "$AppEnd in time");
                    }
                }
            };
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAutoTrackAppEnd() {
        return !this.mSensorsDataInstance.isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_END);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0054 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isSessionTimeOut() {
        /*
            r10 = this;
            long r0 = java.lang.System.currentTimeMillis()
            r2 = 946656000000(0xdc69183800, double:4.677102080295E-312)
            long r0 = java.lang.Math.max(r0, r2)
            r2 = 0
            com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter r4 = com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter.getInstance()     // Catch: java.lang.Exception -> L3d
            java.lang.String r4 = r4.getAppExitData()     // Catch: java.lang.Exception -> L3d
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L3d
            if (r5 != 0) goto L44
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Exception -> L3d
            r5.<init>(r4)     // Catch: java.lang.Exception -> L3d
            java.lang.String r4 = "event_time"
            long r6 = r5.optLong(r4)     // Catch: java.lang.Exception -> L3d
            r8 = 2000(0x7d0, double:9.88E-321)
            long r6 = r6 - r8
            long r8 = r10.mStartTime     // Catch: java.lang.Exception -> L3b
            int r2 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r2 != 0) goto L43
            java.lang.String r2 = "app_start_time"
            long r2 = r5.optLong(r2)     // Catch: java.lang.Exception -> L3b
            r10.updateStartTime(r2)     // Catch: java.lang.Exception -> L3b
            goto L43
        L3b:
            r2 = move-exception
            goto L40
        L3d:
            r4 = move-exception
            r6 = r2
            r2 = r4
        L40:
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r2)
        L43:
            r2 = r6
        L44:
            long r0 = r0 - r2
            long r0 = java.lang.Math.abs(r0)
            com.sensorsdata.analytics.android.sdk.SensorsDataAPI r2 = r10.mSensorsDataInstance
            int r2 = r2.getSessionIntervalTime()
            long r2 = (long) r2
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L56
            r0 = 1
            goto L57
        L56:
            r0 = 0
        L57:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.autotrack.core.autotrack.ActivityLifecycleCallbacks.isSessionTimeOut():boolean");
    }

    private Message obtainAppEndMessage(boolean z) {
        Message obtain = Message.obtain(this.mHandler);
        obtain.what = 0;
        Bundle bundle = new Bundle();
        bundle.putString(DbParams.PersistentName.APP_END_DATA, DbAdapter.getInstance().getAppExitData());
        bundle.putBoolean("app_reset_state", z);
        obtain.setData(bundle);
        return obtain;
    }

    private void registerAdvertObserver() {
        if (SAModuleManager.getInstance().hasModuleByName(Modules.Advert.MODULE_NAME)) {
            SAEventBus.getInstance().register(SAEventBusConstants.Tag.DEEPLINK_LAUNCH, new Subscription<JSONObject>() { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.ActivityLifecycleCallbacks.1
                @Override // com.sensorsdata.analytics.android.sdk.core.eventbus.Subscription
                public void notify(JSONObject jSONObject) {
                    SAModuleManager.getInstance().invokeModuleFunction(Modules.Advert.MODULE_NAME, Modules.Advert.METHOD_REMOVE_DEEPLINK_INFO, ActivityLifecycleCallbacks.this.endDataProperty);
                    JSONUtils.mergeJSONObject(jSONObject, ActivityLifecycleCallbacks.this.endDataProperty);
                }
            });
        }
    }

    private void sendActivityHandleMessage(int i) {
        Message obtainMessage = this.mHandler.obtainMessage();
        Bundle bundle = new Bundle();
        bundle.putLong("time", System.currentTimeMillis());
        bundle.putLong("elapse_time", SystemClock.elapsedRealtime());
        obtainMessage.what = i;
        obtainMessage.setData(bundle);
        this.mHandler.sendMessage(obtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trackAppEnd(String str) {
        try {
            if (this.mSensorsDataInstance.isAutoTrackEnabled() && isAutoTrackAppEnd() && !TextUtils.isEmpty(str)) {
                final JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("track_timer")) {
                    jSONObject.put(EVENT_TIME, jSONObject.optLong("track_timer") + 2000);
                    jSONObject.remove("event_timer");
                    jSONObject.remove("track_timer");
                }
                jSONObject.remove(DbParams.TABLE_APP_START_TIME);
                if (DbAdapter.getInstance().getAppStartTime() == 0) {
                    jSONObject.remove(EVENT_DURATION);
                }
                SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.ActivityLifecycleCallbacks.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ActivityLifecycleCallbacks.this.mContextManager.trackEvent(new InputData().setEventName("$AppEnd").setProperties(SADataHelper.appendLibMethodAutoTrack(jSONObject)).setEventType(EventType.TRACK));
                    }
                });
                this.mDbAdapter.commitAppExitData("");
                this.mSensorsDataInstance.flush();
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    private void updateStartTime(long j) {
        long elapsedRealtime;
        try {
            try {
                this.mStartTime = j;
                DbAdapter dbAdapter = this.mDbAdapter;
                if (j > 0) {
                    elapsedRealtime = j;
                } else {
                    elapsedRealtime = SystemClock.elapsedRealtime();
                }
                dbAdapter.commitAppStartTime(elapsedRealtime);
            } catch (Exception unused) {
                DbAdapter dbAdapter2 = this.mDbAdapter;
                if (j <= 0) {
                    j = SystemClock.elapsedRealtime();
                }
                dbAdapter2.commitAppStartTime(j);
            }
        } catch (Exception unused2) {
        }
    }

    public void addActivity(Activity activity) {
        if (activity != null) {
            this.hashSet.add(Integer.valueOf(activity.hashCode()));
        }
    }

    public boolean hasActivity(Activity activity) {
        if (activity != null) {
            return this.hashSet.contains(Integer.valueOf(activity.hashCode()));
        }
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        JSONObject trackProperties;
        try {
            if (!SensorsDataDialogUtils.isSchemeActivity(activity)) {
                buildScreenProperties(activity);
                if (this.mSensorsDataInstance.isAutoTrackEnabled() && !this.mSensorsDataInstance.isActivityAutoTrackAppViewScreenIgnored(activity.getClass()) && !this.mSensorsDataInstance.isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_VIEW_SCREEN)) {
                    JSONObject jSONObject = new JSONObject();
                    JSONUtils.mergeJSONObject(this.activityProperty, jSONObject);
                    if ((activity instanceof ScreenAutoTracker) && (trackProperties = ((ScreenAutoTracker) activity).getTrackProperties()) != null) {
                        JSONUtils.mergeJSONObject(trackProperties, jSONObject);
                    }
                    this.mSensorsDataInstance.trackViewScreen(SAPageTools.getScreenUrl(activity), SADataHelper.appendLibMethodAutoTrack(jSONObject));
                }
            }
        } catch (Throwable th) {
            SALog.i(TAG, th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (!SensorsDataDialogUtils.isSchemeActivity(activity) && !hasActivity(activity)) {
            if (this.mStartActivityCount == 0) {
                buildScreenProperties(activity);
            }
            sendActivityHandleMessage(100);
            addActivity(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (!SensorsDataDialogUtils.isSchemeActivity(activity) && hasActivity(activity)) {
            sendActivityHandleMessage(200);
            removeActivity(activity);
        }
    }

    public void removeActivity(Activity activity) {
        if (activity != null) {
            this.hashSet.remove(Integer.valueOf(activity.hashCode()));
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.exceptions.SensorsDataExceptionHandler.SAExceptionListener
    public void uncaughtException(Thread thread, Throwable th) {
        SAConfigOptions configOptions;
        if (TextUtils.isEmpty(DbAdapter.getInstance().getAppExitData())) {
            DbAdapter.getInstance().commitAppStartTime(SystemClock.elapsedRealtime());
        }
        configOptions = AbstractSensorsDataAPI.getConfigOptions();
        if (configOptions.isMultiProcessFlush()) {
            DbAdapter.getInstance().commitSubProcessFlushState(false);
        }
        DbAdapter.getInstance().commitActivityCount(0);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
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
