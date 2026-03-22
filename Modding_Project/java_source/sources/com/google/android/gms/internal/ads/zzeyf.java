package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeyf implements zzgcu {
    final /* synthetic */ zzfhn zza;
    final /* synthetic */ zzfhc zzb;
    final /* synthetic */ zzcpu zzc;
    final /* synthetic */ zzeyg zzd;

    public zzeyf(zzeyg zzeygVar, zzfhn zzfhnVar, zzfhc zzfhcVar, zzcpu zzcpuVar) {
        this.zza = zzfhnVar;
        this.zzb = zzfhcVar;
        this.zzc = zzcpuVar;
        this.zzd = zzeygVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        boolean z;
        zzfhq zzfhqVar;
        zzfhn zzfhnVar;
        zzcyq zzcyqVar;
        zzdaw zzdawVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfX)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Banner ad failed to load", th);
        }
        zzeyg zzeygVar = this.zzd;
        synchronized (zzeygVar) {
            try {
                zzcpu zzcpuVar = this.zzc;
                com.google.android.gms.ads.internal.client.zze zza = zzcpuVar.zzc().zza(th);
                zzeygVar.zzn = zza;
                zzcpuVar.zze().zzdD(zza);
                zzfdm.zzb(zza.zza, th, "BannerAdLoader.onFailure");
                z = zzeygVar.zzm;
                if (z) {
                    zzeygVar.zzt();
                    zzcyqVar = zzeygVar.zzh;
                    zzdawVar = zzeygVar.zzj;
                    zzcyqVar.zzd(zzdawVar.zzc());
                }
                if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfhnVar = this.zza) == null) {
                    zzfhqVar = zzeygVar.zzi;
                    zzfhc zzfhcVar = this.zzb;
                    zzfhcVar.zza(zza);
                    zzfhcVar.zzh(th);
                    zzfhcVar.zzg(false);
                    zzfhqVar.zzc(zzfhcVar.zzm());
                } else {
                    zzfhnVar.zzc(zza);
                    zzfhc zzfhcVar2 = this.zzb;
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
        boolean z;
        zzfhq zzfhqVar;
        zzfhn zzfhnVar;
        zzeyg zzeygVar = this.zzd;
        zzcop zzcopVar = (zzcop) obj;
        synchronized (zzeygVar) {
            try {
                z = zzeygVar.zzm;
                if (z) {
                    zzeygVar.zzq();
                }
                if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfhnVar = this.zza) == null) {
                    zzfhqVar = zzeygVar.zzi;
                    zzfhc zzfhcVar = this.zzb;
                    zzfhcVar.zzb(zzcopVar.zzp().zzb);
                    zzfhcVar.zzd(zzcopVar.zzl().zzg());
                    zzfhcVar.zzg(true);
                    zzfhqVar.zzc(zzfhcVar.zzm());
                } else {
                    zzfhnVar.zzg(zzcopVar.zzp().zzb);
                    zzfhnVar.zze(zzcopVar.zzl().zzg());
                    zzfhc zzfhcVar2 = this.zzb;
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
