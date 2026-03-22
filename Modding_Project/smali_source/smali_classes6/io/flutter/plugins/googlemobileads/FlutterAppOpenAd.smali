.class Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;
.super Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterOverlayAd;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd$DelegatingAppOpenAdLoadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterAppOpenAd"


# instance fields
.field private ad:Lcom/google/android/gms/ads/appopen/AppOpenAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final adManagerAdRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
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


# direct methods
.method public constructor <init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;)V
    .locals 1
    .param p2    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/flutter/plugins/googlemobileads/FlutterAdRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lio/flutter/plugins/googlemobileads/FlutterAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterOverlayAd;-><init>(I)V

    .line 2
    .line 3
    .line 4
    if-nez p4, :cond_1

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 12
    :goto_1
    const-string v0, "One of request and adManagerAdRequest must be non-null."

    .line 13
    .line 14
    invoke-static {p1, v0}, Lio/flutter/util/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 18
    .line 19
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->adUnitId:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p4, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 22
    .line 23
    iput-object p5, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->adManagerAdRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 24
    .line 25
    iput-object p6, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic access$000(Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

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

.method private onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/appopen/AppOpenAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->ad:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 2
    .line 3
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;-><init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;Lio/flutter/plugins/googlemobileads/FlutterAd;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 14
    .line 15
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

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


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->ad:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 3
    .line 4
    return-void
.end method

.method public load()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 6
    .line 7
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->adUnitId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->asAdRequest(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v3, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd$DelegatingAppOpenAdLoadCallback;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd$DelegatingAppOpenAdLoadCallback;-><init>(Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, v0, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;->loadAppOpen(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->adManagerAdRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 27
    .line 28
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->adUnitId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;->asAdManagerAdRequest(Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v3, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd$DelegatingAppOpenAdLoadCallback;

    .line 35
    .line 36
    invoke-direct {v3, p0}, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd$DelegatingAppOpenAdLoadCallback;-><init>(Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v0, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;->loadAdManagerAppOpen(Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->ad:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setImmersiveMode(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->ad:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->ad:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 16
    .line 17
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;

    .line 18
    .line 19
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 20
    .line 21
    iget v3, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 22
    .line 23
    invoke-direct {v1, v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterFullScreenContentCallback;-><init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->ad:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 30
    .line 31
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAppOpenAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 32
    .line 33
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->getActivity()Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
