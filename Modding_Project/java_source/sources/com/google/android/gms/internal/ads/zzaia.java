package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaia {
    public final zzaef zza;
    public final long zzb;
    public final long zzc;
    public final int zzd;
    public final int zze;
    @Nullable
    public final long[] zzf;

    private zzaia(zzaef zzaefVar, long j, long j2, @Nullable long[] jArr, int i, int i2) {
        this.zza = new zzaef(zzaefVar);
        this.zzb = j;
        this.zzc = j2;
        this.zzf = jArr;
        this.zzd = i;
        this.zze = i2;
    }

    public static zzaia zzb(zzaef zzaefVar, zzek zzekVar) {
        int i;
        long j;
        long[] jArr;
        int i2;
        int i3;
        int zzg = zzekVar.zzg();
        if ((zzg & 1) != 0) {
            i = zzekVar.zzp();
        } else {
            i = -1;
        }
        if ((zzg & 2) != 0) {
            j = zzekVar.zzu();
        } else {
            j = -1;
        }
        long j2 = j;
        if ((zzg & 4) == 4) {
            jArr = new long[100];
            for (int i4 = 0; i4 < 100; i4++) {
                jArr[i4] = zzekVar.zzm();
            }
        } else {
            jArr = null;
        }
        long[] jArr2 = jArr;
        if ((zzg & 8) != 0) {
            zzekVar.zzM(4);
        }
        if (zzekVar.zza() >= 24) {
            zzekVar.zzM(21);
            int zzo = zzekVar.zzo();
            i3 = zzo & 4095;
            i2 = zzo >> 12;
        } else {
            i2 = -1;
            i3 = -1;
        }
        return new zzaia(zzaefVar, i, j2, jArr2, i2, i3);
    }

    public final long zza() {
        long j = this.zzb;
        if (j != -1 && j != 0) {
            zzaef zzaefVar = this.zza;
            return zzeu.zzt((j * zzaefVar.zzg) - 1, zzaefVar.zzd);
        }
        return -9223372036854775807L;
    }
}
