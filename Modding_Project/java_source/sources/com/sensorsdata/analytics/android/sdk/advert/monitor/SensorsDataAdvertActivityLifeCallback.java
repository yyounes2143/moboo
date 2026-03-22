package com.sensorsdata.analytics.android.sdk.advert.monitor;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkManager;
import com.sensorsdata.analytics.android.sdk.monitor.SensorsDataActivityLifecycleCallbacks;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SensorsDataAdvertActivityLifeCallback implements SensorsDataActivityLifecycleCallbacks.SAActivityLifecycleCallbacks {
    private SAConfigOptions mOptions;

    public SensorsDataAdvertActivityLifeCallback(SAConfigOptions sAConfigOptions) {
        this.mOptions = sAConfigOptions;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        DeepLinkManager.parseDeepLink(activity, this.mOptions.isSaveDeepLinkInfo());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        DeepLinkManager.parseDeepLink(activity, this.mOptions.isSaveDeepLinkInfo());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        DeepLinkManager.parseDeepLink(activity, this.mOptions.isSaveDeepLinkInfo());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
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
