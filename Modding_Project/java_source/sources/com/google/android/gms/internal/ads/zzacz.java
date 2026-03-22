package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzacz {
    protected final zzact zza;
    protected final zzacy zzb;
    @Nullable
    protected zzacv zzc;
    private final int zzd;

    public zzacz(zzacw zzacwVar, zzacy zzacyVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.zzb = zzacyVar;
        this.zzd = i;
        this.zza = new zzact(zzacwVar, j, 0L, j3, j4, j5, j6);
    }

    public static final int zzf(zzado zzadoVar, long j, zzaej zzaejVar) {
        if (j == zzadoVar.zzf()) {
            return 0;
        }
        zzaejVar.zza = j;
        return 1;
    }

    public static final boolean zzg(zzado zzadoVar, long j) throws IOException {
        long zzf = j - zzadoVar.zzf();
        if (zzf >= 0 && zzf <= 262144) {
            zzadoVar.zzk((int) zzf);
            return true;
        }
        return false;
    }

    public final int zza(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        while (true) {
            zzacv zzacvVar = this.zzc;
            zzdc.zzb(zzacvVar);
            j = zzacvVar.zzf;
            j2 = zzacvVar.zzg;
            j3 = zzacvVar.zzh;
            if (j2 - j <= this.zzd) {
                zzc(false, j);
                return zzf(zzadoVar, j, zzaejVar);
            } else if (!zzg(zzadoVar, j3)) {
                return zzf(zzadoVar, j3, zzaejVar);
            } else {
                zzadoVar.zzj();
                zzacy zzacyVar = this.zzb;
                j4 = zzacvVar.zzb;
                zzacx zza = zzacyVar.zza(zzadoVar, j4);
                i = zza.zzb;
                if (i != -3) {
                    if (i == -2) {
                        j10 = zza.zzc;
                        j11 = zza.zzd;
                        zzacv.zzh(zzacvVar, j10, j11);
                    } else if (i != -1) {
                        j5 = zza.zzd;
                        zzg(zzadoVar, j5);
                        j6 = zza.zzd;
                        zzc(true, j6);
                        j7 = zza.zzd;
                        return zzf(zzadoVar, j7, zzaejVar);
                    } else {
                        j8 = zza.zzc;
                        j9 = zza.zzd;
                        zzacv.zzg(zzacvVar, j8, j9);
                    }
                } else {
                    zzc(false, j3);
                    return zzf(zzadoVar, j3, zzaejVar);
                }
            }
        }
    }

    public final zzaem zzb() {
        return this.zza;
    }

    public final void zzc(boolean z, long j) {
        this.zzc = null;
        this.zzb.zzb();
    }

    public final void zzd(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        zzacv zzacvVar = this.zzc;
        if (zzacvVar != null) {
            j6 = zzacvVar.zza;
            if (j6 == j) {
                return;
            }
        }
        zzact zzactVar = this.zza;
        long zzf = zzactVar.zzf(j);
        j2 = zzactVar.zzc;
        j3 = zzactVar.zzd;
        j4 = zzactVar.zze;
        j5 = zzactVar.zzf;
        this.zzc = new zzacv(j, zzf, 0L, j2, j3, j4, j5);
    }

    public final boolean zze() {
        if (this.zzc != null) {
            return true;
        }
        return false;
    }
}
