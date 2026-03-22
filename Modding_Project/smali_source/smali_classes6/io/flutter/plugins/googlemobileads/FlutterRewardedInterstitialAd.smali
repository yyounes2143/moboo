.class Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;
.super Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterOverlayAd;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd$DelegatingRewardedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterRIAd"


# instance fields
.field private final adManagerRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final adUnitId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field rewardedInterstitialAd:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)V
    .locals 0
    .param p2    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/flutter/plugins/googlemobileads/FlutterAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterOverlayAd;-><init>(I)V

    .line 8
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 9
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->adUnitId:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->adManagerRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 12
    iput-object p5, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    return-void
.end method

.method public constructor <init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)V
    .locals 0
    .param p2    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/flutter/plugins/googlemobileads/FlutterAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/flutter/plugins/googlemobileads/FlutterAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterOverlayAd;-><init>(I)V

    .line 2
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 3
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->adUnitId:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->adManagerRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 6
    iput-object p5, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->rewardedInterstitialAd:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 3
    .line 4
    return-void
.end method

.method public load()V
    .locals 4

    .line 1
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd$DelegatingRewardedCallback;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd$DelegatingRewardedCallback;-><init>(Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 11
    .line 12
    iget-object v3, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->adUnitId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->asAdRequest(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v2, v3, v1, v0}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;->loadRewardedInterstitial(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->adManagerRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 27
    .line 28
    iget-object v3, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->adUnitId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;->asAdManagerAdRequest(Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v2, v3, v1, v0}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;->loadAdManagerRewardedInterstitial(Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 4
    .line 5
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;-><init>(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdFailedToLoad(ILio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->rewardedInterstitialAd:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 2
    .line 3
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;-><init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;Lio/flutter/plugins/googlemobileads/FlutterAd;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 14
    .line 15
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, v1, p1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdLoaded(ILcom/google/android/gms/ads/ResponseInfo;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onAdMetadataChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdMetadataChanged(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/ads/rewarded/RewardItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 4
    .line 5
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd$FlutterRewardItem;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v2, v3, p1}, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd$FlutterRewardItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onRewardedAdUserEarnedReward(ILio/flutter/plugins/googlemobileads/FlutterRewardedAd$FlutterRewardItem;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->rewardedInterstitialAd:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->setImmersiveMode(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setServerSideVerificationOptions(Lio/flutter/plugins/googlemobileads/FlutterServerSideVerificationOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->rewardedInterstitialAd:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lio/flutter/plugins/googlemobileads/FlutterServerSideVerificationOptions;->asServerSideVerificationOptions()Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->rewardedInterstitialAd:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->getActivity()Landroid/app/Activity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->rewardedInterstitialAd:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 16
    .line 17
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;

    .line 18
    .line 19
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 20
    .line 21
    iget v3, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 22
    .line 23
    invoke-direct {v1, v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;-><init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->rewardedInterstitialAd:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 30
    .line 31
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd$DelegatingRewardedCallback;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd$DelegatingRewardedCallback;-><init>(Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->rewardedInterstitialAd:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 40
    .line 41
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 42
    .line 43
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->getActivity()Landroid/app/Activity;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd$DelegatingRewardedCallback;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd$DelegatingRewardedCallback;-><init>(Lio/flutter/plugins/googlemobileads/FlutterRewardedInterstitialAd;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
