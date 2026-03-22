package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcsz implements zzdbl, zzcxh {
    private final Clock zza;
    private final zzctb zzb;
    private final zzfcp zzc;
    private final String zzd;

    public zzcsz(Clock clock, zzctb zzctbVar, zzfcp zzfcpVar, String str) {
        this.zza = clock;
        this.zzb = zzctbVar;
        this.zzc = zzfcpVar;
        this.zzd = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdbl
    public final void zza() {
        this.zzb.zze(this.zzd, this.zza.elapsedRealtime());
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzt() {
        Clock clock = this.zza;
        this.zzb.zzd(this.zzc.zzf, this.zzd, clock.elapsedRealtime());
    }
}
