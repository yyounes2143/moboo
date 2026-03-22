package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzid {
    private final long zza;
    private final long zzb;
    private long zzc = -9223372036854775807L;
    private long zzd = -9223372036854775807L;
    private long zzf = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private float zzj = 0.97f;
    private float zzi = 1.03f;
    private float zzk = 1.0f;
    private long zzl = -9223372036854775807L;
    private long zze = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private long zzm = -9223372036854775807L;
    private long zzn = -9223372036854775807L;

    public /* synthetic */ zzid(float f, float f2, long j, float f3, long j2, long j3, float f4, zzic zzicVar) {
        this.zza = j2;
        this.zzb = j3;
    }

    private static long zzf(long j, long j2, float f) {
        return (((float) j) * 0.999f) + (((float) j2) * 9.999871E-4f);
    }

    private final void zzg() {
        long j;
        long j2 = this.zzc;
        if (j2 != -9223372036854775807L) {
            j = this.zzd;
            if (j == -9223372036854775807L) {
                long j3 = this.zzf;
                if (j3 != -9223372036854775807L && j2 < j3) {
                    j2 = j3;
                }
                j = this.zzg;
                if (j == -9223372036854775807L || j2 <= j) {
                    j = j2;
                }
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.zze == j) {
            return;
        }
        this.zze = j;
        this.zzh = j;
        this.zzm = -9223372036854775807L;
        this.zzn = -9223372036854775807L;
        this.zzl = -9223372036854775807L;
    }

    public final float zza(long j, long j2) {
        float f;
        long max;
        if (this.zzc == -9223372036854775807L) {
            return 1.0f;
        }
        long j3 = j - j2;
        long j4 = this.zzm;
        if (j4 == -9223372036854775807L) {
            this.zzm = j3;
            this.zzn = 0L;
        } else {
            long max2 = Math.max(j3, zzf(j4, j3, 0.999f));
            this.zzm = max2;
            this.zzn = zzf(this.zzn, Math.abs(j3 - max2), 0.999f);
        }
        if (this.zzl != -9223372036854775807L && SystemClock.elapsedRealtime() - this.zzl < 1000) {
            return this.zzk;
        }
        this.zzl = SystemClock.elapsedRealtime();
        long j5 = this.zzm + (this.zzn * 3);
        if (this.zzh > j5) {
            float zzs = (float) zzeu.zzs(1000L);
            f = 1.0E-7f;
            long[] jArr = {j5, this.zze, this.zzh - ((zzs * (this.zzk - 1.0f)) + ((this.zzi - 1.0f) * zzs))};
            max = jArr[0];
            for (int i = 1; i < 3; i++) {
                long j6 = jArr[i];
                if (j6 > max) {
                    max = j6;
                }
            }
            this.zzh = max;
        } else {
            f = 1.0E-7f;
            long j7 = this.zzh;
            String str = zzeu.zza;
            max = Math.max(j7, Math.min(j - (Math.max(0.0f, this.zzk - 1.0f) / 1.0E-7f), j5));
            this.zzh = max;
            long j8 = this.zzg;
            if (j8 != -9223372036854775807L && max > j8) {
                this.zzh = j8;
                max = j8;
            }
        }
        long j9 = j - max;
        if (Math.abs(j9) < this.zza) {
            this.zzk = 1.0f;
            return 1.0f;
        }
        float max3 = Math.max(this.zzj, Math.min((((float) j9) * f) + 1.0f, this.zzi));
        this.zzk = max3;
        return max3;
    }

    public final long zzb() {
        return this.zzh;
    }

    public final void zzc() {
        long j = this.zzh;
        if (j == -9223372036854775807L) {
            return;
        }
        long j2 = j + this.zzb;
        this.zzh = j2;
        long j3 = this.zzg;
        if (j3 != -9223372036854775807L && j2 > j3) {
            this.zzh = j3;
        }
        this.zzl = -9223372036854775807L;
    }

    public final void zzd(zzaj zzajVar) {
        long j = zzajVar.zza;
        this.zzc = zzeu.zzs(-9223372036854775807L);
        this.zzf = zzeu.zzs(-9223372036854775807L);
        this.zzg = zzeu.zzs(-9223372036854775807L);
        this.zzj = 0.97f;
        this.zzi = 1.03f;
        zzg();
    }

    public final void zze(long j) {
        this.zzd = j;
        zzg();
    }
}
