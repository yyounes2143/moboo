package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaim implements zzaii {
    private final zzek zza;
    private final int zzb;
    private final int zzc;
    private int zzd;
    private int zze;

    public zzaim(zzfa zzfaVar) {
        zzek zzekVar = zzfaVar.zza;
        this.zza = zzekVar;
        zzekVar.zzL(12);
        this.zzc = zzekVar.zzp() & 255;
        this.zzb = zzekVar.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzaii
    public final int zza() {
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzaii
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaii
    public final int zzc() {
        int i = this.zzc;
        if (i == 8) {
            return this.zza.zzm();
        }
        if (i == 16) {
            return this.zza.zzq();
        }
        int i2 = this.zzd;
        this.zzd = i2 + 1;
        if (i2 % 2 == 0) {
            int zzm = this.zza.zzm();
            this.zze = zzm;
            return (zzm & 240) >> 4;
        }
        return this.zze & 15;
    }
}
