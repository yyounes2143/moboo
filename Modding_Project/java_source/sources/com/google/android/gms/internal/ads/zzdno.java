package com.google.android.gms.internal.ads;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdno {
    private final zzcvr zza;
    private final zzcxa zzb;
    private final zzcxn zzc;
    private final zzcxz zzd;
    private final zzdau zze;
    private final zzfbu zzf;
    private final zzfbx zzg;
    private final zzcmn zzh;

    public zzdno(zzcvr zzcvrVar, zzcxa zzcxaVar, zzcxn zzcxnVar, zzcxz zzcxzVar, zzdau zzdauVar, zzfbu zzfbuVar, zzfbx zzfbxVar, zzcmn zzcmnVar) {
        this.zza = zzcvrVar;
        this.zzb = zzcxaVar;
        this.zzc = zzcxnVar;
        this.zzd = zzcxzVar;
        this.zze = zzdauVar;
        this.zzf = zzfbuVar;
        this.zzg = zzfbxVar;
        this.zzh = zzcmnVar;
    }

    public final void zza(zzdns zzdnsVar) {
        zzdnf zzdnfVar;
        final zzcxa zzcxaVar = this.zzb;
        zzdnfVar = zzdnsVar.zza;
        Objects.requireNonNull(zzcxaVar);
        zzdnfVar.zzh(this.zza, this.zzc, this.zzd, this.zze, new com.google.android.gms.ads.internal.overlay.zzad() { // from class: com.google.android.gms.internal.ads.zzdnn
            @Override // com.google.android.gms.ads.internal.overlay.zzad
            public final void zzg() {
                zzcxa.this.zzb();
            }
        });
        zzdnsVar.zzh(this.zzf, this.zzg, this.zzh);
    }
}
