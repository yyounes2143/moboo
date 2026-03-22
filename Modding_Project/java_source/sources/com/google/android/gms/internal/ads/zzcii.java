package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcii implements zzdgv {
    private final zzcil zza;
    private zzezp zzb;
    private zzeys zzc;
    private zzdbr zzd;
    private zzcvc zze;
    private zzdgr zzf;
    private zzcom zzg;

    public /* synthetic */ zzcii(zzcil zzcilVar, zzcjp zzcjpVar) {
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

    @Override // com.google.android.gms.internal.ads.zzdgv
    public final /* bridge */ /* synthetic */ zzdgv zzc(zzcom zzcomVar) {
        this.zzg = zzcomVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdgv
    public final /* bridge */ /* synthetic */ zzdgv zzd(zzdgr zzdgrVar) {
        this.zzf = zzdgrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdgv
    public final /* bridge */ /* synthetic */ zzdgv zze(zzdbr zzdbrVar) {
        this.zzd = zzdbrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdgv
    public final /* bridge */ /* synthetic */ zzdgv zzf(zzcvc zzcvcVar) {
        this.zze = zzcvcVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcuy
    /* renamed from: zzg */
    public final zzdgw zzh() {
        zzhgd.zzc(this.zzd, zzdbr.class);
        zzhgd.zzc(this.zze, zzcvc.class);
        zzhgd.zzc(this.zzf, zzdgr.class);
        zzhgd.zzc(this.zzg, zzcom.class);
        return new zzcij(this.zza, this.zzg, this.zzf, new zzcsd(), new zzfdu(), new zzcue(), new zzdss(), this.zzd, this.zze, zzehf.zza(), null, this.zzb, this.zzc);
    }
}
