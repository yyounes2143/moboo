package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzajt {
    public int zza;
    public long zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public final int[] zzf = new int[255];
    private final zzek zzg = new zzek(255);

    public final void zza() {
        this.zza = 0;
        this.zzb = 0L;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = 0;
    }

    public final boolean zzb(zzado zzadoVar, boolean z) throws IOException {
        zza();
        zzek zzekVar = this.zzg;
        zzekVar.zzI(27);
        if (zzadr.zzc(zzadoVar, zzekVar.zzN(), 0, 27, z) && zzekVar.zzu() == 1332176723) {
            if (zzekVar.zzm() != 0) {
                if (z) {
                    return false;
                }
                throw zzaz.zzc("unsupported bit stream revision");
            }
            this.zza = zzekVar.zzm();
            this.zzb = zzekVar.zzr();
            zzekVar.zzs();
            zzekVar.zzs();
            zzekVar.zzs();
            int zzm = zzekVar.zzm();
            this.zzc = zzm;
            this.zzd = zzm + 27;
            zzekVar.zzI(zzm);
            if (zzadr.zzc(zzadoVar, zzekVar.zzN(), 0, this.zzc, z)) {
                for (int i = 0; i < this.zzc; i++) {
                    int[] iArr = this.zzf;
                    int zzm2 = zzekVar.zzm();
                    iArr[i] = zzm2;
                    this.zze += zzm2;
                }
                return true;
            }
        }
        return false;
    }

    public final boolean zzc(zzado zzadoVar, long j) throws IOException {
        boolean z;
        int i;
        if (zzadoVar.zzf() == zzadoVar.zze()) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        zzek zzekVar = this.zzg;
        zzekVar.zzI(4);
        while (true) {
            i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
            if ((i == 0 || zzadoVar.zzf() + 4 < j) && zzadr.zzc(zzadoVar, zzekVar.zzN(), 0, 4, true)) {
                zzekVar.zzL(0);
                if (zzekVar.zzu() == 1332176723) {
                    zzadoVar.zzj();
                    return true;
                }
                zzadoVar.zzk(1);
            }
        }
        do {
            if (i != 0 && zzadoVar.zzf() >= j) {
                break;
            }
        } while (zzadoVar.zzc(1) != -1);
        return false;
    }
}
