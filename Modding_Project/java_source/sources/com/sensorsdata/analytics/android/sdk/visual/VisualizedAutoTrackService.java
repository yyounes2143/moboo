package com.sensorsdata.analytics.android.sdk.visual;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesLog;
import com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class VisualizedAutoTrackService {
    private static final String TAG = "SA.VisualizedAutoTrackService";
    private static VisualizedAutoTrackService instance;
    private static VisualizedAutoTrackViewCrawler mVTrack;
    private boolean mDebugModeEnabled = false;
    private String mLastDebugInfo;
    private VisualDebugHelper mVisualDebugHelper;
    private VisualPropertiesLog mVisualPropertiesLog;

    private VisualizedAutoTrackService() {
    }

    public static VisualizedAutoTrackService getInstance() {
        if (instance == null) {
            instance = new VisualizedAutoTrackService();
        }
        return instance;
    }

    public String getDebugInfo() {
        try {
            VisualDebugHelper visualDebugHelper = this.mVisualDebugHelper;
            if (visualDebugHelper != null) {
                String debugInfo = visualDebugHelper.getDebugInfo();
                this.mLastDebugInfo = debugInfo;
                if (!TextUtils.isEmpty(debugInfo)) {
                    SALog.i(TAG, "visual debug info: " + this.mLastDebugInfo);
                    return this.mLastDebugInfo;
                }
                return null;
            }
            return null;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    public String getLastDebugInfo() {
        try {
            if (!TextUtils.isEmpty(this.mLastDebugInfo)) {
                SALog.i(TAG, "last debug info: " + this.mLastDebugInfo);
                return this.mLastDebugInfo;
            }
            return null;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    public String getVisualLogInfo() {
        try {
            VisualPropertiesLog visualPropertiesLog = this.mVisualPropertiesLog;
            if (visualPropertiesLog != null) {
                String visualPropertiesLog2 = visualPropertiesLog.getVisualPropertiesLog();
                if (!TextUtils.isEmpty(visualPropertiesLog2)) {
                    SALog.i(TAG, "visual log info: " + visualPropertiesLog2);
                    return visualPropertiesLog2;
                }
                return null;
            }
            return null;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    public boolean isServiceRunning() {
        VisualizedAutoTrackViewCrawler visualizedAutoTrackViewCrawler = mVTrack;
        if (visualizedAutoTrackViewCrawler != null) {
            return visualizedAutoTrackViewCrawler.isServiceRunning();
        }
        return false;
    }

    public void resume() {
        try {
            VisualizedAutoTrackViewCrawler visualizedAutoTrackViewCrawler = mVTrack;
            if (visualizedAutoTrackViewCrawler != null) {
                visualizedAutoTrackViewCrawler.startUpdates();
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void setDebugModeEnabled(boolean z) {
        try {
            if (this.mDebugModeEnabled != z) {
                if (z) {
                    this.mVisualPropertiesLog = new VisualPropertiesLog();
                    VisualPropertiesManager.getInstance().registerCollectLogListener(this.mVisualPropertiesLog);
                } else {
                    this.mVisualPropertiesLog = null;
                    VisualPropertiesManager.getInstance().unRegisterCollectLogListener();
                }
            }
            this.mDebugModeEnabled = z;
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void start(Activity activity, String str, String str2) {
        try {
            Bundle bundle = activity.getApplicationContext().getPackageManager().getApplicationInfo(activity.getApplicationContext().getPackageName(), 128).metaData;
            if (bundle == null) {
                bundle = new Bundle();
            }
            String string = bundle.getString("com.sensorsdata.analytics.android.ResourcePackageName");
            if (string == null) {
                string = activity.getPackageName();
            }
            String str3 = string;
            if (this.mVisualDebugHelper == null) {
                this.mVisualDebugHelper = new VisualDebugHelper();
            }
            VisualizedAutoTrackViewCrawler visualizedAutoTrackViewCrawler = new VisualizedAutoTrackViewCrawler(activity, str3, str, str2, this.mVisualDebugHelper);
            mVTrack = visualizedAutoTrackViewCrawler;
            visualizedAutoTrackViewCrawler.startUpdates();
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void stop() {
        try {
            VisualizedAutoTrackViewCrawler visualizedAutoTrackViewCrawler = mVTrack;
            if (visualizedAutoTrackViewCrawler != null) {
                visualizedAutoTrackViewCrawler.stopUpdates(false);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }
}
