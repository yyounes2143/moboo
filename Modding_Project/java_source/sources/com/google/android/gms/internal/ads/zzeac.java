package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeac {
    private final zzbvf zza;

    public zzeac(zzbvf zzbvfVar) {
        this.zza = zzbvfVar;
    }

    public final void zza() {
        ListenableFuture zza = this.zza.zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzhW)).booleanValue()) {
            zzcad.zzb(zza, "persistFlags");
        } else {
            zzcad.zza(zza, "persistFlags");
        }
    }
}
