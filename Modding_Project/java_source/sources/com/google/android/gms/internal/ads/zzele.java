package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzele {
    private final zzdiz zza;
    private final zzekr zzb;
    private final zzcvw zzc;

    public zzele(zzdiz zzdizVar, zzdsd zzdsdVar) {
        this.zza = zzdizVar;
        final zzekr zzekrVar = new zzekr(zzdsdVar);
        this.zzb = zzekrVar;
        final zzbmp zzg = zzdizVar.zzg();
        this.zzc = new zzcvw() { // from class: com.google.android.gms.internal.ads.zzeld
            @Override // com.google.android.gms.internal.ads.zzcvw
            public final void zzdD(com.google.android.gms.ads.internal.client.zze zzeVar) {
                zzekr.this.zzdD(zzeVar);
                zzbmp zzbmpVar = zzg;
                if (zzbmpVar != null) {
                    try {
                        zzbmpVar.zzf(zzeVar);
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
                if (zzbmpVar != null) {
                    try {
                        zzbmpVar.zze(zzeVar.zza);
                    } catch (RemoteException e2) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
                    }
                }
            }
        };
    }

    public final zzcvw zza() {
        return this.zzc;
    }

    public final zzcxh zzb() {
        return this.zzb;
    }

    public final zzdgr zzc() {
        return new zzdgr(this.zza, this.zzb.zzg());
    }

    public final zzekr zzd() {
        return this.zzb;
    }

    public final void zze(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        this.zzb.zzj(zzbkVar);
    }
}
