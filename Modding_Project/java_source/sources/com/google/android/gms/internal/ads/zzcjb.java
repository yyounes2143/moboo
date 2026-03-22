package com.google.android.gms.internal.ads;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcjb implements zzdto {
    final zzhge zza;
    final zzhge zzb;
    final zzhge zzc;
    final zzhge zzd;
    private final Context zze;
    private final zzbkv zzf;
    private final zzcil zzg;
    private final zzcjb zzh = this;

    public zzcjb(zzcil zzcilVar, Context context, zzbkv zzbkvVar) {
        this.zzg = zzcilVar;
        this.zze = context;
        this.zzf = zzbkvVar;
        zzhfv zza = zzhfw.zza(this);
        this.zza = zza;
        zzhfv zza2 = zzhfw.zza(zzbkvVar);
        this.zzb = zza2;
        zzdtk zzdtkVar = new zzdtk(zza2);
        this.zzc = zzdtkVar;
        this.zzd = zzhfu.zzc(new zzdtm(zza, zzdtkVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdto
    public final zzdtf zzb() {
        return new zzciy(this.zzg, this.zzh, null);
    }

    public final zzdtj zzc() {
        return zzdtk.zzc(this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzdto
    public final zzdtl zzd() {
        return (zzdtl) this.zzd.zzb();
    }
}
