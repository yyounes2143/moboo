package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzajp implements zzaju {
    private final zzady zza;
    private final zzadx zzb;
    private long zzc = -1;
    private long zzd = -1;

    public zzajp(zzady zzadyVar, zzadx zzadxVar) {
        this.zza = zzadyVar;
        this.zzb = zzadxVar;
    }

    public final void zza(long j) {
        this.zzc = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaju
    public final long zzd(zzado zzadoVar) {
        long j = this.zzd;
        if (j < 0) {
            return -1L;
        }
        this.zzd = -1L;
        return -(j + 2);
    }

    @Override // com.google.android.gms.internal.ads.zzaju
    public final zzaem zze() {
        boolean z;
        if (this.zzc != -1) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        return new zzadw(this.zza, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzaju
    public final void zzg(long j) {
        long[] jArr = this.zzb.zza;
        this.zzd = jArr[zzeu.zzd(jArr, j, true, true)];
    }
}
