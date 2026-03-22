package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfbl extends zzbwp {
    private final zzfbh zza;
    private final zzfax zzb;
    private final String zzc;
    private final zzfch zzd;
    private final Context zze;
    private final VersionInfoParcel zzf;
    private final zzavl zzg;
    private final zzdsd zzh;
    @Nullable
    private zzdoh zzi;
    private boolean zzj = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaS)).booleanValue();

    public zzfbl(@Nullable String str, zzfbh zzfbhVar, Context context, zzfax zzfaxVar, zzfch zzfchVar, VersionInfoParcel versionInfoParcel, zzavl zzavlVar, zzdsd zzdsdVar) {
        this.zzc = str;
        this.zza = zzfbhVar;
        this.zzb = zzfaxVar;
        this.zzd = zzfchVar;
        this.zze = context;
        this.zzf = versionInfoParcel;
        this.zzg = zzavlVar;
        this.zzh = zzdsdVar;
    }

    private final synchronized void zzv(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbwx zzbwxVar, int i) throws RemoteException {
        try {
            if (!zzmVar.zzb()) {
                boolean z = false;
                if (((Boolean) zzbet.zzk.zze()).booleanValue()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlw)).booleanValue()) {
                        z = true;
                    }
                }
                if (this.zzf.clientJarVersion < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlx)).intValue() || !z) {
                    Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
                }
            }
            zzfax zzfaxVar = this.zzb;
            zzfaxVar.zzk(zzbwxVar);
            com.google.android.gms.ads.internal.zzv.zzr();
            if (com.google.android.gms.ads.internal.util.zzs.zzI(this.zze) && zzmVar.zzs == null) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to load the ad because app ID is missing.");
                zzfaxVar.zzdD(zzfdq.zzd(4, null, null));
                return;
            }
            if (this.zzi != null) {
                return;
            }
            zzfaz zzfazVar = new zzfaz(null);
            zzfbh zzfbhVar = this.zza;
            zzfbhVar.zzj(i);
            zzfbhVar.zzb(zzmVar, this.zzc, zzfazVar, new zzfbk(this));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final Bundle zzb() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdoh zzdohVar = this.zzi;
        if (zzdohVar != null) {
            return zzdohVar.zza();
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdx zzc() {
        zzdoh zzdohVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgT)).booleanValue() && (zzdohVar = this.zzi) != null) {
            return zzdohVar.zzl();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    @Nullable
    public final zzbwn zzd() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdoh zzdohVar = this.zzi;
        if (zzdohVar != null) {
            return zzdohVar.zzc();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    @Nullable
    public final String zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    @Nullable
    public final synchronized String zzf() throws RemoteException {
        zzdoh zzdohVar = this.zzi;
        if (zzdohVar != null && zzdohVar.zzl() != null) {
            return zzdohVar.zzl().zzg();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final synchronized void zzg(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbwx zzbwxVar) throws RemoteException {
        zzv(zzmVar, zzbwxVar, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final synchronized void zzh(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbwx zzbwxVar) throws RemoteException {
        zzv(zzmVar, zzbwxVar, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final synchronized void zzi(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zzj = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzj(com.google.android.gms.ads.internal.client.zzdn zzdnVar) {
        if (zzdnVar == null) {
            this.zzb.zzg(null);
        } else {
            this.zzb.zzg(new zzfbj(this, zzdnVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzk(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        Preconditions.checkMainThread("setOnPaidEventListener must be called on the main UI thread.");
        try {
            if (!zzdqVar.zzf()) {
                this.zzh.zze();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
        }
        this.zzb.zzi(zzdqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzl(zzbwt zzbwtVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzb.zzj(zzbwtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final synchronized void zzm(zzbxe zzbxeVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzfch zzfchVar = this.zzd;
        zzfchVar.zza = zzbxeVar.zza;
        zzfchVar.zzb = zzbxeVar.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final synchronized void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzo(iObjectWrapper, this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final synchronized void zzo(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzi == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Rewarded can not be shown before loaded");
            this.zzb.zzr(zzfdq.zzd(9, null, null));
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdd)).booleanValue()) {
            this.zzg.zzc().zzn(new Throwable().getStackTrace());
        }
        this.zzi.zzh(z, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final boolean zzp() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdoh zzdohVar = this.zzi;
        if (zzdohVar != null && !zzdohVar.zzf()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbwq
    public final void zzq(zzbwy zzbwyVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzb.zzo(zzbwyVar);
    }
}
