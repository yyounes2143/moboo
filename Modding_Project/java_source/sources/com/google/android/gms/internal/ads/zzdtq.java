package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdtq implements zzdte {
    private final long zza;
    private final zzekz zzb;

    public zzdtq(long j, Context context, zzdtj zzdtjVar, zzchb zzchbVar, String str) {
        this.zza = j;
        zzezz zzu = zzchbVar.zzu();
        zzu.zzc(context);
        zzu.zza(new com.google.android.gms.ads.internal.client.zzr());
        zzu.zzb(str);
        zzekz zza = zzu.zzd().zza();
        this.zzb = zza;
        zza.zzD(new zzdtp(this, zzdtjVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final void zza() {
        this.zzb.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final void zzb(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        this.zzb.zzab(zzmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdte
    public final void zzc() {
        this.zzb.zzW(ObjectWrapper.wrap(null));
    }
}
