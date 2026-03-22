package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdrf implements zzfgu {
    private final Map zza;
    private final zzbbt zzb;

    public zzdrf(zzbbt zzbbtVar, Map map) {
        this.zza = map;
        this.zzb = zzbbtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzd(zzfgn zzfgnVar, String str) {
        Map map = this.zza;
        if (map.containsKey(zzfgnVar)) {
            this.zzb.zzc(((zzdre) map.get(zzfgnVar)).zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdF(zzfgn zzfgnVar, String str, Throwable th) {
        Map map = this.zza;
        if (map.containsKey(zzfgnVar)) {
            this.zzb.zzc(((zzdre) map.get(zzfgnVar)).zzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdG(zzfgn zzfgnVar, String str) {
        Map map = this.zza;
        if (map.containsKey(zzfgnVar)) {
            this.zzb.zzc(((zzdre) map.get(zzfgnVar)).zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdE(zzfgn zzfgnVar, String str) {
    }
}
