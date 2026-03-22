package com.google.android.gms.internal.ads;

import androidx.media3.extractor.ts.TsExtractor;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzany {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzer zza = new zzer(0);
    private long zzf = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private final zzek zzb = new zzek();

    public zzany(int i) {
    }

    private final int zze(zzado zzadoVar) {
        byte[] bArr = zzeu.zzb;
        int length = bArr.length;
        this.zzb.zzJ(bArr, 0);
        this.zzc = true;
        zzadoVar.zzj();
        return 0;
    }

    public final int zza(zzado zzadoVar, zzaej zzaejVar, int i) throws IOException {
        if (i <= 0) {
            zze(zzadoVar);
            return 0;
        }
        long j = -9223372036854775807L;
        if (!this.zze) {
            long zzd = zzadoVar.zzd();
            int min = (int) Math.min(112800L, zzd);
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
            int zzd2 = zzekVar.zzd();
            int i2 = zzd2 - 188;
            while (true) {
                if (i2 < zzc) {
                    break;
                }
                byte[] zzN = zzekVar.zzN();
                int i3 = -4;
                int i4 = 0;
                while (true) {
                    if (i3 > 4) {
                        break;
                    }
                    int i5 = (i3 * TsExtractor.TS_PACKET_SIZE) + i2;
                    if (i5 < zzc || i5 >= zzd2 || zzN[i5] != 71) {
                        i4 = 0;
                    } else {
                        i4++;
                        if (i4 == 5) {
                            long zzb = zzaoh.zzb(zzekVar, i2, i);
                            if (zzb != -9223372036854775807L) {
                                j = zzb;
                                break;
                            }
                        }
                    }
                    i3++;
                }
                i2--;
            }
            this.zzg = j;
            this.zze = true;
            return 0;
        } else if (this.zzg == -9223372036854775807L) {
            zze(zzadoVar);
            return 0;
        } else if (!this.zzd) {
            int min2 = (int) Math.min(112800L, zzadoVar.zzd());
            if (zzadoVar.zzf() != 0) {
                zzaejVar.zza = 0L;
                return 1;
            }
            zzek zzekVar2 = this.zzb;
            zzekVar2.zzI(min2);
            zzadoVar.zzj();
            zzadoVar.zzh(zzekVar2.zzN(), 0, min2);
            int zzc2 = zzekVar2.zzc();
            int zzd3 = zzekVar2.zzd();
            while (true) {
                if (zzc2 >= zzd3) {
                    break;
                }
                if (zzekVar2.zzN()[zzc2] == 71) {
                    long zzb2 = zzaoh.zzb(zzekVar2, zzc2, i);
                    if (zzb2 != -9223372036854775807L) {
                        j = zzb2;
                        break;
                    }
                }
                zzc2++;
            }
            this.zzf = j;
            this.zzd = true;
            return 0;
        } else {
            long j3 = this.zzf;
            if (j3 == -9223372036854775807L) {
                zze(zzadoVar);
                return 0;
            }
            zzer zzerVar = this.zza;
            this.zzh = zzerVar.zzc(this.zzg) - zzerVar.zzb(j3);
            zze(zzadoVar);
            return 0;
        }
    }

    public final long zzb() {
        return this.zzh;
    }

    public final zzer zzc() {
        return this.zza;
    }

    public final boolean zzd() {
        return this.zzc;
    }
}
