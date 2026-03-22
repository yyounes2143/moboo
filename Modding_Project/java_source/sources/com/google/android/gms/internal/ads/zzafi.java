package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzafi {
    private final zzafh zza;
    private final zzaet zzb;
    private final int zzc;
    private final int zzd;
    private final long zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private long zzl;
    private long[] zzm;
    private int[] zzn;

    public zzafi(int i, zzafh zzafhVar, zzaet zzaetVar) {
        int i2;
        int i3;
        this.zza = zzafhVar;
        int zzb = zzafhVar.zzb();
        boolean z = true;
        if (zzb != 1) {
            if (zzb == 2) {
                zzb = 2;
            } else {
                z = false;
            }
        }
        zzdc.zzd(z);
        if (zzb == 2) {
            i2 = 1667497984;
        } else {
            i2 = 1651965952;
        }
        this.zzc = zzh(i, i2);
        this.zze = zzafhVar.zzc();
        this.zzb = zzaetVar;
        if (zzb == 2) {
            i3 = zzh(i, 1650720768);
        } else {
            i3 = -1;
        }
        this.zzd = i3;
        this.zzl = -1L;
        this.zzm = new long[512];
        this.zzn = new int[512];
        this.zzf = zzafhVar.zzd;
    }

    private static int zzh(int i, int i2) {
        return (((i % 10) + 48) << 8) | ((i / 10) + 48) | i2;
    }

    private final long zzi(int i) {
        return (this.zze * i) / this.zzf;
    }

    private final zzaen zzj(int i) {
        return new zzaen(this.zzn[i] * zzi(1), this.zzm[i]);
    }

    public final zzaek zza(long j) {
        if (this.zzk != 0) {
            int zzi = (int) (j / zzi(1));
            int zzc = zzeu.zzc(this.zzn, zzi, true, true);
            if (this.zzn[zzc] == zzi) {
                zzaen zzj = zzj(zzc);
                return new zzaek(zzj, zzj);
            }
            zzaen zzj2 = zzj(zzc);
            int i = zzc + 1;
            if (i < this.zzm.length) {
                return new zzaek(zzj2, zzj(i));
            }
            return new zzaek(zzj2, zzj2);
        }
        zzaen zzaenVar = new zzaen(0L, this.zzl);
        return new zzaek(zzaenVar, zzaenVar);
    }

    public final void zzb(long j, boolean z) {
        if (this.zzl == -1) {
            this.zzl = j;
        }
        if (z) {
            if (this.zzk == this.zzn.length) {
                long[] jArr = this.zzm;
                this.zzm = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                int[] iArr = this.zzn;
                this.zzn = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
            }
            long[] jArr2 = this.zzm;
            int i = this.zzk;
            jArr2[i] = j;
            this.zzn[i] = this.zzj;
            this.zzk = i + 1;
        }
        this.zzj++;
    }

    public final void zzc() {
        int i;
        this.zzm = Arrays.copyOf(this.zzm, this.zzk);
        this.zzn = Arrays.copyOf(this.zzn, this.zzk);
        if ((this.zzc & 1651965952) == 1651965952 && this.zza.zzf != 0 && (i = this.zzk) > 0) {
            this.zzf = i;
        }
    }

    public final void zzd(int i) {
        this.zzg = i;
        this.zzh = i;
    }

    public final void zze(long j) {
        if (this.zzk == 0) {
            this.zzi = 0;
            return;
        }
        this.zzi = this.zzn[zzeu.zzd(this.zzm, j, true, true)];
    }

    public final boolean zzf(int i) {
        if (this.zzc != i && this.zzd != i) {
            return false;
        }
        return true;
    }

    public final boolean zzg(zzado zzadoVar) throws IOException {
        boolean z;
        int i = this.zzh;
        zzaet zzaetVar = this.zzb;
        int i2 = 0;
        int zzf = i - zzaetVar.zzf(zzadoVar, i, false);
        this.zzh = zzf;
        if (zzf == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (this.zzg > 0) {
                long zzi = zzi(this.zzi);
                if (Arrays.binarySearch(this.zzn, this.zzi) >= 0) {
                    i2 = 1;
                }
                zzaetVar.zzt(zzi, i2, this.zzg, 0, null);
            }
            this.zzi++;
        }
        return z;
    }
}
