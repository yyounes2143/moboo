package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzelu implements zzetu {
    public final Context zza;
    public final com.google.android.gms.ads.internal.client.zzr zzb;
    public final List zzc;

    public zzelu(Context context, com.google.android.gms.ads.internal.client.zzr zzrVar, List list) {
        this.zza = context;
        this.zzb = zzrVar;
        this.zzc = list;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        ComponentName componentName2;
        zzcuv zzcuvVar = (zzcuv) obj;
        if (!((Boolean) zzbey.zza.zze()).booleanValue()) {
            return;
        }
        Bundle bundle = new Bundle();
        com.google.android.gms.ads.internal.zzv.zzr();
        String str = null;
        try {
            ActivityManager activityManager = (ActivityManager) this.zza.getSystemService("activity");
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null) {
                componentName = runningTaskInfo.topActivity;
                if (componentName != null) {
                    componentName2 = runningTaskInfo.topActivity;
                    str = componentName2.getClassName();
                }
            }
        } catch (Exception unused) {
        }
        bundle.putString("activity", str);
        Bundle bundle2 = new Bundle();
        com.google.android.gms.ads.internal.client.zzr zzrVar = this.zzb;
        bundle2.putInt("width", zzrVar.zze);
        bundle2.putInt("height", zzrVar.zzb);
        bundle.putBundle("size", bundle2);
        List list = this.zzc;
        if (!list.isEmpty()) {
            bundle.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
        }
        zzcuvVar.zza.putBundle("view_hierarchy", bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
