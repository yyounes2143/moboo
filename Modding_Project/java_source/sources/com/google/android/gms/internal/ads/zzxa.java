package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzxa implements zzwt {
    private final zzwt zza;
    private final long zzb;

    public zzxa(zzwt zzwtVar, long j) {
        this.zza = zzwtVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final int zza(zzkq zzkqVar, zzhp zzhpVar, int i) {
        int zza = this.zza.zza(zzkqVar, zzhpVar, i);
        if (zza == -4) {
            zzhpVar.zze += this.zzb;
            return -4;
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final int zzb(long j) {
        return this.zza.zzb(j - this.zzb);
    }

    public final zzwt zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final void zzd() throws IOException {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final boolean zze() {
        return this.zza.zze();
    }
}
