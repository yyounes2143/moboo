.class Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;
.super Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterOverlayAd;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd$DelegatingInterstitialAdLoadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterInterstitialAd"


# instance fields
.field private ad:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
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
    .line 3
    .line 4
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 5
    .line 6
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->adUnitId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 9
    .line 10
    iput-object p5, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->ad:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 3
    .line 4
    return-void
.end method

.method public load()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->adUnitId:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->asAdRequest(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v3, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd$DelegatingInterstitialAdLoadCallback;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd$DelegatingInterstitialAdLoadCallback;-><init>(Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0, v1, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;->loadInterstitial(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

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

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->ad:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 2
    .line 3
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;-><init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;Lio/flutter/plugins/googlemobileads/FlutterAd;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 14
    .line 15
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

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

.method public setImmersiveMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->ad:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setImmersiveMode(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->ad:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->ad:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 16
    .line 17
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;

    .line 18
    .line 19
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 20
    .line 21
    iget v3, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 22
    .line 23
    invoke-direct {v1, v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;-><init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->ad:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 30
    .line 31
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterInterstitialAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 32
    .line 33
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->getActivity()Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
