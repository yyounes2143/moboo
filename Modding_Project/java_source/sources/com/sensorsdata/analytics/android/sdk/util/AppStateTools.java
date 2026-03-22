package com.sensorsdata.analytics.android.sdk.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils;
import com.sensorsdata.analytics.android.sdk.monitor.SensorsDataActivityLifecycleCallbacks;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class AppStateTools implements SensorsDataActivityLifecycleCallbacks.SAActivityLifecycleCallbacks {
    private static final String TAG = "AppStateTools";
    private int mActivityCount;
    private final List<AppState> mAppStateList;
    private String mCurrentFragmentName;
    private int mCurrentRootWindowsHashCode;
    private WeakReference<Activity> mForeGroundActivity;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface AppState {
        void onBackground();

        void onForeground();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class SingleHolder {
        private static final AppStateTools mSingleInstance = new AppStateTools();

        private SingleHolder() {
        }
    }

    public static AppStateTools getInstance() {
        return SingleHolder.mSingleInstance;
    }

    private void setForegroundActivity(Activity activity) {
        this.mForeGroundActivity = new WeakReference<>(activity);
    }

    public void addAppStateListener(AppState appState) {
        this.mAppStateList.add(appState);
    }

    public void delayInit(Context context) {
        try {
            if (context instanceof Activity) {
                onActivityStarted((Activity) context);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public int getCurrentRootWindowsHashCode() {
        WeakReference<Activity> weakReference;
        Activity activity;
        Window window;
        if (this.mCurrentRootWindowsHashCode == -1 && (weakReference = this.mForeGroundActivity) != null && weakReference.get() != null && (activity = this.mForeGroundActivity.get()) != null && (window = activity.getWindow()) != null && window.isActive()) {
            this.mCurrentRootWindowsHashCode = window.getDecorView().hashCode();
        }
        return this.mCurrentRootWindowsHashCode;
    }

    public Activity getForegroundActivity() {
        return this.mForeGroundActivity.get();
    }

    public String getFragmentScreenName() {
        return this.mCurrentFragmentName;
    }

    public boolean isAppOnForeground() {
        if (this.mActivityCount != 0) {
            return true;
        }
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            setForegroundActivity(activity);
            if (!activity.isChild()) {
                this.mCurrentRootWindowsHashCode = -1;
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        try {
            if (!SensorsDataDialogUtils.isSchemeActivity(activity)) {
                SensorsDataUtils.handleSchemeUrl(activity, activity.getIntent());
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (!activity.isChild()) {
            this.mCurrentRootWindowsHashCode = -1;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        setForegroundActivity(activity);
        View view = null;
        try {
            Window window = activity.getWindow();
            if (window != null) {
                view = window.getDecorView();
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        if (!activity.isChild() && view != null) {
            this.mCurrentRootWindowsHashCode = view.hashCode();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        int i = this.mActivityCount;
        this.mActivityCount = i + 1;
        if (i == 0) {
            for (AppState appState : this.mAppStateList) {
                try {
                    appState.onForeground();
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        int i = this.mActivityCount - 1;
        this.mActivityCount = i;
        if (i == 0) {
            for (AppState appState : this.mAppStateList) {
                try {
                    appState.onBackground();
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                }
            }
        }
    }

    public void setFragmentScreenName(Object obj, String str) {
        try {
            if (obj.getClass().getMethod("getParentFragment", null).invoke(obj, null) == null) {
                this.mCurrentFragmentName = str;
                SALog.i(TAG, "setFragmentScreenName | " + str + " is not nested fragment and set");
                return;
            }
            SALog.i(TAG, "setFragmentScreenName | " + str + " is nested fragment and ignored");
        } catch (Exception unused) {
        }
    }

    private AppStateTools() {
        this.mForeGroundActivity = new WeakReference<>(null);
        this.mCurrentFragmentName = null;
        this.mCurrentRootWindowsHashCode = -1;
        this.mActivityCount = 0;
        this.mAppStateList = new ArrayList();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.monitor.SensorsDataActivityLifecycleCallbacks.SAActivityLifecycleCallbacks
    public void onNewIntent(Intent intent) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
