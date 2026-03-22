package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzafp implements zzacy {
    private final zzady zza;
    private final int zzb;
    private final zzadt zzc = new zzadt();

    public /* synthetic */ zzafp(zzady zzadyVar, int i, zzafq zzafqVar) {
        this.zza = zzadyVar;
        this.zzb = i;
    }

    private final long zzc(zzado zzadoVar) throws IOException {
        while (zzadoVar.zze() < zzadoVar.zzd() - 6) {
            zzady zzadyVar = this.zza;
            int i = this.zzb;
            zzadt zzadtVar = this.zzc;
            long zze = zzadoVar.zze();
            byte[] bArr = new byte[2];
            zzadoVar.zzh(bArr, 0, 2);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
                zzadoVar.zzj();
                zzadoVar.zzg((int) (zze - zzadoVar.zzf()));
            } else {
                zzek zzekVar = new zzek(16);
                System.arraycopy(bArr, 0, zzekVar.zzN(), 0, 2);
                zzekVar.zzK(zzadr.zza(zzadoVar, zzekVar.zzN(), 2, 14));
                zzadoVar.zzj();
                zzadoVar.zzg((int) (zze - zzadoVar.zzf()));
                if (zzadu.zzc(zzekVar, zzadyVar, i, zzadtVar)) {
                    break;
                }
            }
            zzadoVar.zzg(1);
        }
        if (zzadoVar.zze() >= zzadoVar.zzd() - 6) {
            zzadoVar.zzg((int) (zzadoVar.zzd() - zzadoVar.zze()));
            return this.zza.zzj;
        }
        return this.zzc.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzacy
    public final zzacx zza(zzado zzadoVar, long j) throws IOException {
        long zzf = zzadoVar.zzf();
        long zzc = zzc(zzadoVar);
        long zze = zzadoVar.zze();
        zzadoVar.zzg(Math.max(6, this.zza.zzc));
        int i = (zzc > j ? 1 : (zzc == j ? 0 : -1));
        long zzc2 = zzc(zzadoVar);
        long zze2 = zzadoVar.zze();
        if (i <= 0 && zzc2 > j) {
            return zzacx.zze(zze);
        }
        if (zzc2 <= j) {
            return zzacx.zzf(zzc2, zze2);
        }
        return zzacx.zzd(zzc, zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzacy
    public final /* synthetic */ void zzb() {
    }
}
