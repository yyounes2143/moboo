package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzail implements zzaii {
    private final int zza;
    private final int zzb;
    private final zzek zzc;

    public zzail(zzfa zzfaVar, zzz zzzVar) {
        zzek zzekVar = zzfaVar.zza;
        this.zzc = zzekVar;
        zzekVar.zzL(12);
        int zzp = zzekVar.zzp();
        if ("audio/raw".equals(zzzVar.zzo)) {
            int zzk = zzeu.zzk(zzzVar.zzG) * zzzVar.zzE;
            if (zzp == 0 || zzp % zzk != 0) {
                zzdx.zzf("BoxParsers", "Audio sample size mismatch. stsd sample size: " + zzk + ", stsz sample size: " + zzp);
                zzp = zzk;
            }
        }
        this.zza = zzp == 0 ? -1 : zzp;
        this.zzb = zzekVar.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzaii
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaii
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaii
    public final int zzc() {
        int i = this.zza;
        if (i == -1) {
            return this.zzc.zzp();
        }
        return i;
    }
}
