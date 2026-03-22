package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcjm implements com.google.android.gms.ads.nonagon.signalgeneration.zzab {
    private final zzcil zza;
    private zzcvc zzb;
    private com.google.android.gms.ads.nonagon.signalgeneration.zzaz zzc;

    public /* synthetic */ zzcjm(zzcil zzcilVar, zzcjp zzcjpVar) {
        this.zza = zzcilVar;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzab
    public final /* bridge */ /* synthetic */ com.google.android.gms.ads.nonagon.signalgeneration.zzab zza(zzcvc zzcvcVar) {
        this.zzb = zzcvcVar;
        return this;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzab
    public final /* bridge */ /* synthetic */ com.google.android.gms.ads.nonagon.signalgeneration.zzab zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaz zzazVar) {
        this.zzc = zzazVar;
        return this;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzab
    public final com.google.android.gms.ads.nonagon.signalgeneration.zzac zzc() {
        zzhgd.zzc(this.zzb, zzcvc.class);
        zzhgd.zzc(this.zzc, com.google.android.gms.ads.nonagon.signalgeneration.zzaz.class);
        return new zzcjn(this.zza, this.zzc, new zzcsd(), new zzcue(), new zzdss(), this.zzb, null, null);
    }
}
