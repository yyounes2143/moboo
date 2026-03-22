package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzewz implements zzgcu {
    final /* synthetic */ zzelg zza;
    final /* synthetic */ zzfhn zzb;
    final /* synthetic */ zzfhc zzc;
    final /* synthetic */ zzexa zzd;
    final /* synthetic */ zzexc zze;

    public zzewz(zzexc zzexcVar, zzelg zzelgVar, zzfhn zzfhnVar, zzfhc zzfhcVar, zzexa zzexaVar) {
        this.zza = zzelgVar;
        this.zzb = zzfhnVar;
        this.zzc = zzfhcVar;
        this.zzd = zzexaVar;
        this.zze = zzexcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        zzezl zzezlVar;
        final com.google.android.gms.ads.internal.client.zze zza;
        zzexs zzexsVar;
        zzcuy zzm;
        zzfhq zzfhqVar;
        zzfhn zzfhnVar;
        Executor executor;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfX)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("App open ad failed to load", th);
        }
        zzexc zzexcVar = this.zze;
        zzezlVar = zzexcVar.zze;
        zzcnz zzcnzVar = (zzcnz) zzezlVar.zzd();
        if (zzcnzVar == null) {
            zza = zzfdq.zzb(th, null);
        } else {
            zza = zzcnzVar.zzb().zza(th);
        }
        synchronized (zzexcVar) {
            try {
                zzexcVar.zzj = null;
                if (zzcnzVar == null) {
                    zzexsVar = zzexcVar.zzd;
                    zzexsVar.zzdD(zza);
                    zzm = zzexcVar.zzm(this.zzd);
                    ((zzcnz) zzm.zzh()).zzb().zzc().zzh();
                } else {
                    zzcnzVar.zzc().zzdD(zza);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziv)).booleanValue()) {
                        executor = zzexcVar.zzc;
                        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzewy
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzexs zzexsVar2;
                                zzexsVar2 = zzewz.this.zze.zzd;
                                zzexsVar2.zzdD(zza);
                            }
                        });
                    }
                }
                zzfdm.zzb(zza.zza, th, "AppOpenAdLoader.onFailure");
                this.zza.zza();
                if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfhnVar = this.zzb) == null) {
                    zzfhqVar = zzexcVar.zzh;
                    zzfhc zzfhcVar = this.zzc;
                    zzfhcVar.zza(zza);
                    zzfhcVar.zzh(th);
                    zzfhcVar.zzg(false);
                    zzfhqVar.zzc(zzfhcVar.zzm());
                } else {
                    zzfhnVar.zzc(zza);
                    zzfhc zzfhcVar2 = this.zzc;
                    zzfhcVar2.zzh(th);
                    zzfhcVar2.zzg(false);
                    zzfhnVar.zza(zzfhcVar2);
                    zzfhnVar.zzh();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfhq zzfhqVar;
        zzfhn zzfhnVar;
        zzexs zzexsVar;
        zzcqx zzcqxVar = (zzcqx) obj;
        zzexc zzexcVar = this.zze;
        synchronized (zzexcVar) {
            try {
                zzexcVar.zzj = null;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziv)).booleanValue()) {
                    zzdae zzn = zzcqxVar.zzn();
                    zzexsVar = zzexcVar.zzd;
                    zzn.zzb(zzexsVar);
                }
                this.zza.zzb(zzcqxVar);
                if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfhnVar = this.zzb) == null) {
                    zzfhqVar = zzexcVar.zzh;
                    zzfhc zzfhcVar = this.zzc;
                    zzfhcVar.zzb(zzcqxVar.zzp().zzb);
                    zzfhcVar.zzd(zzcqxVar.zzl().zzg());
                    zzfhcVar.zzg(true);
                    zzfhqVar.zzc(zzfhcVar.zzm());
                } else {
                    zzfhnVar.zzg(zzcqxVar.zzp().zzb);
                    zzfhnVar.zze(zzcqxVar.zzl().zzg());
                    zzfhc zzfhcVar2 = this.zzc;
                    zzfhcVar2.zzg(true);
                    zzfhnVar.zza(zzfhcVar2);
                    zzfhnVar.zzh();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
