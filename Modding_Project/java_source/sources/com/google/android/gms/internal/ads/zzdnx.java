package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdnx {
    private final zzcvr zza;
    private final zzcxa zzb;
    private final zzcxn zzc;
    private final zzcxz zzd;
    private final zzdau zze;
    private final zzddw zzf;
    private final zzdsd zzg;
    private final zzfjr zzh;
    private final zzebt zzi;
    private final zzcmn zzj;

    public zzdnx(zzcvr zzcvrVar, zzcxa zzcxaVar, zzcxn zzcxnVar, zzcxz zzcxzVar, zzdau zzdauVar, zzddw zzddwVar, zzdsd zzdsdVar, zzfjr zzfjrVar, zzebt zzebtVar, zzcmn zzcmnVar) {
        this.zza = zzcvrVar;
        this.zzb = zzcxaVar;
        this.zzc = zzcxnVar;
        this.zzd = zzcxzVar;
        this.zze = zzdauVar;
        this.zzf = zzddwVar;
        this.zzg = zzdsdVar;
        this.zzh = zzfjrVar;
        this.zzi = zzebtVar;
        this.zzj = zzcmnVar;
    }

    public final void zza(zzdny zzdnyVar, zzcfb zzcfbVar) {
        zzdnv zzdnvVar;
        zzdnvVar = zzdnyVar.zza;
        final zzcxa zzcxaVar = this.zzb;
        Objects.requireNonNull(zzcxaVar);
        zzdnvVar.zzi(this.zza, this.zzc, this.zzd, this.zze, new com.google.android.gms.ads.internal.overlay.zzad() { // from class: com.google.android.gms.internal.ads.zzdnw
            @Override // com.google.android.gms.ads.internal.overlay.zzad
            public final void zzg() {
                zzcxa.this.zzb();
            }
        }, this.zzf);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkv)).booleanValue() && zzcfbVar != null && zzcfbVar.zzN() != null) {
            zzcgt zzN = zzcfbVar.zzN();
            zzcmn zzcmnVar = this.zzj;
            zzebt zzebtVar = this.zzi;
            zzN.zzM(zzcmnVar, zzebtVar, this.zzh);
            zzN.zzO(zzcmnVar, zzebtVar, this.zzg);
        }
    }
}
