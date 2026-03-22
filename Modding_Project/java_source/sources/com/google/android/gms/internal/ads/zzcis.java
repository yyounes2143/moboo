package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcis implements zzcpt {
    private final zzcil zza;
    private zzezp zzb;
    private zzeys zzc;
    private zzdbr zzd;
    private zzcvc zze;
    private zzeja zzf;
    private zzcqp zzg;
    private zzehd zzh;
    private zzcom zzi;
    private zzdgr zzj;

    public /* synthetic */ zzcis(zzcil zzcilVar, zzcjp zzcjpVar) {
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

    @Override // com.google.android.gms.internal.ads.zzcpt
    public final /* bridge */ /* synthetic */ zzcpt zzc(zzcom zzcomVar) {
        this.zzi = zzcomVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcpt
    public final /* bridge */ /* synthetic */ zzcpt zzd(zzdgr zzdgrVar) {
        this.zzj = zzdgrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcpt
    public final /* bridge */ /* synthetic */ zzcpt zze(zzeja zzejaVar) {
        this.zzf = zzejaVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcpt
    public final /* bridge */ /* synthetic */ zzcpt zzf(zzdbr zzdbrVar) {
        this.zzd = zzdbrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcpt
    public final /* bridge */ /* synthetic */ zzcpt zzg(zzcqp zzcqpVar) {
        this.zzg = zzcqpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcpt
    public final /* bridge */ /* synthetic */ zzcpt zzi(zzcvc zzcvcVar) {
        this.zze = zzcvcVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcpt
    public final /* bridge */ /* synthetic */ zzcpt zzj(zzehd zzehdVar) {
        this.zzh = zzehdVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcuy
    /* renamed from: zzk */
    public final zzcpu zzh() {
        zzhgd.zzc(this.zzd, zzdbr.class);
        zzhgd.zzc(this.zze, zzcvc.class);
        zzhgd.zzc(this.zzf, zzeja.class);
        zzhgd.zzc(this.zzg, zzcqp.class);
        if (this.zzh == null) {
            this.zzh = zzehf.zza();
        }
        zzhgd.zzc(this.zzi, zzcom.class);
        zzhgd.zzc(this.zzj, zzdgr.class);
        return new zzcit(this.zza, this.zzi, this.zzj, new zzcsd(), new zzfdu(), new zzcue(), new zzdss(), this.zzd, this.zze, this.zzh, this.zzf, this.zzg, null, this.zzb, this.zzc);
    }
}
