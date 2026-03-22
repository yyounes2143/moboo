package com.sensorsdata.analytics.android.sdk.core.business;

import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.business.timer.EventTimerManager;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class DefaultAppState implements AppStateTools.AppState {
    private final SensorsDataAPI mSensorsDataInstance;
    private boolean resumeFromBackground = false;
    private boolean mIsResumeScreenOrientation = false;

    public DefaultAppState(SensorsDataAPI sensorsDataAPI) {
        this.mSensorsDataInstance = sensorsDataAPI;
    }

    @Override // com.sensorsdata.analytics.android.sdk.util.AppStateTools.AppState
    public void onBackground() {
        try {
            if (this.mSensorsDataInstance.getSAContextManager().getOrientationDetector() != null && this.mSensorsDataInstance.getSAContextManager().getOrientationDetector().isEnableState()) {
                this.mSensorsDataInstance.stopTrackScreenOrientation();
                this.mIsResumeScreenOrientation = true;
            } else {
                this.mIsResumeScreenOrientation = false;
            }
            this.mSensorsDataInstance.getSAContextManager().getRemoteManager().resetPullSDKConfigTimer();
            SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_STOP_HEATMAP_SERVICE, new Object[0]);
            SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_STOP_VISUAL_SERVICE, new Object[0]);
            EventTimerManager.getInstance().appEnterBackground();
            this.mSensorsDataInstance.clearLastScreenUrl();
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.util.AppStateTools.AppState
    public void onForeground() {
        try {
            EventTimerManager.getInstance().appBecomeActive();
            if (this.resumeFromBackground) {
                this.mSensorsDataInstance.getSAContextManager().getRemoteManager().applySDKConfigFromCache();
                if (this.mIsResumeScreenOrientation) {
                    this.mSensorsDataInstance.resumeTrackScreenOrientation();
                }
                try {
                    SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_RESUME_HEATMAP_SERVICE, new Object[0]);
                    SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_RESUME_VISUAL_SERVICE, new Object[0]);
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
            this.mSensorsDataInstance.getSAContextManager().getRemoteManager().pullSDKConfigFromServer();
            this.resumeFromBackground = true;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }
}
