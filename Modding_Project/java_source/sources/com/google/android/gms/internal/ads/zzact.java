package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzact implements zzaem {
    private final zzacw zza;
    private final long zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;
    private final long zzf;

    public zzact(zzacw zzacwVar, long j, long j2, long j3, long j4, long j5, long j6) {
        this.zza = zzacwVar;
        this.zzb = j;
        this.zzc = j3;
        this.zzd = j4;
        this.zze = j5;
        this.zzf = j6;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final long zza() {
        return this.zzb;
    }

    public final long zzf(long j) {
        return this.zza.zza(j);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzaek zzg(long j) {
        zzaen zzaenVar = new zzaen(j, zzacv.zzf(this.zza.zza(j), 0L, this.zzc, this.zzd, this.zze, this.zzf));
        return new zzaek(zzaenVar, zzaenVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean zzh() {
        return true;
    }
}
