package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzdxy implements zzgcu {
    final /* synthetic */ Context zza;

    public zzdxy(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        if (((Boolean) zzben.zzh.zze()).booleanValue() && (th instanceof com.google.android.gms.ads.internal.util.zzba)) {
            zzbcf.zze(this.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdyr zzdyrVar = (zzdyr) obj;
        if (((Boolean) zzben.zzj.zze()).booleanValue()) {
            zzbcf.zze(this.zza);
        }
    }
}
