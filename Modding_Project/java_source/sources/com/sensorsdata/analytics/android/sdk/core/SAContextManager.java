package com.sensorsdata.analytics.android.sdk.core;

import android.content.Context;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.AnalyticsMessages;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsDataScreenOrientationDetector;
import com.sensorsdata.analytics.android.sdk.core.event.EventProcessor;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.event.TrackEventProcessor;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentFirstDay;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoader;
import com.sensorsdata.analytics.android.sdk.internal.beans.InternalConfigOptions;
import com.sensorsdata.analytics.android.sdk.listener.SAEventListener;
import com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager;
import com.sensorsdata.analytics.android.sdk.plugin.property.PropertyPluginManager;
import com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager;
import com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManager;
import com.sensorsdata.analytics.android.sdk.useridentity.UserIdentityAPI;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAContextManager {
    private Context mContext;
    private List<SAEventListener> mEventListenerList;
    private PersistentFirstDay mFirstDay;
    private InternalConfigOptions mInternalConfigs;
    private AnalyticsMessages mMessages;
    private SensorsDataScreenOrientationDetector mOrientationDetector;
    private PropertyPluginManager mPluginManager;
    BaseSensorsDataSDKRemoteManager mRemoteManager;
    private SensorsDataAPI mSensorsDataAPI;
    private EventProcessor mTrackEventProcessor;
    UserIdentityAPI mUserIdentityAPI;

    public SAContextManager() {
    }

    private void executeDelayTask() {
        SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.core.SAContextManager.1
            @Override // java.lang.Runnable
            public void run() {
                String anonymousId = SAContextManager.this.mInternalConfigs.saConfigOptions.getAnonymousId();
                if (!TextUtils.isEmpty(anonymousId)) {
                    SAContextManager.this.getUserIdentityAPI().identify(anonymousId);
                }
            }
        });
    }

    public void addEventListener(SAEventListener sAEventListener) {
        try {
            if (this.mEventListenerList == null) {
                this.mEventListenerList = new ArrayList();
            }
            this.mEventListenerList.add(sAEventListener);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public AnalyticsMessages getAnalyticsMessages() {
        return this.mMessages;
    }

    public Context getContext() {
        return this.mContext;
    }

    public List<SAEventListener> getEventListenerList() {
        return this.mEventListenerList;
    }

    public InternalConfigOptions getInternalConfigs() {
        return this.mInternalConfigs;
    }

    public SensorsDataScreenOrientationDetector getOrientationDetector() {
        return this.mOrientationDetector;
    }

    public PropertyPluginManager getPluginManager() {
        return this.mPluginManager;
    }

    public BaseSensorsDataSDKRemoteManager getRemoteManager() {
        return this.mRemoteManager;
    }

    public SensorsDataAPI getSensorsDataAPI() {
        return this.mSensorsDataAPI;
    }

    public synchronized UserIdentityAPI getUserIdentityAPI() {
        try {
            if (this.mUserIdentityAPI == null) {
                this.mUserIdentityAPI = new UserIdentityAPI(this);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mUserIdentityAPI;
    }

    public boolean isFirstDay(long j) {
        String str = this.mFirstDay.get();
        if (str == null) {
            this.mFirstDay.commit(TimeUtils.formatTime(System.currentTimeMillis(), TimeUtils.YYYY_MM_DD));
            return true;
        }
        try {
            return str.equals(TimeUtils.formatTime(j, TimeUtils.YYYY_MM_DD));
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return true;
        }
    }

    public void removeEventListener(SAEventListener sAEventListener) {
        try {
            List<SAEventListener> list = this.mEventListenerList;
            if (list != null && list.contains(sAEventListener)) {
                this.mEventListenerList.remove(sAEventListener);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void setOrientationDetector(SensorsDataScreenOrientationDetector sensorsDataScreenOrientationDetector) {
        this.mOrientationDetector = sensorsDataScreenOrientationDetector;
    }

    public void setRemoteManager(BaseSensorsDataSDKRemoteManager baseSensorsDataSDKRemoteManager) {
        this.mRemoteManager = baseSensorsDataSDKRemoteManager;
    }

    public void trackEvent(InputData inputData) {
        try {
            this.mTrackEventProcessor.trackEvent(inputData);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public SAContextManager(SensorsDataAPI sensorsDataAPI, InternalConfigOptions internalConfigOptions) {
        try {
            this.mSensorsDataAPI = sensorsDataAPI;
            this.mInternalConfigs = internalConfigOptions;
            this.mContext = internalConfigOptions.context.getApplicationContext();
            DbAdapter.getInstance(this);
            this.mMessages = AnalyticsMessages.getInstance(this.mContext, sensorsDataAPI, this.mInternalConfigs);
            this.mTrackEventProcessor = new TrackEventProcessor(this);
            this.mFirstDay = PersistentLoader.getInstance().getFirstDayPst();
            this.mPluginManager = new PropertyPluginManager(sensorsDataAPI, this);
            SAStoreManager.getInstance().registerPlugins(this.mInternalConfigs.saConfigOptions.getStorePlugins(), this.mContext);
            SAStoreManager.getInstance().upgrade();
            executeDelayTask();
            SAModuleManager.getInstance().installService(this);
            SensorsDataRemoteManager sensorsDataRemoteManager = new SensorsDataRemoteManager(sensorsDataAPI, this);
            this.mRemoteManager = sensorsDataRemoteManager;
            sensorsDataRemoteManager.applySDKConfigFromCache();
            internalConfigOptions.context = this.mContext;
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }
}
