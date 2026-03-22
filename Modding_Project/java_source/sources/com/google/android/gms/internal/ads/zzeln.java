package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeln implements zzgcu {
    final /* synthetic */ zzelg zza;
    final /* synthetic */ zzfhn zzb;
    final /* synthetic */ zzfhc zzc;
    final /* synthetic */ zzdgw zzd;
    final /* synthetic */ zzelo zze;

    public zzeln(zzelo zzeloVar, zzelg zzelgVar, zzfhn zzfhnVar, zzfhc zzfhcVar, zzdgw zzdgwVar) {
        this.zza = zzelgVar;
        this.zzb = zzfhnVar;
        this.zzc = zzfhcVar;
        this.zzd = zzdgwVar;
        this.zze = zzeloVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        zzchb zzchbVar;
        zzfhq zzfhqVar;
        zzfhn zzfhnVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfX)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Native ad failed to load", th);
        }
        zzdgw zzdgwVar = this.zzd;
        final com.google.android.gms.ads.internal.client.zze zza = zzdgwVar.zza().zza(th);
        zzdgwVar.zzb().zzdD(zza);
        zzelo zzeloVar = this.zze;
        zzchbVar = zzeloVar.zzb;
        zzchbVar.zzA().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzelm
            @Override // java.lang.Runnable
            public final void run() {
                zzele zzeleVar;
                zzeleVar = zzeln.this.zze.zzd;
                zzeleVar.zza().zzdD(zza);
            }
        });
        zzfdm.zzb(zza.zza, th, "NativeAdLoader.onFailure");
        this.zza.zza();
        if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfhnVar = this.zzb) == null) {
            zzfhqVar = zzeloVar.zze;
            zzfhc zzfhcVar = this.zzc;
            zzfhcVar.zza(zza);
            zzfhcVar.zzh(th);
            zzfhcVar.zzg(false);
            zzfhqVar.zzc(zzfhcVar.zzm());
            return;
        }
        zzfhnVar.zzc(zza);
        zzfhc zzfhcVar2 = this.zzc;
        zzfhcVar2.zzh(th);
        zzfhcVar2.zzg(false);
        zzfhnVar.zza(zzfhcVar2);
        zzfhnVar.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzele zzeleVar;
        zzchb zzchbVar;
        zzfhq zzfhqVar;
        zzfhn zzfhnVar;
        zzelo zzeloVar = this.zze;
        zzcqx zzcqxVar = (zzcqx) obj;
        synchronized (zzeloVar) {
            try {
                zzdae zzn = zzcqxVar.zzn();
                zzeleVar = zzeloVar.zzd;
                zzn.zza(zzeleVar.zzd());
                this.zza.zzb(zzcqxVar);
                zzchbVar = zzeloVar.zzb;
                zzchbVar.zzA().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzell
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzele zzeleVar2;
                        zzeleVar2 = zzeln.this.zze.zzd;
                        zzeleVar2.zzb().zzt();
                    }
                });
                if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfhnVar = this.zzb) == null) {
                    zzfhqVar = zzeloVar.zze;
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
