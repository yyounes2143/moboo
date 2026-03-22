package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzelo implements zzelh {
    private final zzfcn zza;
    private final zzchb zzb;
    private final Context zzc;
    private final zzele zzd;
    private final zzfhq zze;
    @Nullable
    private zzcrm zzf;

    public zzelo(zzchb zzchbVar, Context context, zzele zzeleVar, zzfcn zzfcnVar) {
        this.zzb = zzchbVar;
        this.zzc = context;
        this.zzd = zzeleVar;
        this.zza = zzfcnVar;
        this.zze = zzchbVar.zzy();
        zzfcnVar.zzv(zzeleVar.zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final boolean zza() {
        zzcrm zzcrmVar = this.zzf;
        if (zzcrmVar != null && zzcrmVar.zzf()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzelf zzelfVar, zzelg zzelgVar) throws RemoteException {
        com.google.android.gms.ads.internal.zzv.zzr();
        Context context = this.zzc;
        if (com.google.android.gms.ads.internal.util.zzs.zzI(context) && zzmVar.zzs == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to load the ad because app ID is missing.");
            this.zzb.zzA().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzelj
                @Override // java.lang.Runnable
                public final void run() {
                    zzelo.this.zzd.zza().zzdD(zzfdq.zzd(4, null, null));
                }
            });
            return false;
        } else if (str == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Ad unit ID should not be null for NativeAdLoader.");
            this.zzb.zzA().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzelk
                @Override // java.lang.Runnable
                public final void run() {
                    zzelo.this.zzd.zza().zzdD(zzfdq.zzd(6, null, null));
                }
            });
            return false;
        } else {
            boolean z = zzmVar.zzf;
            zzfdm.zza(context, z);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzji)).booleanValue() && z) {
                this.zzb.zzk().zzo(true);
            }
            int i3 = ((zzeli) zzelfVar).zza;
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
            String zza = zzdrl.PUBLIC_API_CALL.zza();
            Long valueOf = Long.valueOf(currentTimeMillis);
            Bundle zza2 = zzdrn.zza(new Pair(zza, valueOf), new Pair(zzdrl.DYNAMITE_ENTER.zza(), valueOf));
            zzfcn zzfcnVar = this.zza;
            zzfcnVar.zzH(zzmVar);
            zzfcnVar.zzA(zza2);
            zzfcnVar.zzC(i3);
            zzfcp zzJ = zzfcnVar.zzJ();
            zzfhc zzb = zzfhb.zzb(context, zzfhm.zzf(zzJ), 8, zzmVar);
            com.google.android.gms.ads.internal.client.zzcl zzclVar = zzJ.zzn;
            if (zzclVar != null) {
                this.zzd.zzd().zzm(zzclVar);
            }
            zzchb zzchbVar = this.zzb;
            zzdgv zzg = zzchbVar.zzg();
            zzcva zzcvaVar = new zzcva();
            zzcvaVar.zzf(context);
            zzcvaVar.zzk(zzJ);
            zzg.zzf(zzcvaVar.zzl());
            zzdbp zzdbpVar = new zzdbp();
            zzele zzeleVar = this.zzd;
            zzdbpVar.zzk(zzeleVar.zzd(), zzchbVar.zzA());
            zzg.zze(zzdbpVar.zzn());
            zzg.zzd(zzeleVar.zzc());
            zzfhn zzfhnVar = null;
            zzg.zzc(new zzcom(null));
            zzdgw zzg2 = zzg.zzg();
            if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
                zzfhnVar = zzg2.zzf();
                zzfhnVar.zzi(8);
                zzfhnVar.zzb(zzmVar.zzp);
                zzfhnVar.zzf(zzmVar.zzm);
            }
            zzfhn zzfhnVar2 = zzfhnVar;
            zzchbVar.zzx().zzc(1);
            zzgdj zzc = zzffn.zzc();
            ScheduledExecutorService zzB = zzchbVar.zzB();
            zzcsb zza3 = zzg2.zza();
            zzcrm zzcrmVar = new zzcrm(zzc, zzB, zza3.zzh(zza3.zzi()));
            this.zzf = zzcrmVar;
            zzcrmVar.zze(new zzeln(this, zzelgVar, zzfhnVar2, zzb, zzg2));
            return true;
        }
    }
}
