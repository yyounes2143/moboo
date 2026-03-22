package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbta extends zzbht {
    private final NativeAd.OnNativeAdLoadedListener zza;

    public zzbta(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.zza = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final void zze(zzbia zzbiaVar) {
        this.zza.onNativeAdLoaded(new zzbsu(zzbiaVar));
    }
}
