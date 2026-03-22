package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzciz implements zzdtg {
    private final Long zza;
    private final String zzb;
    private final zzcil zzc;
    private final zzcjb zzd;

    public zzciz(zzcil zzcilVar, zzcjb zzcjbVar, Long l, String str) {
        this.zzc = zzcilVar;
        this.zzd = zzcjbVar;
        this.zza = l;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdtg
    public final zzdtq zza() {
        Context context;
        zzcjb zzcjbVar = this.zzd;
        long longValue = this.zza.longValue();
        context = zzcjbVar.zze;
        return zzdtr.zza(longValue, context, zzcjbVar.zzc(), this.zzc, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzdtg
    public final zzdtu zzb() {
        Context context;
        zzcjb zzcjbVar = this.zzd;
        long longValue = this.zza.longValue();
        context = zzcjbVar.zze;
        return zzdtv.zza(longValue, context, zzcjbVar.zzc(), this.zzc, this.zzb);
    }
}
