package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzajk {
    public final zzajh zza;
    public final int zzb;
    public final long[] zzc;
    public final int[] zzd;
    public final int zze;
    public final long[] zzf;
    public final int[] zzg;
    public final long zzh;

    public zzajk(zzajh zzajhVar, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        boolean z;
        boolean z2;
        int length = iArr.length;
        int length2 = jArr2.length;
        if (length == length2) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        int length3 = jArr.length;
        if (length3 == length2) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzdc.zzd(z2);
        int length4 = iArr2.length;
        zzdc.zzd(length4 == length2);
        this.zza = zzajhVar;
        this.zzc = jArr;
        this.zzd = iArr;
        this.zze = i;
        this.zzf = jArr2;
        this.zzg = iArr2;
        this.zzh = j;
        this.zzb = length3;
        if (length4 > 0) {
            int i2 = length4 - 1;
            iArr2[i2] = iArr2[i2] | C.BUFFER_FLAG_LAST_SAMPLE;
        }
    }

    public final int zza(long j) {
        for (int zzd = zzeu.zzd(this.zzf, j, true, false); zzd >= 0; zzd--) {
            if ((this.zzg[zzd] & 1) != 0) {
                return zzd;
            }
        }
        return -1;
    }

    public final int zzb(long j) {
        long[] jArr = this.zzf;
        for (int zza = zzeu.zza(jArr, j, true, false); zza < jArr.length; zza++) {
            if ((this.zzg[zza] & 1) != 0) {
                return zza;
            }
        }
        return -1;
    }
}
