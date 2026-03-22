package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzage extends zzadz {
    private final long zza;

    public zzage(zzado zzadoVar, long j) {
        super(zzadoVar);
        boolean z;
        if (zzadoVar.zzf() >= j) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.ads.zzadz, com.google.android.gms.internal.ads.zzado
    public final long zzd() {
        return super.zzd() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzadz, com.google.android.gms.internal.ads.zzado
    public final long zze() {
        return super.zze() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzadz, com.google.android.gms.internal.ads.zzado
    public final long zzf() {
        return super.zzf() - this.zza;
    }
}
