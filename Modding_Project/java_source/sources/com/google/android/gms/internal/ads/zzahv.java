package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.media3.common.C;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzahv implements zzahy {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;

    private zzahv(long[] jArr, long[] jArr2, long j) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j == -9223372036854775807L ? zzeu.zzs(jArr2[jArr2.length - 1]) : j;
    }

    public static zzahv zzb(long j, zzaha zzahaVar, long j2) {
        int[] iArr;
        int length = zzahaVar.zzd.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += zzahaVar.zzb + iArr[i3];
            j3 += zzahaVar.zzc + zzahaVar.zze[i3];
            jArr[i2] = j;
            jArr2[i2] = j3;
        }
        return new zzahv(jArr, jArr2, j2);
    }

    private static Pair zzf(long j, long[] jArr, long[] jArr2) {
        double d;
        int zzd = zzeu.zzd(jArr, j, true, true);
        long j2 = jArr[zzd];
        long j3 = jArr2[zzd];
        int i = zzd + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        long j5 = jArr2[i];
        if (j4 == j2) {
            d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        } else {
            d = (j - j2) / (j4 - j2);
        }
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) (d * (j5 - j3))) + j3));
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final int zzc() {
        return C.RATE_UNSET_INT;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final long zzd() {
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final long zze(long j) {
        return zzeu.zzs(((Long) zzf(j, this.zza, this.zzb).second).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzaek zzg(long j) {
        String str = zzeu.zza;
        Pair zzf = zzf(zzeu.zzv(Math.max(0L, Math.min(j, this.zzc))), this.zzb, this.zza);
        zzaen zzaenVar = new zzaen(zzeu.zzs(((Long) zzf.first).longValue()), ((Long) zzf.second).longValue());
        return new zzaek(zzaenVar, zzaenVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean zzh() {
        return true;
    }
}
