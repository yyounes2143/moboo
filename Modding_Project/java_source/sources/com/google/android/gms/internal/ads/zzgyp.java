package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgyp implements zzgyg {
    final int zza;
    final zzhbv zzb;
    final boolean zzc;
    final boolean zzd;

    public zzgyp(zzgyx zzgyxVar, int i, zzhbv zzhbvVar, boolean z, boolean z2) {
        this.zza = i;
        this.zzb = zzhbvVar;
        this.zzc = z;
        this.zzd = z2;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.zza - ((zzgyp) obj).zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgyg
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgyg
    public final zzhbv zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgyg
    public final zzhbw zzc() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgyg
    public final boolean zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgyg
    public final boolean zze() {
        return this.zzc;
    }
}
