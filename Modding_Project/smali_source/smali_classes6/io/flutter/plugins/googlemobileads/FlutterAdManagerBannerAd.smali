.class Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;
.super Lio/flutter/plugins/googlemobileads/FlutterAd;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugins/googlemobileads/FlutterAdLoadedListener;


# instance fields
.field private final adUnitId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bannerAdCreator:Lio/flutter/plugins/googlemobileads/BannerAdCreator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final request:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final sizes:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugins/googlemobileads/FlutterAdSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/BannerAdCreator;)V
    .locals 0
    .param p2    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/flutter/plugins/googlemobileads/BannerAdCreator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/flutter/plugins/googlemobileads/AdInstanceManager;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/flutter/plugins/googlemobileads/FlutterAdSize;",
            ">;",
            "Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;",
            "Lio/flutter/plugins/googlemobileads/BannerAdCreator;",
            ")V"
        }
    .end annotation

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
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 17
    .line 18
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adUnitId:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p4, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->sizes:Ljava/util/List;

    .line 21
    .line 22
    iput-object p5, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 23
    .line 24
    iput-object p6, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->bannerAdCreator:Lio/flutter/plugins/googlemobileads/BannerAdCreator;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

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
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

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
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->bannerAdCreator:Lio/flutter/plugins/googlemobileads/BannerAdCreator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/flutter/plugins/googlemobileads/BannerAdCreator;->createAdManagerAdView()Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 8
    .line 9
    instance-of v1, p0, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    const/4 v3, -0x2

    .line 17
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 24
    .line 25
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adUnitId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 31
    .line 32
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd$1;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd$1;-><init>(Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->sizes:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    :goto_0
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->sizes:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-ge v1, v2, :cond_1

    .line 56
    .line 57
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->sizes:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lio/flutter/plugins/googlemobileads/FlutterAdSize;

    .line 64
    .line 65
    invoke-virtual {v2}, Lio/flutter/plugins/googlemobileads/FlutterAdSize;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    aput-object v2, v0, v1

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 80
    .line 81
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterBannerAdListener;

    .line 82
    .line 83
    iget v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 84
    .line 85
    iget-object v3, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 86
    .line 87
    invoke-direct {v1, v2, v3, p0}, Lio/flutter/plugins/googlemobileads/FlutterBannerAdListener;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Lio/flutter/plugins/googlemobileads/FlutterAdLoadedListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 94
    .line 95
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 96
    .line 97
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adUnitId:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;->asAdManagerAdRequest(Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

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
