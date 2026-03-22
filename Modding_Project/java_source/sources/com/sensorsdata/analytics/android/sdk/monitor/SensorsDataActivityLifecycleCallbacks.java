package com.sensorsdata.analytics.android.sdk.monitor;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import com.sensorsdata.analytics.android.sdk.SALog;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
@TargetApi(14)
/* loaded from: classes6.dex */
public class SensorsDataActivityLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
    private final Set<SAActivityLifecycleCallbacks> mActivityCallbacks = new HashSet();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface SAActivityLifecycleCallbacks extends Application.ActivityLifecycleCallbacks {
        void onNewIntent(Intent intent);
    }

    public void addActivityLifecycleCallbacks(SAActivityLifecycleCallbacks sAActivityLifecycleCallbacks) {
        if (sAActivityLifecycleCallbacks != null) {
            this.mActivityCallbacks.add(sAActivityLifecycleCallbacks);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        for (SAActivityLifecycleCallbacks sAActivityLifecycleCallbacks : this.mActivityCallbacks) {
            try {
                sAActivityLifecycleCallbacks.onActivityCreated(activity, bundle);
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        for (SAActivityLifecycleCallbacks sAActivityLifecycleCallbacks : this.mActivityCallbacks) {
            try {
                sAActivityLifecycleCallbacks.onActivityDestroyed(activity);
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        for (SAActivityLifecycleCallbacks sAActivityLifecycleCallbacks : this.mActivityCallbacks) {
            try {
                sAActivityLifecycleCallbacks.onActivityPaused(activity);
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        for (SAActivityLifecycleCallbacks sAActivityLifecycleCallbacks : this.mActivityCallbacks) {
            try {
                sAActivityLifecycleCallbacks.onActivityResumed(activity);
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        for (SAActivityLifecycleCallbacks sAActivityLifecycleCallbacks : this.mActivityCallbacks) {
            try {
                sAActivityLifecycleCallbacks.onActivitySaveInstanceState(activity, bundle);
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        for (SAActivityLifecycleCallbacks sAActivityLifecycleCallbacks : this.mActivityCallbacks) {
            try {
                sAActivityLifecycleCallbacks.onActivityStarted(activity);
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        for (SAActivityLifecycleCallbacks sAActivityLifecycleCallbacks : this.mActivityCallbacks) {
            try {
                sAActivityLifecycleCallbacks.onActivityStopped(activity);
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public void removeActivityLifecycleCallbacks(SAActivityLifecycleCallbacks sAActivityLifecycleCallbacks) {
        if (sAActivityLifecycleCallbacks != null) {
            this.mActivityCallbacks.remove(sAActivityLifecycleCallbacks);
        }
    }
}
