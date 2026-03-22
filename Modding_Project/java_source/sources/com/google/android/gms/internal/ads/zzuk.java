package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzuk implements zzwv {
    private final zzwv zza;
    private final zzfyc zzb;

    public zzuk(zzwv zzwvVar, List list) {
        this.zza = zzwvVar;
        this.zzb = zzfyc.zzl(list);
    }

    public final zzfyc zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final long zzb() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final long zzc() {
        return this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final void zzm(long j) {
        this.zza.zzm(j);
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final boolean zzo(zzkv zzkvVar) {
        return this.zza.zzo(zzkvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final boolean zzp() {
        return this.zza.zzp();
    }
}
