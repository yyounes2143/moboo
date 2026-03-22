.class Lio/flutter/plugins/googlemobileads/FlutterBannerAd;
.super Lio/flutter/plugins/googlemobileads/FlutterAd;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugins/googlemobileads/FlutterAdLoadedListener;


# instance fields
.field private final adUnitId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private adView:Lcom/google/android/gms/ads/AdView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bannerAdCreator:Lio/flutter/plugins/googlemobileads/BannerAdCreator;
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

.field private final size:Lio/flutter/plugins/googlemobileads/FlutterAdSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdSize;Lio/flutter/plugins/googlemobileads/BannerAdCreator;)V
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
    .param p5    # Lio/flutter/plugins/googlemobileads/FlutterAdSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/flutter/plugins/googlemobileads/BannerAdCreator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemobileads/FlutterAd;-><init>(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lio/flutter/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p3}, Lio/flutter/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {p4}, Lio/flutter/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p5}, Lio/flutter/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 17
    .line 18
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adUnitId:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p4, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 21
    .line 22
    iput-object p5, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->size:Lio/flutter/plugins/googlemobileads/FlutterAdSize;

    .line 23
    .line 24
    iput-object p6, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->bannerAdCreator:Lio/flutter/plugins/googlemobileads/BannerAdCreator;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adView:Lcom/google/android/gms/ads/AdView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adView:Lcom/google/android/gms/ads/AdView;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public getAdSize()Lio/flutter/plugins/googlemobileads/FlutterAdSize;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adView:Lcom/google/android/gms/ads/AdView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterAdSize;

    .line 13
    .line 14
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adView:Lcom/google/android/gms/ads/AdView;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lio/flutter/plugins/googlemobileads/FlutterAdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method public getPlatformView()Lio/flutter/plugin/platform/PlatformView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adView:Lcom/google/android/gms/ads/AdView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterPlatformView;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lio/flutter/plugins/googlemobileads/FlutterPlatformView;-><init>(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-object v1
.end method

.method public load()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->bannerAdCreator:Lio/flutter/plugins/googlemobileads/BannerAdCreator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/flutter/plugins/googlemobileads/BannerAdCreator;->createAdView()Lcom/google/android/gms/ads/AdView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adView:Lcom/google/android/gms/ads/AdView;

    .line 8
    .line 9
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adUnitId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adView:Lcom/google/android/gms/ads/AdView;

    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->size:Lio/flutter/plugins/googlemobileads/FlutterAdSize;

    .line 17
    .line 18
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/FlutterAdSize;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adView:Lcom/google/android/gms/ads/AdView;

    .line 26
    .line 27
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;

    .line 28
    .line 29
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 30
    .line 31
    invoke-direct {v1, v2, p0}, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;-><init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;Lio/flutter/plugins/googlemobileads/FlutterAd;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adView:Lcom/google/android/gms/ads/AdView;

    .line 38
    .line 39
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterBannerAdListener;

    .line 40
    .line 41
    iget v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 42
    .line 43
    iget-object v3, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 44
    .line 45
    invoke-direct {v1, v2, v3, p0}, Lio/flutter/plugins/googlemobileads/FlutterBannerAdListener;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Lio/flutter/plugins/googlemobileads/FlutterAdLoadedListener;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adView:Lcom/google/android/gms/ads/AdView;

    .line 52
    .line 53
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 54
    .line 55
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adUnitId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->asAdRequest(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->adView:Lcom/google/android/gms/ads/AdView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 6
    .line 7
    iget v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v2, v0}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdLoaded(ILcom/google/android/gms/ads/ResponseInfo;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
