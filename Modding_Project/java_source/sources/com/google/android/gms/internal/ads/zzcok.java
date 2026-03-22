package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcok extends zzbam {
    private final zzcoj zza;
    private final com.google.android.gms.ads.internal.client.zzbx zzb;
    private final zzexs zzc;
    private boolean zzd = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaV)).booleanValue();
    private final zzdsd zze;

    public zzcok(zzcoj zzcojVar, com.google.android.gms.ads.internal.client.zzbx zzbxVar, zzexs zzexsVar, zzdsd zzdsdVar) {
        this.zza = zzcojVar;
        this.zzb = zzbxVar;
        this.zzc = zzexsVar;
        this.zze = zzdsdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final com.google.android.gms.ads.internal.client.zzbx zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdx zzf() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgT)).booleanValue()) {
            return null;
        }
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzban
    @Nullable
    public final String zzg() {
        try {
            return this.zzb.zzr();
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzh(boolean z) {
        this.zzd = z;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzi(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        Preconditions.checkMainThread("setOnPaidEventListener must be called on the main UI thread.");
        if (this.zzc != null) {
            try {
                if (!zzdqVar.zzf()) {
                    this.zze.zze();
                }
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
            }
            this.zzc.zzn(zzdqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzj(IObjectWrapper iObjectWrapper, zzbau zzbauVar) {
        try {
            this.zzc.zzp(zzbauVar);
            this.zza.zzd((Activity) ObjectWrapper.unwrap(iObjectWrapper), zzbauVar, this.zzd);
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }
}
