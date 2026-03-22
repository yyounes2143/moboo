package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbav {
    private com.google.android.gms.ads.internal.client.zzbx zza;
    private final Context zzb;
    private final String zzc;
    private final com.google.android.gms.ads.internal.client.zzeh zzd;
    private final AppOpenAd.AppOpenAdLoadCallback zze;
    private final zzbph zzf = new zzbph();
    private final com.google.android.gms.ads.internal.client.zzq zzg = com.google.android.gms.ads.internal.client.zzq.zza;

    public zzbav(Context context, String str, com.google.android.gms.ads.internal.client.zzeh zzehVar, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.zzb = context;
        this.zzc = str;
        this.zzd = zzehVar;
        this.zze = appOpenAdLoadCallback;
    }

    public final void zza() {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            com.google.android.gms.ads.internal.client.zzr zzb = com.google.android.gms.ads.internal.client.zzr.zzb();
            com.google.android.gms.ads.internal.client.zzaz zza = com.google.android.gms.ads.internal.client.zzbb.zza();
            Context context = this.zzb;
            String str = this.zzc;
            com.google.android.gms.ads.internal.client.zzbx zze = zza.zze(context, zzb, str, this.zzf);
            this.zza = zze;
            if (zze != null) {
                com.google.android.gms.ads.internal.client.zzeh zzehVar = this.zzd;
                zzehVar.zzo(currentTimeMillis);
                this.zza.zzH(new zzbai(this.zze, str));
                this.zza.zzab(this.zzg.zza(context, zzehVar));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }
}
