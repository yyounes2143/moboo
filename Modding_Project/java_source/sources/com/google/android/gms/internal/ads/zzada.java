package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzada {
    public static void zza(long j, zzek zzekVar, zzaet[] zzaetVarArr) {
        int i;
        boolean z;
        while (true) {
            boolean z2 = true;
            if (zzekVar.zza() > 1) {
                int zzc = zzc(zzekVar);
                int zzc2 = zzc(zzekVar);
                int zzc3 = zzekVar.zzc() + zzc2;
                if (zzc2 != -1 && zzc2 <= zzekVar.zza()) {
                    if (zzc == 4 && zzc2 >= 8) {
                        int zzm = zzekVar.zzm();
                        int zzq = zzekVar.zzq();
                        if (zzq == 49) {
                            i = zzekVar.zzg();
                            zzq = 49;
                        } else {
                            i = 0;
                        }
                        int zzm2 = zzekVar.zzm();
                        if (zzq == 47) {
                            zzekVar.zzM(1);
                            zzq = 47;
                        }
                        if (zzm != 181 || ((zzq != 49 && zzq != 47) || zzm2 != 3)) {
                            z = false;
                        } else {
                            z = true;
                        }
                        if (zzq == 49) {
                            if (i != 1195456820) {
                                z2 = false;
                            }
                            z &= z2;
                        }
                        if (z) {
                            zzb(j, zzekVar, zzaetVarArr);
                        }
                    }
                } else {
                    zzdx.zzf("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    zzc3 = zzekVar.zzd();
                }
                zzekVar.zzL(zzc3);
            } else {
                return;
            }
        }
    }

    public static void zzb(long j, zzek zzekVar, zzaet[] zzaetVarArr) {
        boolean z;
        int zzm = zzekVar.zzm();
        if ((zzm & 64) != 0) {
            int i = zzm & 31;
            zzekVar.zzM(1);
            int zzc = zzekVar.zzc();
            for (zzaet zzaetVar : zzaetVarArr) {
                int i2 = i * 3;
                zzekVar.zzL(zzc);
                zzaetVar.zzr(zzekVar, i2);
                if (j != -9223372036854775807L) {
                    z = true;
                } else {
                    z = false;
                }
                zzdc.zzf(z);
                zzaetVar.zzt(j, 1, i2, 0, null);
            }
        }
    }

    private static int zzc(zzek zzekVar) {
        int i = 0;
        while (zzekVar.zza() != 0) {
            int zzm = zzekVar.zzm();
            i += zzm;
            if (zzm != 255) {
                return i;
            }
        }
        return -1;
    }
}
