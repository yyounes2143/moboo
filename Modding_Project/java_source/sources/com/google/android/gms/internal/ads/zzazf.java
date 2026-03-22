package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzazf implements zzazg {
    final /* synthetic */ Activity zza;

    public zzazf(zzazh zzazhVar, Activity activity) {
        this.zza = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzazg
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.zza);
    }
}
