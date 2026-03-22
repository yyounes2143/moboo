package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzciy implements zzdtf {
    private final zzcil zza;
    private final zzcjb zzb;
    private Long zzc;
    private String zzd;

    public /* synthetic */ zzciy(zzcil zzcilVar, zzcjb zzcjbVar, zzcjp zzcjpVar) {
        this.zza = zzcilVar;
        this.zzb = zzcjbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtf
    public final /* bridge */ /* synthetic */ zzdtf zza(String str) {
        str.getClass();
        this.zzd = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdtf
    public final /* bridge */ /* synthetic */ zzdtf zzb(long j) {
        this.zzc = Long.valueOf(j);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdtf
    public final zzdtg zzc() {
        zzhgd.zzc(this.zzc, Long.class);
        zzhgd.zzc(this.zzd, String.class);
        return new zzciz(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
