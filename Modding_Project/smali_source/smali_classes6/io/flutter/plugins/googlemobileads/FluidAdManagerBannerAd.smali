.class final Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;
.super Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;
.source "Proguard"


# static fields
.field private static final TAG:Ljava/lang/String; = "FluidAdManagerBannerAd"


# instance fields
.field private containerView:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private height:I


# direct methods
.method public constructor <init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/BannerAdCreator;)V
    .locals 9
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
    .param p5    # Lio/flutter/plugins/googlemobileads/BannerAdCreator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterAdSize;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->FLUID:Lcom/google/android/gms/ads/AdSize;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/flutter/plugins/googlemobileads/FlutterAdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    move-object v2, p0

    .line 13
    move v3, p1

    .line 14
    move-object v4, p2

    .line 15
    move-object v5, p3

    .line 16
    move-object v7, p4

    .line 17
    move-object v8, p5

    .line 18
    invoke-direct/range {v2 .. v8}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/BannerAdCreator;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, -0x1

    .line 22
    iput p1, v2, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;->height:I

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic access$000(Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;->height:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$002(Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;->height:I

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public createContainerView()Landroid/widget/ScrollView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    .line 12
    .line 13
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 14
    .line 15
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->getActivity()Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;->containerView:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;->containerView:Landroid/view/ViewGroup;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public getPlatformView()Lio/flutter/plugin/platform/PlatformView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;->containerView:Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterPlatformView;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lio/flutter/plugins/googlemobileads/FlutterPlatformView;-><init>(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;->createContainerView()Landroid/widget/ScrollView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_2
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;->containerView:Landroid/view/ViewGroup;

    .line 35
    .line 36
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterPlatformView;

    .line 42
    .line 43
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lio/flutter/plugins/googlemobileads/FlutterPlatformView;-><init>(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    return-object v0
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
    new-instance v1, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd$1;-><init>(Lio/flutter/plugins/googlemobileads/FluidAdManagerBannerAd;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 14
    .line 15
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 16
    .line 17
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdManagerBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/ads/BaseAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdLoaded(ILcom/google/android/gms/ads/ResponseInfo;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
