package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes4.dex */
public class zzcam {
    private final zzcaf zza;
    private final AtomicInteger zzb;

    public zzcam() {
        zzcaf zzcafVar = new zzcaf();
        this.zza = zzcafVar;
        this.zzb = new AtomicInteger(0);
        zzgcy.zzr(zzcafVar, new zzcak(this), zzcaa.zzg);
    }

    @Deprecated
    public final int zze() {
        return this.zzb.get();
    }

    @Deprecated
    public final void zzg() {
        this.zza.zzd(new Exception());
    }

    @Deprecated
    public final void zzh(Throwable th, String str) {
        this.zza.zzd(th);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhV)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(th, str);
        }
    }

    @Deprecated
    public final void zzi(Object obj) {
        this.zza.zzc(obj);
    }

    @Deprecated
    public final void zzj(zzcaj zzcajVar, zzcah zzcahVar) {
        zzgcy.zzr(this.zza, new zzcal(this, zzcajVar, zzcahVar), zzcaa.zzg);
    }
}
