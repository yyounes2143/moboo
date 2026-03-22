package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcin implements zzcoc {
    private final zzcil zza;
    private zzezp zzb;
    private zzeys zzc;
    private zzdbr zzd;
    private zzcvc zze;

    public /* synthetic */ zzcin(zzcil zzcilVar, zzcjp zzcjpVar) {
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

    @Override // com.google.android.gms.internal.ads.zzcoc
    public final /* bridge */ /* synthetic */ zzcoc zzc(zzdbr zzdbrVar) {
        this.zzd = zzdbrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcoc
    public final /* bridge */ /* synthetic */ zzcoc zzd(zzcvc zzcvcVar) {
        this.zze = zzcvcVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcuy
    /* renamed from: zze */
    public final zzcod zzh() {
        zzhgd.zzc(this.zzd, zzdbr.class);
        zzhgd.zzc(this.zze, zzcvc.class);
        return new zzcio(this.zza, new zzcsd(), new zzfdu(), new zzcue(), new zzdss(), this.zzd, this.zze, zzehf.zza(), null, this.zzb, this.zzc);
    }
}
