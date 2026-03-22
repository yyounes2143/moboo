package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcjk implements zzdol {
    private final zzcil zza;
    private zzezp zzb;
    private zzeys zzc;
    private zzdbr zzd;
    private zzcvc zze;

    public /* synthetic */ zzcjk(zzcil zzcilVar, zzcjp zzcjpVar) {
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

    @Override // com.google.android.gms.internal.ads.zzdol
    public final /* bridge */ /* synthetic */ zzdol zzc(zzdbr zzdbrVar) {
        this.zzd = zzdbrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdol
    public final /* bridge */ /* synthetic */ zzdol zzd(zzcvc zzcvcVar) {
        this.zze = zzcvcVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcuy
    /* renamed from: zze */
    public final zzdom zzh() {
        zzhgd.zzc(this.zzd, zzdbr.class);
        zzhgd.zzc(this.zze, zzcvc.class);
        return new zzcjl(this.zza, new zzcsd(), new zzfdu(), new zzcue(), new zzdss(), this.zzd, this.zze, zzehf.zza(), null, this.zzb, this.zzc);
    }
}
