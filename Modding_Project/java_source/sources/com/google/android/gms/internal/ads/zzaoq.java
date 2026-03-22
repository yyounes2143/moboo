package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaoq implements zzaem {
    private final zzaon zza;
    private final int zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;

    public zzaoq(zzaon zzaonVar, int i, long j, long j2) {
        this.zza = zzaonVar;
        this.zzb = i;
        this.zzc = j;
        long j3 = (j2 - j) / zzaonVar.zzd;
        this.zzd = j3;
        this.zze = zzb(j3);
    }

    private final long zzb(long j) {
        return zzeu.zzu(j * this.zzb, 1000000L, this.zza.zzc, RoundingMode.DOWN);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final long zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzaek zzg(long j) {
        zzaon zzaonVar = this.zza;
        String str = zzeu.zza;
        long j2 = this.zzd - 1;
        long max = Math.max(0L, Math.min((zzaonVar.zzc * j) / (this.zzb * 1000000), j2));
        long j3 = zzaonVar.zzd;
        long zzb = zzb(max);
        long j4 = this.zzc;
        zzaen zzaenVar = new zzaen(zzb, (max * j3) + j4);
        if (zzb < j && max != j2) {
            long j5 = max + 1;
            return new zzaek(zzaenVar, new zzaen(zzb(j5), j4 + (j3 * j5)));
        }
        return new zzaek(zzaenVar, zzaenVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean zzh() {
        return true;
    }
}
