package com.iab.omid.library.mmadbridge.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
/* loaded from: classes5.dex */
public class d implements Application.ActivityLifecycleCallbacks {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public a f8297Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8298Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8299Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* loaded from: classes5.dex */
    public interface a {
        void a(boolean z);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8299Wwwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f8297Wwwwwwwwwwwwwwwwwwwwwww = null;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8299Wwwwwwwwwwwwwwwwwwwwwwwww = true;
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8298Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return false;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8298Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @VisibleForTesting
    public ActivityManager.RunningAppProcessInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().importance == 100 || Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return true;
        }
        return false;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (this.f8298Wwwwwwwwwwwwwwwwwwwwwwww != z) {
            this.f8298Wwwwwwwwwwwwwwwwwwwwwwww = z;
            if (this.f8299Wwwwwwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
                a aVar = this.f8297Wwwwwwwwwwwwwwwwwwwwwww;
                if (aVar != null) {
                    aVar.a(z);
                }
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a aVar) {
        this.f8297Wwwwwwwwwwwwwwwwwwwwwww = aVar;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
