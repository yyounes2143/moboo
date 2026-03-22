package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzanp {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzer zza = new zzer(0);
    private long zzf = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private final zzek zzb = new zzek();

    public static long zzc(zzek zzekVar) {
        int zzc = zzekVar.zzc();
        if (zzekVar.zza() >= 9) {
            byte[] bArr = new byte[9];
            zzekVar.zzH(bArr, 0, 9);
            zzekVar.zzL(zzc);
            byte b = bArr[0];
            if ((b & 196) == 68) {
                byte b2 = bArr[2];
                if ((b2 & 4) == 4) {
                    byte b3 = bArr[4];
                    if ((b3 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                        long j = b;
                        long j2 = b2;
                        long j3 = (j2 & 3) << 13;
                        return j3 | ((bArr[1] & 255) << 20) | ((j & 3) << 28) | (((j & 56) >> 3) << 30) | (((248 & j2) >> 3) << 15) | ((bArr[3] & 255) << 5) | ((b3 & 248) >> 3);
                    }
                    return -9223372036854775807L;
                }
                return -9223372036854775807L;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    private final int zzf(zzado zzadoVar) {
        byte[] bArr = zzeu.zzb;
        int length = bArr.length;
        this.zzb.zzJ(bArr, 0);
        this.zzc = true;
        zzadoVar.zzj();
        return 0;
    }

    private static final int zzg(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public final int zza(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        long j = -9223372036854775807L;
        if (!this.zze) {
            long zzd = zzadoVar.zzd();
            int min = (int) Math.min(20000L, zzd);
            long j2 = zzd - min;
            if (zzadoVar.zzf() != j2) {
                zzaejVar.zza = j2;
                return 1;
            }
            zzek zzekVar = this.zzb;
            zzekVar.zzI(min);
            zzadoVar.zzj();
            zzadoVar.zzh(zzekVar.zzN(), 0, min);
            int zzc = zzekVar.zzc();
            int zzd2 = zzekVar.zzd() - 4;
            while (true) {
                if (zzd2 < zzc) {
                    break;
                }
                if (zzg(zzekVar.zzN(), zzd2) == 442) {
                    zzekVar.zzL(zzd2 + 4);
                    long zzc2 = zzc(zzekVar);
                    if (zzc2 != -9223372036854775807L) {
                        j = zzc2;
                        break;
                    }
                }
                zzd2--;
            }
            this.zzg = j;
            this.zze = true;
            return 0;
        } else if (this.zzg == -9223372036854775807L) {
            zzf(zzadoVar);
            return 0;
        } else if (!this.zzd) {
            int min2 = (int) Math.min(20000L, zzadoVar.zzd());
            if (zzadoVar.zzf() != 0) {
                zzaejVar.zza = 0L;
                return 1;
            }
            zzek zzekVar2 = this.zzb;
            zzekVar2.zzI(min2);
            zzadoVar.zzj();
            zzadoVar.zzh(zzekVar2.zzN(), 0, min2);
            int zzc3 = zzekVar2.zzc();
            int zzd3 = zzekVar2.zzd();
            while (true) {
                if (zzc3 >= zzd3 - 3) {
                    break;
                }
                if (zzg(zzekVar2.zzN(), zzc3) == 442) {
                    zzekVar2.zzL(zzc3 + 4);
                    long zzc4 = zzc(zzekVar2);
                    if (zzc4 != -9223372036854775807L) {
                        j = zzc4;
                        break;
                    }
                }
                zzc3++;
            }
            this.zzf = j;
            this.zzd = true;
            return 0;
        } else {
            long j3 = this.zzf;
            if (j3 == -9223372036854775807L) {
                zzf(zzadoVar);
                return 0;
            }
            zzer zzerVar = this.zza;
            this.zzh = zzerVar.zzc(this.zzg) - zzerVar.zzb(j3);
            zzf(zzadoVar);
            return 0;
        }
    }

    public final long zzb() {
        return this.zzh;
    }

    public final zzer zzd() {
        return this.zza;
    }

    public final boolean zze() {
        return this.zzc;
    }
}
