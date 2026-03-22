package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzezw implements zzgcu {
    final /* synthetic */ zzelg zza;
    final /* synthetic */ zzfhn zzb;
    final /* synthetic */ zzfhc zzc;
    final /* synthetic */ zzdga zzd;
    final /* synthetic */ zzezx zze;

    public zzezw(zzezx zzezxVar, zzelg zzelgVar, zzfhn zzfhnVar, zzfhc zzfhcVar, zzdga zzdgaVar) {
        this.zza = zzelgVar;
        this.zzb = zzfhnVar;
        this.zzc = zzfhcVar;
        this.zzd = zzdgaVar;
        this.zze = zzezxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        zzfhq zzfhqVar;
        zzfhn zzfhnVar;
        Executor executor;
        Executor executor2;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfX)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Interstitial ad failed to load", th);
        }
        zzdga zzdgaVar = this.zzd;
        final com.google.android.gms.ads.internal.client.zze zza = zzdgaVar.zza().zza(th);
        zzezx zzezxVar = this.zze;
        synchronized (zzezxVar) {
            try {
                zzezxVar.zzi = null;
                zzdgaVar.zzb().zzdD(zza);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziw)).booleanValue()) {
                    executor = zzezxVar.zzb;
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezs
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzekr zzekrVar;
                            zzekrVar = zzezw.this.zze.zzd;
                            zzekrVar.zzdD(zza);
                        }
                    });
                    executor2 = zzezxVar.zzb;
                    executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezt
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzfax zzfaxVar;
                            zzfaxVar = zzezw.this.zze.zze;
                            zzfaxVar.zzdD(zza);
                        }
                    });
                }
                zzfdm.zzb(zza.zza, th, "InterstitialAdLoader.onFailure");
                this.zza.zza();
                if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfhnVar = this.zzb) == null) {
                    zzfhqVar = zzezxVar.zzg;
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
        Executor executor;
        Executor executor2;
        zzekr zzekrVar;
        zzfax zzfaxVar;
        zzdew zzdewVar = (zzdew) obj;
        zzezx zzezxVar = this.zze;
        synchronized (zzezxVar) {
            try {
                zzezxVar.zzi = null;
                zzbcm zzbcmVar = zzbcv.zziw;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
                    zzdae zzn = zzdewVar.zzn();
                    zzekrVar = zzezxVar.zzd;
                    zzn.zza(zzekrVar);
                    zzfaxVar = zzezxVar.zze;
                    zzn.zzd(zzfaxVar);
                }
                this.zza.zzb(zzdewVar);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
                    executor = zzezxVar.zzb;
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezu
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzekr zzekrVar2;
                            zzekrVar2 = zzezw.this.zze.zzd;
                            zzekrVar2.zzt();
                        }
                    });
                    executor2 = zzezxVar.zzb;
                    executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezv
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzfax zzfaxVar2;
                            zzfaxVar2 = zzezw.this.zze.zze;
                            zzfaxVar2.zzt();
                        }
                    });
                }
                if (!((Boolean) zzbeo.zzc.zze()).booleanValue() || (zzfhnVar = this.zzb) == null) {
                    zzfhqVar = zzezxVar.zzg;
                    zzfhc zzfhcVar = this.zzc;
                    zzfhcVar.zzb(zzdewVar.zzp().zzb);
                    zzfhcVar.zzd(zzdewVar.zzl().zzg());
                    zzfhcVar.zzg(true);
                    zzfhqVar.zzc(zzfhcVar.zzm());
                } else {
                    zzfhnVar.zzg(zzdewVar.zzp().zzb);
                    zzfhnVar.zze(zzdewVar.zzl().zzg());
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
