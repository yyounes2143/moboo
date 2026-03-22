package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeo extends zzcd {
    final /* synthetic */ PreloadCallback zza;
    final /* synthetic */ zzet zzb;

    public zzeo(zzet zzetVar, PreloadCallback preloadCallback) {
        this.zza = preloadCallback;
        this.zzb = zzetVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final void zze(zzfp zzfpVar) {
        PreloadConfiguration zzg = zzet.zzg(this.zzb, zzfpVar);
        if (zzg != null) {
            this.zza.onAdsAvailable(zzg);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final void zzf(zzfp zzfpVar) {
        PreloadConfiguration zzg = zzet.zzg(this.zzb, zzfpVar);
        if (zzg != null) {
            this.zza.onAdsExhausted(zzg);
        }
    }
}
