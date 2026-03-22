package com.unity3d.scar.adapter.v2300.scarads;

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
    public final IScarRewardedAdListenerWrapper f10966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ScarRewardedAd f10967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RewardedAdLoadCallback f10965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new RewardedAdLoadCallback() { // from class: com.unity3d.scar.adapter.v2300.scarads.ScarRewardedAdListener.1
        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            ScarRewardedAdListener.this.f10966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdFailedToLoad(loadAdError.getCode(), loadAdError.toString());
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(@NonNull RewardedAd rewardedAd) {
            super.onAdLoaded((AnonymousClass1) rewardedAd);
            ScarRewardedAdListener.this.f10966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdLoaded();
            rewardedAd.setFullScreenContentCallback(ScarRewardedAdListener.this.f10963Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            ScarRewardedAdListener.this.f10967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(rewardedAd);
            IScarLoadListener iScarLoadListener = ScarRewardedAdListener.this.f10948Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (iScarLoadListener != null) {
                iScarLoadListener.onAdLoaded();
            }
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final OnUserEarnedRewardListener f10964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new OnUserEarnedRewardListener() { // from class: com.unity3d.scar.adapter.v2300.scarads.ScarRewardedAdListener.2
        @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
        public void onUserEarnedReward(@NonNull RewardItem rewardItem) {
            ScarRewardedAdListener.this.f10966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onUserEarnedReward();
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FullScreenContentCallback f10963Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new FullScreenContentCallback() { // from class: com.unity3d.scar.adapter.v2300.scarads.ScarRewardedAdListener.3
        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdClicked() {
            super.onAdClicked();
            ScarRewardedAdListener.this.f10966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdClicked();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdDismissedFullScreenContent() {
            super.onAdDismissedFullScreenContent();
            ScarRewardedAdListener.this.f10966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdClosed();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
            super.onAdFailedToShowFullScreenContent(adError);
            ScarRewardedAdListener.this.f10966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdFailedToShow(adError.getCode(), adError.toString());
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdImpression() {
            super.onAdImpression();
            ScarRewardedAdListener.this.f10966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdImpression();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdShowedFullScreenContent() {
            super.onAdShowedFullScreenContent();
            ScarRewardedAdListener.this.f10966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onAdOpened();
        }
    };

    public ScarRewardedAdListener(IScarRewardedAdListenerWrapper iScarRewardedAdListenerWrapper, ScarRewardedAd scarRewardedAd) {
        this.f10966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iScarRewardedAdListenerWrapper;
        this.f10967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = scarRewardedAd;
    }

    public OnUserEarnedRewardListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public RewardedAdLoadCallback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
