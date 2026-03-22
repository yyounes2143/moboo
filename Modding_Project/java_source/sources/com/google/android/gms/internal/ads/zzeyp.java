package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeyp implements zzfew {
    private final zzezl zza;

    public zzeyp(zzezl zzezlVar) {
        this.zza = zzezlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfew
    public final ListenableFuture zza(zzfex zzfexVar) {
        zzeyq zzeyqVar = (zzeyq) zzfexVar;
        return ((zzeym) this.zza).zzb(zzeyqVar.zzb, zzeyqVar.zza, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfew
    public final void zzb(zzfel zzfelVar) {
        zzfelVar.zza = ((zzeym) this.zza).zza();
    }
}
