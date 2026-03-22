.class public Lcom/unity3d/scar/adapter/v2300/ScarAdapter;
.super Lcom/unity3d/scar/adapter/common/ScarAdapterBase;
.source "Proguard"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/IScarAdapter;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/scar/adapter/common/IAdsErrorHandler<",
            "Lcom/unity3d/scar/adapter/common/WebViewAdsError;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;-><init>(Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;

    .line 5
    .line 6
    new-instance v0, Lcom/unity3d/scar/adapter/common/requests/RequestExtras;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lcom/unity3d/scar/adapter/common/requests/RequestExtras;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;-><init>(Lcom/unity3d/scar/adapter/common/requests/RequestExtras;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2300/ScarAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;

    .line 15
    .line 16
    new-instance p2, Lcom/unity3d/scar/adapter/v2300/signals/SignalsCollector;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Lcom/unity3d/scar/adapter/v2300/signals/SignalsCollector;-><init>(Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/signals/ISignalsCollector;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/v2300/ScarAdapter;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/v2300/ScarAdapter;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarInterstitialAd;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/unity3d/scar/adapter/v2300/ScarAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarInterstitialAd;-><init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$1;

    .line 14
    .line 15
    invoke-direct {p1, p0, v0, v3}, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$1;-><init>(Lcom/unity3d/scar/adapter/v2300/ScarAdapter;Lcom/unity3d/scar/adapter/v2300/scarads/ScarInterstitialAd;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/unity3d/scar/adapter/common/Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAd;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/unity3d/scar/adapter/v2300/ScarAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAd;-><init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$2;

    .line 14
    .line 15
    invoke-direct {p1, p0, v0, v3}, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$2;-><init>(Lcom/unity3d/scar/adapter/v2300/ScarAdapter;Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAd;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/unity3d/scar/adapter/common/Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;IILcom/unity3d/scar/adapter/common/IScarBannerAdListenerWrapper;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/unity3d/scar/adapter/v2300/ScarAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;

    .line 4
    .line 5
    iget-object v7, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v4, p3

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    move-object v8, p6

    .line 13
    invoke-direct/range {v0 .. v8}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;IILcom/unity3d/scar/adapter/common/IAdsErrorHandler;Lcom/unity3d/scar/adapter/common/IScarBannerAdListenerWrapper;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$3;

    .line 17
    .line 18
    invoke-direct {p1, p0, v0}, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$3;-><init>(Lcom/unity3d/scar/adapter/v2300/ScarAdapter;Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/unity3d/scar/adapter/common/Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
