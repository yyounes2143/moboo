package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdxh {
    private final ScheduledExecutorService zza;
    private final zzgdj zzb;
    private final zzgdj zzc;
    private final zzdyd zzd;
    private final zzhfp zze;

    public zzdxh(ScheduledExecutorService scheduledExecutorService, zzgdj zzgdjVar, zzgdj zzgdjVar2, zzdyd zzdydVar, zzhfp zzhfpVar) {
        this.zza = scheduledExecutorService;
        this.zzb = zzgdjVar;
        this.zzc = zzgdjVar2;
        this.zzd = zzdydVar;
        this.zze = zzhfpVar;
    }

    public static /* synthetic */ zzdyr zza(zzdxh zzdxhVar, zzbvl zzbvlVar) {
        return (zzdyr) zzdxhVar.zzd.zza(zzbvlVar).get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfP)).intValue(), TimeUnit.SECONDS);
    }

    public static /* synthetic */ ListenableFuture zzb(zzdxh zzdxhVar, final zzbvl zzbvlVar, int i, Throwable th) {
        Bundle bundle;
        if (zzbvlVar != null && (bundle = zzbvlVar.zzm) != null) {
            bundle.putBoolean("ls", true);
        }
        return zzgcy.zzn(((zzdzu) zzdxhVar.zze.zzb()).zzd(zzbvlVar, i), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdxe
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzgcy.zzh(new zzdyr((InputStream) obj, zzbvl.this));
            }
        }, zzdxhVar.zzb);
    }

    public final ListenableFuture zzc(final zzbvl zzbvlVar) {
        ListenableFuture zza;
        String str = zzbvlVar.zzd;
        com.google.android.gms.ads.internal.zzv.zzr();
        if (com.google.android.gms.ads.internal.util.zzs.zzD(str)) {
            zza = zzgcy.zzg(new zzdyq(1));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhG)).booleanValue()) {
                zza = this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdxf
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzdxh.zza(zzdxh.this, zzbvlVar);
                    }
                });
            } else {
                zza = this.zzd.zza(zzbvlVar);
            }
        }
        final int callingUid = Binder.getCallingUid();
        zzgcp zzw = zzgcp.zzw(zza);
        zzbcm zzbcmVar = zzbcv.zzfP;
        return (zzgcp) zzgcy.zzf((zzgcp) zzgcy.zzo(zzw, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).intValue(), TimeUnit.SECONDS, this.zza), Throwable.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdxg
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzdxh.zzb(zzdxh.this, zzbvlVar, callingUid, (Throwable) obj);
            }
        }, this.zzb);
    }
}
