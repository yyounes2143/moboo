package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaht extends zzadc implements zzahy {
    private final long zza;
    private final int zzb;
    private final int zzc;
    private final long zzd;

    public zzaht(long j, long j2, int i, int i2, boolean z) {
        super(j, j2, i, i2, false);
        this.zza = j2;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = j != -1 ? j : -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final int zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final long zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final long zze(long j) {
        return zzb(j);
    }

    public final zzaht zzf(long j) {
        return new zzaht(j, this.zza, this.zzb, this.zzc, false);
    }
}
