package com.sensorsdata.analytics.android.sdk.exposure;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.exposure.SAExposedProcess;
import com.sensorsdata.analytics.android.sdk.monitor.SensorsDataActivityLifecycleCallbacks;
import com.sensorsdata.analytics.android.sdk.util.WindowHelper;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ExposedTransform implements SensorsDataActivityLifecycleCallbacks.SAActivityLifecycleCallbacks {
    private WeakReference<Activity> mActivityWeakReference;
    private final AppPageChange mAppPageChange;
    private final SAExposedProcess.CallBack mCallBack;
    private View[] views;
    private final String TAG = "SA.ExposedTransform";
    private volatile boolean isMonitor = false;
    private volatile int windowCount = -1;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface LayoutCallBack {
        void viewLayoutChange();
    }

    public ExposedTransform(final SAExposedProcess.CallBack callBack) {
        this.mCallBack = callBack;
        this.mAppPageChange = new AppPageChange(new LayoutCallBack() { // from class: com.sensorsdata.analytics.android.sdk.exposure.ExposedTransform.1
            @Override // com.sensorsdata.analytics.android.sdk.exposure.ExposedTransform.LayoutCallBack
            public void viewLayoutChange() {
                Activity activity;
                if (ExposedTransform.this.mActivityWeakReference != null && (activity = (Activity) ExposedTransform.this.mActivityWeakReference.get()) != null) {
                    callBack.viewLayoutChange(activity);
                }
            }
        });
    }

    private void processViews() {
        WindowHelper.init();
        View[] sortedWindowViews = WindowHelper.getSortedWindowViews();
        this.views = sortedWindowViews;
        if (sortedWindowViews != null && sortedWindowViews.length > 0) {
            this.windowCount = sortedWindowViews.length;
        } else {
            this.windowCount = 0;
        }
    }

    private void viewRemoveTreeObserver(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        viewTreeObserver.removeGlobalOnLayoutListener(this.mAppPageChange);
        viewTreeObserver.removeOnWindowFocusChangeListener(this.mAppPageChange);
        viewTreeObserver.removeOnScrollChangedListener(this.mAppPageChange);
        viewTreeObserver.removeOnGlobalFocusChangeListener(this.mAppPageChange);
    }

    private void viewTreeObserver(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        viewTreeObserver.addOnGlobalLayoutListener(this.mAppPageChange);
        viewTreeObserver.addOnWindowFocusChangeListener(this.mAppPageChange);
        viewTreeObserver.addOnScrollChangedListener(this.mAppPageChange);
        viewTreeObserver.addOnGlobalFocusChangeListener(this.mAppPageChange);
    }

    private void viewsAddTreeObserver(Activity activity) {
        SALog.i("SA.ExposedTransform", "viewsAddTreeObserver:" + this.isMonitor);
        if (!this.isMonitor && this.mCallBack.getExposureViewSize(activity) > 0) {
            processViews();
            View decorView = activity.getWindow().getDecorView();
            View[] viewArr = this.views;
            if (viewArr != null && viewArr.length > 0) {
                boolean z = true;
                for (View view : viewArr) {
                    if (decorView == view) {
                        z = false;
                    }
                    viewTreeObserver(view);
                }
                if (z) {
                    viewTreeObserver(decorView);
                }
            } else {
                viewTreeObserver(activity.getWindow().getDecorView());
            }
            this.isMonitor = true;
        }
    }

    private void viewsRemoveTreeObserver(Activity activity) {
        SALog.i("SA.ExposedTransform", "viewsRemoveTreeObserver:" + this.isMonitor);
        if (this.isMonitor) {
            this.isMonitor = false;
            View[] viewArr = this.views;
            if (viewArr != null && viewArr.length > 0) {
                for (View view : viewArr) {
                    viewRemoveTreeObserver(view);
                }
                return;
            }
            viewRemoveTreeObserver(activity.getWindow().getDecorView());
        }
    }

    public synchronized void observerWindow(Activity activity) {
        int i = this.windowCount;
        processViews();
        SALog.i("SA.ExposedTransform", "originWindowCount:" + i + ",windowCount:" + this.windowCount);
        if (i != this.windowCount) {
            viewsRemoveTreeObserver(activity);
            onActivityResumed(activity);
            return;
        }
        if (!this.isMonitor) {
            onActivityResumed(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.mActivityWeakReference = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        SALog.i("SA.ExposedTransform", "onActivityPaused");
        synchronized (this) {
            viewsRemoveTreeObserver(activity);
            this.mCallBack.onActivityPaused(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.mActivityWeakReference = new WeakReference<>(activity);
        SALog.i("SA.ExposedTransform", "onActivityResumed:" + activity);
        synchronized (this) {
            viewsAddTreeObserver(activity);
            this.mCallBack.onActivityResumed(activity);
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
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
