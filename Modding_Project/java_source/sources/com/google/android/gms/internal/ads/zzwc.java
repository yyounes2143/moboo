package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzwc implements zzwt {
    final /* synthetic */ zzwf zza;
    private final int zzb;

    public zzwc(zzwf zzwfVar, int i) {
        this.zza = zzwfVar;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final int zza(zzkq zzkqVar, zzhp zzhpVar, int i) {
        return this.zza.zzi(this.zzb, zzkqVar, zzhpVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final int zzb(long j) {
        return this.zza.zzk(this.zzb, j);
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final void zzd() throws IOException {
        this.zza.zzI(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final boolean zze() {
        return this.zza.zzQ(this.zzb);
    }
}
