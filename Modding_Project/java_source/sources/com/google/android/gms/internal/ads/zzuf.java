package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzuf implements zzuz, zzuy {
    public final zzuz zza;
    long zzb;
    @Nullable
    private zzuy zzc;
    private zzue[] zzd = new zzue[0];
    private long zze = 0;

    public zzuf(zzuz zzuzVar, boolean z, long j, long j2) {
        this.zza = zzuzVar;
        this.zzb = j2;
    }

    private static long zzr(long j, long j2, long j3) {
        int i = (j3 > Long.MIN_VALUE ? 1 : (j3 == Long.MIN_VALUE ? 0 : -1));
        long max = Math.max(j, j2);
        if (i != 0) {
            return Math.min(max, j3);
        }
        return max;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zza(long j, zzmd zzmdVar) {
        long j2;
        if (j == 0) {
            return 0L;
        }
        long j3 = zzmdVar.zzc;
        String str = zzeu.zza;
        long max = Math.max(0L, Math.min(j3, j));
        long j4 = zzmdVar.zzd;
        long j5 = this.zzb;
        if (j5 == Long.MIN_VALUE) {
            j2 = Long.MAX_VALUE;
        } else {
            j2 = j5 - j;
        }
        long max2 = Math.max(0L, Math.min(j4, j2));
        if (max != j3 || max2 != j4) {
            zzmdVar = new zzmd(max, max2);
        }
        return this.zza.zza(j, zzmdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final long zzb() {
        long zzb = this.zza.zzb();
        if (zzb != Long.MIN_VALUE) {
            long j = this.zzb;
            if (j == Long.MIN_VALUE || zzb < j) {
                return zzb;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final long zzc() {
        long zzc = this.zza.zzc();
        if (zzc != Long.MIN_VALUE) {
            long j = this.zzb;
            if (j == Long.MIN_VALUE || zzc < j) {
                return zzc;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zzd() {
        if (zzq()) {
            long j = this.zze;
            this.zze = -9223372036854775807L;
            long zzd = zzd();
            if (zzd != -9223372036854775807L) {
                return zzd;
            }
            return j;
        }
        long zzd2 = this.zza.zzd();
        if (zzd2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return zzr(zzd2, 0L, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zze(long j) {
        zzue[] zzueVarArr;
        this.zze = -9223372036854775807L;
        for (zzue zzueVar : this.zzd) {
            if (zzueVar != null) {
                zzueVar.zzc();
            }
        }
        return zzr(this.zza.zze(j), 0L, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zzf(zzyq[] zzyqVarArr, boolean[] zArr, zzwt[] zzwtVarArr, boolean[] zArr2, long j) {
        int length = zzwtVarArr.length;
        this.zzd = new zzue[length];
        zzwt[] zzwtVarArr2 = new zzwt[length];
        int i = 0;
        while (true) {
            zzwt zzwtVar = null;
            if (i >= zzwtVarArr.length) {
                break;
            }
            zzue[] zzueVarArr = this.zzd;
            zzue zzueVar = (zzue) zzwtVarArr[i];
            zzueVarArr[i] = zzueVar;
            if (zzueVar != null) {
                zzwtVar = zzueVar.zza;
            }
            zzwtVarArr2[i] = zzwtVar;
            i++;
        }
        long zzf = this.zza.zzf(zzyqVarArr, zArr, zzwtVarArr2, zArr2, j);
        long zzr = zzr(zzf, j, this.zzb);
        long j2 = -9223372036854775807L;
        if (zzq()) {
            if (zzf >= j) {
                if (zzf != 0) {
                    for (zzyq zzyqVar : zzyqVarArr) {
                        if (zzyqVar != null) {
                            zzz zzb = zzyqVar.zzb();
                            if (!zzay.zzf(zzb.zzo, zzb.zzk)) {
                            }
                        }
                    }
                }
            }
            j2 = zzr;
            break;
        }
        this.zze = j2;
        for (int i2 = 0; i2 < zzwtVarArr.length; i2++) {
            zzwt zzwtVar2 = zzwtVarArr2[i2];
            if (zzwtVar2 == null) {
                this.zzd[i2] = null;
            } else {
                zzue[] zzueVarArr2 = this.zzd;
                zzue zzueVar2 = zzueVarArr2[i2];
                if (zzueVar2 == null || zzueVar2.zza != zzwtVar2) {
                    zzueVarArr2[i2] = new zzue(this, zzwtVar2);
                }
            }
            zzwtVarArr[i2] = this.zzd[i2];
        }
        return zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final zzxe zzg() {
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzh(long j, boolean z) {
        this.zza.zzh(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    public final /* bridge */ /* synthetic */ void zzi(zzwv zzwvVar) {
        zzuz zzuzVar = (zzuz) zzwvVar;
        zzuy zzuyVar = this.zzc;
        zzuyVar.getClass();
        zzuyVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzj() throws IOException {
        this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void zzk(zzuz zzuzVar) {
        zzuy zzuyVar = this.zzc;
        zzuyVar.getClass();
        zzuyVar.zzk(this);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzl(zzuy zzuyVar, long j) {
        this.zzc = zzuyVar;
        this.zza.zzl(this, j);
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final void zzm(long j) {
        this.zza.zzm(j);
    }

    public final void zzn(long j, long j2) {
        this.zzb = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final boolean zzo(zzkv zzkvVar) {
        return this.zza.zzo(zzkvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final boolean zzp() {
        return this.zza.zzp();
    }

    public final boolean zzq() {
        if (this.zze != -9223372036854775807L) {
            return true;
        }
        return false;
    }
}
