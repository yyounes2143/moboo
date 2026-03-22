package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzadb implements zzaem {
    public final int zza;
    public final int[] zzb;
    public final long[] zzc;
    public final long[] zzd;
    public final long[] zze;
    private final long zzf;

    public zzadb(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.zzb = iArr;
        this.zzc = jArr;
        this.zzd = jArr2;
        this.zze = jArr3;
        int length = iArr.length;
        this.zza = length;
        if (length > 0) {
            int i = length - 1;
            this.zzf = jArr2[i] + jArr3[i];
            return;
        }
        this.zzf = 0L;
    }

    public final String toString() {
        long[] jArr = this.zzd;
        long[] jArr2 = this.zze;
        long[] jArr3 = this.zzc;
        String arrays = Arrays.toString(this.zzb);
        String arrays2 = Arrays.toString(jArr3);
        String arrays3 = Arrays.toString(jArr2);
        String arrays4 = Arrays.toString(jArr);
        return "ChunkIndex(length=" + this.zza + ", sizes=" + arrays + ", offsets=" + arrays2 + ", timeUs=" + arrays3 + ", durationsUs=" + arrays4 + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final long zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzaek zzg(long j) {
        long[] jArr = this.zze;
        int zzd = zzeu.zzd(jArr, j, true, true);
        long j2 = jArr[zzd];
        long[] jArr2 = this.zzc;
        zzaen zzaenVar = new zzaen(j2, jArr2[zzd]);
        if (zzaenVar.zzb < j && zzd != this.zza - 1) {
            int i = zzd + 1;
            return new zzaek(zzaenVar, new zzaen(jArr[i], jArr2[i]));
        }
        return new zzaek(zzaenVar, zzaenVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean zzh() {
        return true;
    }
}
