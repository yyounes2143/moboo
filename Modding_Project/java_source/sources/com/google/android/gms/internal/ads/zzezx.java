package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzezx implements zzelh {
    private final Context zza;
    private final Executor zzb;
    private final zzchb zzc;
    private final zzekr zzd;
    private final zzfax zze;
    @Nullable
    private zzbdq zzf;
    private final zzfhq zzg;
    private final zzfcn zzh;
    private ListenableFuture zzi;

    public zzezx(Context context, Executor executor, zzchb zzchbVar, zzekr zzekrVar, zzfax zzfaxVar, zzfcn zzfcnVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzchbVar;
        this.zzd = zzekrVar;
        this.zzh = zzfcnVar;
        this.zze = zzfaxVar;
        this.zzg = zzchbVar.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final boolean zza() {
        ListenableFuture listenableFuture = this.zzi;
        if (listenableFuture != null && !listenableFuture.isDone()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzelf zzelfVar, zzelg zzelgVar) {
        zzdga zzf;
        zzfhn zzfhnVar;
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Ad unit ID should not be null for interstitial ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezr
                @Override // java.lang.Runnable
                public final void run() {
                    zzezx.this.zzd.zzdD(zzfdq.zzd(6, null, null));
                }
            });
            return false;
        } else if (zza()) {
            return false;
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzji)).booleanValue() && zzmVar.zzf) {
                this.zzc.zzk().zzo(true);
            }
            com.google.android.gms.ads.internal.client.zzr zzrVar = ((zzezq) zzelfVar).zza;
            Bundle zza = zzdrn.zza(new Pair(zzdrl.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar.zzz)), new Pair(zzdrl.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis())));
            zzfcn zzfcnVar = this.zzh;
            zzfcnVar.zzt(str);
            zzfcnVar.zzs(zzrVar);
            zzfcnVar.zzH(zzmVar);
            zzfcnVar.zzA(zza);
            Context context = this.zza;
            zzfcp zzJ = zzfcnVar.zzJ();
            zzfhc zzb = zzfhb.zzb(context, zzfhm.zzf(zzJ), 4, zzmVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziw)).booleanValue()) {
                zzdfz zzf2 = this.zzc.zzf();
                zzcva zzcvaVar = new zzcva();
                zzcvaVar.zzf(context);
                zzcvaVar.zzk(zzJ);
                zzf2.zze(zzcvaVar.zzl());
                zzdbp zzdbpVar = new zzdbp();
                zzekr zzekrVar = this.zzd;
                Executor executor = this.zzb;
                zzdbpVar.zzj(zzekrVar, executor);
                zzdbpVar.zzk(zzekrVar, executor);
                zzf2.zzd(zzdbpVar.zzn());
                zzf2.zzc(new zzeja(this.zzf));
                zzf = zzf2.zzf();
            } else {
                zzdbp zzdbpVar2 = new zzdbp();
                zzfax zzfaxVar = this.zze;
                if (zzfaxVar != null) {
                    Executor executor2 = this.zzb;
                    zzdbpVar2.zze(zzfaxVar, executor2);
                    zzdbpVar2.zzf(zzfaxVar, executor2);
                    zzdbpVar2.zzb(zzfaxVar, executor2);
                }
                zzdfz zzf3 = this.zzc.zzf();
                zzcva zzcvaVar2 = new zzcva();
                zzcvaVar2.zzf(context);
                zzcvaVar2.zzk(zzJ);
                zzf3.zze(zzcvaVar2.zzl());
                zzekr zzekrVar2 = this.zzd;
                Executor executor3 = this.zzb;
                zzdbpVar2.zzj(zzekrVar2, executor3);
                zzdbpVar2.zze(zzekrVar2, executor3);
                zzdbpVar2.zzf(zzekrVar2, executor3);
                zzdbpVar2.zzb(zzekrVar2, executor3);
                zzdbpVar2.zza(zzekrVar2, executor3);
                zzdbpVar2.zzl(zzekrVar2, executor3);
                zzdbpVar2.zzk(zzekrVar2, executor3);
                zzdbpVar2.zzi(zzekrVar2, executor3);
                zzdbpVar2.zzc(zzekrVar2, executor3);
                zzf3.zzd(zzdbpVar2.zzn());
                zzf3.zzc(new zzeja(this.zzf));
                zzf = zzf3.zzf();
            }
            zzdga zzdgaVar = zzf;
            if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
                zzfhnVar = zzdgaVar.zze();
                zzfhnVar.zzi(4);
                zzfhnVar.zzb(zzmVar.zzp);
                zzfhnVar.zzf(zzmVar.zzm);
            } else {
                zzfhnVar = null;
            }
            zzfhn zzfhnVar2 = zzfhnVar;
            zzcsb zza2 = zzdgaVar.zza();
            ListenableFuture zzh = zza2.zzh(zza2.zzi());
            this.zzi = zzh;
            zzgcy.zzr(zzh, new zzezw(this, zzelgVar, zzfhnVar2, zzb, zzdgaVar), this.zzb);
            return true;
        }
    }

    public final void zzi(zzbdq zzbdqVar) {
        this.zzf = zzbdqVar;
    }
}
