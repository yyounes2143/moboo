package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaza implements zzazg {
    final /* synthetic */ Activity zza;

    public zzaza(zzazh zzazhVar, Activity activity) {
        this.zza = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzazg
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.zza);
    }
}
