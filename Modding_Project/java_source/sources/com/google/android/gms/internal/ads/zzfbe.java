package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfbe implements zzgcu {
    final /* synthetic */ zzelg zza;
    final /* synthetic */ zzfhn zzb;
    final /* synthetic */ zzfhc zzc;
    final /* synthetic */ zzfbf zzd;
    final /* synthetic */ zzfbh zze;

    public zzfbe(zzfbh zzfbhVar, zzelg zzelgVar, zzfhn zzfhnVar, zzfhc zzfhcVar, zzfbf zzfbfVar) {
        this.zza = zzelgVar;
        this.zzb = zzfhnVar;
        this.zzc = zzfhcVar;
        this.zzd = zzfbfVar;
        this.zze = zzfbhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        zzezl zzezlVar;
        final com.google.android.gms.ads.internal.client.zze zza;
        zzfax zzfaxVar;
        zzdol zzk;
        zzfhq zzfhqVar;
        zzfhn zzfhnVar;
        Executor executor;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfX)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Rewarded ad failed to load", th);
        }
        zzfbh zzfbhVar = this.zze;
        zzezlVar = zzfbhVar.zze;
        zzdom zzdomVar = (zzdom) zzezlVar.zzd();
        if (zzdomVar == null) {
            zza = zzfdq.zzb(th, null);
        } else {
            zza = zzdomVar.zzb().zza(th);
        }
        synchronized (zzfbhVar) {
            try {
                if (zzdomVar == null) {
                    zzfaxVar = zzfbhVar.zzd;
                    zzfaxVar.zzdD(zza);
                    zzk = zzfbhVar.zzk(this.zzd);
                    zzk.zze().zzb().zzc().zzh();
                } else {
                    zzdomVar.zza().zzdD(zza);
                    executor = zzfbhVar.zzb;
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbc
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzfax zzfaxVar2;
                            zzfaxVar2 = zzfbe.this.zze.zzd;
                            zzfaxVar2.zzdD(zza);
                        }
                    });
                }
                zzfdm.zzb(zza.zza, th, "RewardedAdLoader.onFailure");
                this.zza.zza();
                if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfhnVar = this.zzb) == null) {
                    zzfhqVar = zzfbhVar.zzg;
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
        zzfax zzfaxVar;
        Executor executor;
        final zzfax zzfaxVar2;
        zzfax zzfaxVar3;
        zzfhq zzfhqVar;
        zzfhn zzfhnVar;
        zzfbh zzfbhVar = this.zze;
        zzdoh zzdohVar = (zzdoh) obj;
        synchronized (zzfbhVar) {
            try {
                zzdae zzn = zzdohVar.zzn();
                zzfaxVar = zzfbhVar.zzd;
                zzn.zzd(zzfaxVar);
                this.zza.zzb(zzdohVar);
                executor = zzfbhVar.zzb;
                zzfaxVar2 = zzfbhVar.zzd;
                Objects.requireNonNull(zzfaxVar2);
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbd
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfax.this.zzt();
                    }
                });
                zzfaxVar3 = zzfbhVar.zzd;
                zzfaxVar3.onAdMetadataChanged();
                if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfhnVar = this.zzb) == null) {
                    zzfhqVar = zzfbhVar.zzg;
                    zzfhc zzfhcVar = this.zzc;
                    zzfhcVar.zzb(zzdohVar.zzp().zzb);
                    zzfhcVar.zzd(zzdohVar.zzl().zzg());
                    zzfhcVar.zzg(true);
                    zzfhqVar.zzc(zzfhcVar.zzm());
                } else {
                    zzfhnVar.zzg(zzdohVar.zzp().zzb);
                    zzfhnVar.zze(zzdohVar.zzl().zzg());
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
