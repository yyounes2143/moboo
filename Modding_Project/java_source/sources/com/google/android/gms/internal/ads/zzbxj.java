package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbxj extends zzbww {
    private final RewardedInterstitialAdLoadCallback zza;
    private final zzbxk zzb;

    public zzbxj(RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback, zzbxk zzbxkVar) {
        this.zza = rewardedInterstitialAdLoadCallback;
        this.zzb = zzbxkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zza;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.onAdFailedToLoad(zzeVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzg() {
        zzbxk zzbxkVar;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zza;
        if (rewardedInterstitialAdLoadCallback != null && (zzbxkVar = this.zzb) != null) {
            rewardedInterstitialAdLoadCallback.onAdLoaded(zzbxkVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zze(int i) {
    }
}
