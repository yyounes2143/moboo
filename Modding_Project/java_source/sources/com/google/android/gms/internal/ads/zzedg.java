package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzedg implements zzedf {
    @VisibleForTesting
    public final zzedf zza;
    private final zzfur zzb;

    public zzedg(zzedf zzedfVar, zzfur zzfurVar) {
        this.zza = zzedfVar;
        this.zzb = zzfurVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final ListenableFuture zza(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        return zzgcy.zzm(this.zza.zza(zzfcgVar, zzfbuVar), this.zzb, zzcaa.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final boolean zzb(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        return this.zza.zzb(zzfcgVar, zzfbuVar);
    }
}
