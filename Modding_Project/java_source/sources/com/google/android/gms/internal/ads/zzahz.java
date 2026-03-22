package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzahz implements zzahy {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final long zzd;
    private final int zze;

    private zzahz(long[] jArr, long[] jArr2, long j, long j2, long j3, int i) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j;
        this.zzd = j3;
        this.zze = i;
    }

    @Nullable
    public static zzahz zzb(long j, long j2, zzaef zzaefVar, zzek zzekVar) {
        int zzg;
        int zzm;
        zzek zzekVar2 = zzekVar;
        zzekVar2.zzM(6);
        int zzg2 = zzekVar2.zzg();
        long j3 = zzaefVar.zzc;
        long j4 = zzg2;
        if (zzekVar2.zzg() > 0) {
            long zzt = zzeu.zzt((zzg * zzaefVar.zzg) - 1, zzaefVar.zzd);
            int zzq = zzekVar2.zzq();
            int zzq2 = zzekVar2.zzq();
            int zzq3 = zzekVar2.zzq();
            zzekVar2.zzM(2);
            long[] jArr = new long[zzq];
            long[] jArr2 = new long[zzq];
            int i = 0;
            long j5 = j2 + zzaefVar.zzc;
            while (i < zzq) {
                long j6 = j3;
                jArr[i] = (i * zzt) / zzq;
                jArr2[i] = j5;
                if (zzq3 != 1) {
                    if (zzq3 != 2) {
                        if (zzq3 != 3) {
                            if (zzq3 != 4) {
                                return null;
                            }
                            zzm = zzekVar2.zzp();
                        } else {
                            zzm = zzekVar2.zzo();
                        }
                    } else {
                        zzm = zzekVar2.zzq();
                    }
                } else {
                    zzm = zzekVar2.zzm();
                }
                j5 += zzm * zzq2;
                i++;
                zzekVar2 = zzekVar;
                zzq = zzq;
                j3 = j6;
            }
            long j7 = j2 + j3;
            long j8 = j7 + j4;
            if (j != -1 && j != j8) {
                zzdx.zzf("VbriSeeker", "VBRI data size mismatch: " + j + ", " + j8);
            }
            if (j8 != j5) {
                zzdx.zzf("VbriSeeker", "VBRI bytes and ToC mismatch (using max): " + j8 + ", " + j5 + "\nSeeking will be inaccurate.");
                j8 = Math.max(j8, j5);
            }
            return new zzahz(jArr, jArr2, zzt, j7, j8, zzaefVar.zzf);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final int zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final long zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final long zze(long j) {
        return this.zza[zzeu.zzd(this.zzb, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzaek zzg(long j) {
        long[] jArr = this.zza;
        int zzd = zzeu.zzd(jArr, j, true, true);
        long j2 = jArr[zzd];
        long[] jArr2 = this.zzb;
        zzaen zzaenVar = new zzaen(j2, jArr2[zzd]);
        if (zzaenVar.zzb < j && zzd != jArr.length - 1) {
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
