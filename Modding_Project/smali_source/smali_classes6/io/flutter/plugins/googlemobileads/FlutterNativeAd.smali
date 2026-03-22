.class Lio/flutter/plugins/googlemobileads/FlutterNativeAd;
.super Lio/flutter/plugins/googlemobileads/FlutterAd;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlemobileads/FlutterNativeAd$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterNativeAd"


# instance fields
.field private final adFactory:Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private adManagerRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final adUnitId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private customOptions:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
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

.field private final nativeAdOptions:Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final nativeTemplateStyle:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private templateView:Lcom/google/android/ads/nativetemplates/TemplateView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;Ljava/util/Map;Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lio/flutter/plugins/googlemobileads/FlutterAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lio/flutter/plugins/googlemobileads/AdInstanceManager;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;",
            "Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;",
            "Lio/flutter/plugins/googlemobileads/FlutterAdLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;",
            "Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p2}, Lio/flutter/plugins/googlemobileads/FlutterAd;-><init>(I)V

    .line 12
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->context:Landroid/content/Context;

    .line 13
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 14
    iput-object p4, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->adUnitId:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->adFactory:Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 16
    iput-object p6, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->adManagerRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 17
    iput-object p7, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 18
    iput-object p8, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->customOptions:Ljava/util/Map;

    .line 19
    iput-object p9, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->nativeAdOptions:Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;

    .line 20
    iput-object p10, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->nativeTemplateStyle:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;Lio/flutter/plugins/googlemobileads/FlutterAdRequest;Lio/flutter/plugins/googlemobileads/FlutterAdLoader;Ljava/util/Map;Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/googlemobileads/AdInstanceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/flutter/plugins/googlemobileads/FlutterAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lio/flutter/plugins/googlemobileads/FlutterAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lio/flutter/plugins/googlemobileads/AdInstanceManager;",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;",
            "Lio/flutter/plugins/googlemobileads/FlutterAdRequest;",
            "Lio/flutter/plugins/googlemobileads/FlutterAdLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;",
            "Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lio/flutter/plugins/googlemobileads/FlutterAd;-><init>(I)V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->context:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 4
    iput-object p4, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->adUnitId:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->adFactory:Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 6
    iput-object p6, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 7
    iput-object p7, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 8
    iput-object p8, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->customOptions:Ljava/util/Map;

    .line 9
    iput-object p9, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->nativeAdOptions:Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;

    .line 10
    iput-object p10, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->nativeTemplateStyle:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->templateView:Lcom/google/android/ads/nativetemplates/TemplateView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/ads/nativetemplates/TemplateView;->destroyNativeAd()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->templateView:Lcom/google/android/ads/nativetemplates/TemplateView;

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
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterPlatformView;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lio/flutter/plugins/googlemobileads/FlutterPlatformView;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->templateView:Lcom/google/android/ads/nativetemplates/TemplateView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterPlatformView;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lio/flutter/plugins/googlemobileads/FlutterPlatformView;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method public load()V
    .locals 6

    .line 1
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterNativeAdLoadedListener;

    .line 2
    .line 3
    invoke-direct {v2, p0}, Lio/flutter/plugins/googlemobileads/FlutterNativeAdLoadedListener;-><init>(Lio/flutter/plugins/googlemobileads/FlutterNativeAd;)V

    .line 4
    .line 5
    .line 6
    new-instance v4, Lio/flutter/plugins/googlemobileads/FlutterNativeAdListener;

    .line 7
    .line 8
    iget v0, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 9
    .line 10
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 11
    .line 12
    invoke-direct {v4, v0, v1}, Lio/flutter/plugins/googlemobileads/FlutterNativeAdListener;-><init>(ILio/flutter/plugins/googlemobileads/AdInstanceManager;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->nativeAdOptions:Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    move-object v3, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v0}, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;->asNativeAdOptions()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->request:Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    move-object v1, v0

    .line 40
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 41
    .line 42
    move-object v5, v1

    .line 43
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->adUnitId:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v5, v1}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->asAdRequest(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;->loadNativeAd(Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;Lcom/google/android/gms/ads/nativead/NativeAdOptions;Lcom/google/android/gms/ads/AdListener;Lcom/google/android/gms/ads/AdRequest;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->adManagerRequest:Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->adUnitId:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;->asAdManagerAdRequest(Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->flutterAdLoader:Lio/flutter/plugins/googlemobileads/FlutterAdLoader;

    .line 64
    .line 65
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->adUnitId:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugins/googlemobileads/FlutterAdLoader;->loadAdManagerNativeAd(Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;Lcom/google/android/gms/ads/nativead/NativeAdOptions;Lcom/google/android/gms/ads/AdListener;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/nativead/NativeAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->nativeTemplateStyle:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;->asTemplateView(Landroid/content/Context;)Lcom/google/android/ads/nativetemplates/TemplateView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->templateView:Lcom/google/android/ads/nativetemplates/TemplateView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/ads/nativetemplates/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->adFactory:Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;

    .line 18
    .line 19
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->customOptions:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v0, p1, v1}, Lio/flutter/plugins/googlemobileads/GoogleMobileAdsPlugin$NativeAdFactory;->createNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;Ljava/util/Map;)Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 26
    .line 27
    :goto_0
    new-instance v0, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;

    .line 28
    .line 29
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 30
    .line 31
    invoke-direct {v0, v1, p0}, Lio/flutter/plugins/googlemobileads/FlutterPaidEventListener;-><init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;Lio/flutter/plugins/googlemobileads/FlutterAd;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/FlutterNativeAd;->manager:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 38
    .line 39
    iget v1, p0, Lio/flutter/plugins/googlemobileads/FlutterAd;->adId:I

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, v1, p1}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->onAdLoaded(ILcom/google/android/gms/ads/ResponseInfo;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
