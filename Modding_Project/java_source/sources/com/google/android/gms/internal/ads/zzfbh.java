package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfbh implements zzelh {
    private final Context zza;
    private final Executor zzb;
    private final zzchb zzc;
    private final zzfax zzd;
    private final zzezl zze;
    private final zzfch zzf;
    private final zzfhq zzg;
    private final zzfcn zzh;
    private ListenableFuture zzi;

    public zzfbh(Context context, Executor executor, zzchb zzchbVar, zzezl zzezlVar, zzfax zzfaxVar, zzfcn zzfcnVar, zzfch zzfchVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzchbVar;
        this.zze = zzezlVar;
        this.zzd = zzfaxVar;
        this.zzh = zzfcnVar;
        this.zzf = zzfchVar;
        this.zzg = zzchbVar.zzy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzdol zzk(zzezj zzezjVar) {
        zzdol zzh = this.zzc.zzh();
        zzcva zzcvaVar = new zzcva();
        zzcvaVar.zzf(this.zza);
        zzcvaVar.zzk(((zzfbf) zzezjVar).zza);
        zzcvaVar.zzj(this.zzf);
        zzh.zzd(zzcvaVar.zzl());
        zzh.zzc(new zzdbp().zzn());
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final boolean zza() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzelf zzelfVar, zzelg zzelgVar) throws RemoteException {
        zzfhn zzfhnVar;
        zzbwe zzbweVar = new zzbwe(zzmVar, str);
        zzfaz zzfazVar = (zzfaz) zzelfVar;
        String str2 = zzbweVar.zzb;
        if (str2 == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Ad unit ID should not be null for rewarded video ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfba
                @Override // java.lang.Runnable
                public final void run() {
                    zzfbh.this.zzd.zzdD(zzfdq.zzd(6, null, null));
                }
            });
            return false;
        }
        ListenableFuture listenableFuture = this.zzi;
        if (listenableFuture != null && !listenableFuture.isDone()) {
            return false;
        }
        if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            zzezl zzezlVar = this.zze;
            if (zzezlVar.zzd() != null) {
                zzfhn zzg = ((zzdom) zzezlVar.zzd()).zzg();
                zzg.zzi(5);
                com.google.android.gms.ads.internal.client.zzm zzmVar2 = zzbweVar.zza;
                zzg.zzb(zzmVar2.zzp);
                zzg.zzf(zzmVar2.zzm);
                zzfhnVar = zzg;
                Context context = this.zza;
                com.google.android.gms.ads.internal.client.zzm zzmVar3 = zzbweVar.zza;
                boolean z = zzmVar3.zzf;
                zzfdm.zza(context, z);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzji)).booleanValue() && z) {
                    this.zzc.zzk().zzo(true);
                }
                Bundle zza = zzdrn.zza(new Pair(zzdrl.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar3.zzz)), new Pair(zzdrl.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis())));
                zzfcn zzfcnVar = this.zzh;
                zzfcnVar.zzt(str2);
                zzfcnVar.zzs(com.google.android.gms.ads.internal.client.zzr.zzd());
                zzfcnVar.zzH(zzmVar3);
                zzfcnVar.zzA(zza);
                zzfcp zzJ = zzfcnVar.zzJ();
                zzfhc zzb = zzfhb.zzb(context, zzfhm.zzf(zzJ), 5, zzmVar3);
                zzfbf zzfbfVar = new zzfbf(null);
                zzfbfVar.zza = zzJ;
                ListenableFuture zzc = this.zze.zzc(new zzezm(zzfbfVar, null), new zzezk() { // from class: com.google.android.gms.internal.ads.zzfbb
                    @Override // com.google.android.gms.internal.ads.zzezk
                    public final zzcuy zza(zzezj zzezjVar) {
                        zzdol zzk;
                        zzk = zzfbh.this.zzk(zzezjVar);
                        return zzk;
                    }
                }, null);
                this.zzi = zzc;
                zzgcy.zzr(zzc, new zzfbe(this, zzelgVar, zzfhnVar, zzb, zzfbfVar), this.zzb);
                return true;
            }
        }
        zzfhnVar = null;
        Context context2 = this.zza;
        com.google.android.gms.ads.internal.client.zzm zzmVar32 = zzbweVar.zza;
        boolean z2 = zzmVar32.zzf;
        zzfdm.zza(context2, z2);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzji)).booleanValue()) {
            this.zzc.zzk().zzo(true);
        }
        Bundle zza2 = zzdrn.zza(new Pair(zzdrl.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar32.zzz)), new Pair(zzdrl.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis())));
        zzfcn zzfcnVar2 = this.zzh;
        zzfcnVar2.zzt(str2);
        zzfcnVar2.zzs(com.google.android.gms.ads.internal.client.zzr.zzd());
        zzfcnVar2.zzH(zzmVar32);
        zzfcnVar2.zzA(zza2);
        zzfcp zzJ2 = zzfcnVar2.zzJ();
        zzfhc zzb2 = zzfhb.zzb(context2, zzfhm.zzf(zzJ2), 5, zzmVar32);
        zzfbf zzfbfVar2 = new zzfbf(null);
        zzfbfVar2.zza = zzJ2;
        ListenableFuture zzc2 = this.zze.zzc(new zzezm(zzfbfVar2, null), new zzezk() { // from class: com.google.android.gms.internal.ads.zzfbb
            @Override // com.google.android.gms.internal.ads.zzezk
            public final zzcuy zza(zzezj zzezjVar) {
                zzdol zzk;
                zzk = zzfbh.this.zzk(zzezjVar);
                return zzk;
            }
        }, null);
        this.zzi = zzc2;
        zzgcy.zzr(zzc2, new zzfbe(this, zzelgVar, zzfhnVar, zzb2, zzfbfVar2), this.zzb);
        return true;
    }

    public final void zzj(int i) {
        this.zzh.zzp().zza(i);
    }
}
