package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzadw implements zzaem {
    private final zzady zza;
    private final long zzb;

    public zzadw(zzady zzadyVar, long j) {
        this.zza = zzadyVar;
        this.zzb = j;
    }

    private final zzaen zzb(long j, long j2) {
        return new zzaen((j * 1000000) / this.zza.zze, this.zzb + j2);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final long zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzaek zzg(long j) {
        long j2;
        zzady zzadyVar = this.zza;
        zzadx zzadxVar = zzadyVar.zzk;
        zzdc.zzb(zzadxVar);
        long[] jArr = zzadxVar.zza;
        long[] jArr2 = zzadxVar.zzb;
        int zzd = zzeu.zzd(jArr, zzadyVar.zzb(j), true, false);
        long j3 = 0;
        if (zzd == -1) {
            j2 = 0;
        } else {
            j2 = jArr[zzd];
        }
        if (zzd != -1) {
            j3 = jArr2[zzd];
        }
        zzaen zzb = zzb(j2, j3);
        if (zzb.zzb != j && zzd != jArr.length - 1) {
            int i = zzd + 1;
            return new zzaek(zzb, zzb(jArr[i], jArr2[i]));
        }
        return new zzaek(zzb, zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean zzh() {
        return true;
    }
}
