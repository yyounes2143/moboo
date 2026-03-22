package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcjd implements zzdfz {
    private final zzcil zza;
    private zzezp zzb;
    private zzeys zzc;
    private zzdbr zzd;
    private zzcvc zze;
    private zzeja zzf;

    public /* synthetic */ zzcjd(zzcil zzcilVar, zzcjp zzcjpVar) {
        this.zza = zzcilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcuy
    public final /* synthetic */ zzcuy zza(@Nullable zzeys zzeysVar) {
        this.zzc = zzeysVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcuy
    public final /* synthetic */ zzcuy zzb(@Nullable zzezp zzezpVar) {
        this.zzb = zzezpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdfz
    public final /* bridge */ /* synthetic */ zzdfz zzc(zzeja zzejaVar) {
        this.zzf = zzejaVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdfz
    public final /* bridge */ /* synthetic */ zzdfz zzd(zzdbr zzdbrVar) {
        this.zzd = zzdbrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdfz
    public final /* bridge */ /* synthetic */ zzdfz zze(zzcvc zzcvcVar) {
        this.zze = zzcvcVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcuy
    /* renamed from: zzf */
    public final zzdga zzh() {
        zzhgd.zzc(this.zzd, zzdbr.class);
        zzhgd.zzc(this.zze, zzcvc.class);
        zzhgd.zzc(this.zzf, zzeja.class);
        return new zzcje(this.zza, new zzcsd(), new zzfdu(), new zzcue(), new zzdss(), this.zzd, this.zze, zzehf.zza(), this.zzf, null, this.zzb, this.zzc);
    }
}
