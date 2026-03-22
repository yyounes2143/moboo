package com.unity3d.scar.adapter.v2100.scarads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.unity3d.scar.adapter.common.IScarRewardedAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ScarRewardedAdListener extends ScarAdListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final IScarRewardedAdListenerWrapper f10921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ScarRewardedAd f10922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RewardedAdLoadCallback f10920Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new RewardedAdLoadCallback() { // from class: com.unity3d.scar.adapter.v2100.scarads.ScarRewardedAdListener.1
        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            ScarRewardedAdListener.this.f10921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdFailedToLoad(loadAdError.getCode(), loadAdError.toString());
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(@NonNull RewardedAd rewardedAd) {
            super.onAdLoaded((AnonymousClass1) rewardedAd);
            ScarRewardedAdListener.this.f10921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdLoaded();
            rewardedAd.setFullScreenContentCallback(ScarRewardedAdListener.this.f10918Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            ScarRewardedAdListener.this.f10922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(rewardedAd);
            IScarLoadListener iScarLoadListener = ScarRewardedAdListener.this.f10903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (iScarLoadListener != null) {
                iScarLoadListener.onAdLoaded();
            }
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final OnUserEarnedRewardListener f10919Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new OnUserEarnedRewardListener() { // from class: com.unity3d.scar.adapter.v2100.scarads.ScarRewardedAdListener.2
        @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
        public void onUserEarnedReward(@NonNull RewardItem rewardItem) {
            ScarRewardedAdListener.this.f10921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onUserEarnedReward();
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FullScreenContentCallback f10918Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new FullScreenContentCallback() { // from class: com.unity3d.scar.adapter.v2100.scarads.ScarRewardedAdListener.3
        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdClicked() {
            super.onAdClicked();
            ScarRewardedAdListener.this.f10921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdClicked();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdDismissedFullScreenContent() {
            super.onAdDismissedFullScreenContent();
            ScarRewardedAdListener.this.f10921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdClosed();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
            super.onAdFailedToShowFullScreenContent(adError);
            ScarRewardedAdListener.this.f10921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdFailedToShow(adError.getCode(), adError.toString());
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdImpression() {
            super.onAdImpression();
            ScarRewardedAdListener.this.f10921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdImpression();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdShowedFullScreenContent() {
            super.onAdShowedFullScreenContent();
            ScarRewardedAdListener.this.f10921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdOpened();
        }
    };

    public ScarRewardedAdListener(IScarRewardedAdListenerWrapper iScarRewardedAdListenerWrapper, ScarRewardedAd scarRewardedAd) {
        this.f10921Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iScarRewardedAdListenerWrapper;
        this.f10922Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = scarRewardedAd;
    }

    public OnUserEarnedRewardListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10919Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public RewardedAdLoadCallback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10920Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
