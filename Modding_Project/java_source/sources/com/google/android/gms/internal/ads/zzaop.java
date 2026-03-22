package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.media3.extractor.WavUtil;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaop {
    public static Pair zza(zzado zzadoVar) throws IOException {
        zzadoVar.zzj();
        zzaoo zzd = zzd(1684108385, zzadoVar, new zzek(8));
        zzadoVar.zzk(8);
        return Pair.create(Long.valueOf(zzadoVar.zzf()), Long.valueOf(zzd.zzb));
    }

    public static zzaon zzb(zzado zzadoVar) throws IOException {
        boolean z;
        byte[] bArr;
        zzek zzekVar = new zzek(16);
        long j = zzd(WavUtil.FMT_FOURCC, zzadoVar, zzekVar).zzb;
        if (j >= 16) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        zzadoVar.zzh(zzekVar.zzN(), 0, 16);
        zzekVar.zzL(0);
        int zzk = zzekVar.zzk();
        int zzk2 = zzekVar.zzk();
        int zzj = zzekVar.zzj();
        int zzj2 = zzekVar.zzj();
        int zzk3 = zzekVar.zzk();
        int zzk4 = zzekVar.zzk();
        int i = ((int) j) - 16;
        if (i > 0) {
            bArr = new byte[i];
            zzadoVar.zzh(bArr, 0, i);
        } else {
            bArr = zzeu.zzb;
        }
        byte[] bArr2 = bArr;
        zzadoVar.zzk((int) (zzadoVar.zze() - zzadoVar.zzf()));
        return new zzaon(zzk, zzk2, zzj, zzj2, zzk3, zzk4, bArr2);
    }

    public static boolean zzc(zzado zzadoVar) throws IOException {
        zzek zzekVar = new zzek(8);
        int i = zzaoo.zza(zzadoVar, zzekVar).zza;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        zzadoVar.zzh(zzekVar.zzN(), 0, 4);
        zzekVar.zzL(0);
        int zzg = zzekVar.zzg();
        if (zzg != 1463899717) {
            zzdx.zzc("WavHeaderReader", "Unsupported form type: " + zzg);
            return false;
        }
        return true;
    }

    private static zzaoo zzd(int i, zzado zzadoVar, zzek zzekVar) throws IOException {
        zzaoo zza = zzaoo.zza(zzadoVar, zzekVar);
        while (true) {
            int i2 = zza.zza;
            if (i2 != i) {
                zzdx.zzf("WavHeaderReader", "Ignoring unknown WAV chunk: " + i2);
                long j = zza.zzb;
                long j2 = 8 + j;
                if ((1 & j) != 0) {
                    j2 = 9 + j;
                }
                if (j2 <= 2147483647L) {
                    zzadoVar.zzk((int) j2);
                    zza = zzaoo.zza(zzadoVar, zzekVar);
                } else {
                    throw zzaz.zzc("Chunk is too large (~2GB+) to skip; id: " + i2);
                }
            } else {
                return zza;
            }
        }
    }
}
