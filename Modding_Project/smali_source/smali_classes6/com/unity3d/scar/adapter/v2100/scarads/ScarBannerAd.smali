.class public Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;
.super Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdBase;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdBase<",
        "Lcom/google/android/gms/ads/AdView;",
        ">;"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/AdView;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/unity3d/scar/adapter/v2100/requests/AdRequestFactory;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;IILcom/unity3d/scar/adapter/common/IAdsErrorHandler;Lcom/unity3d/scar/adapter/common/IScarBannerAdListenerWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4, p3, p7}, Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdBase;-><init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/v2100/requests/AdRequestFactory;Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    iput p5, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    iput p6, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/gms/ads/AdView;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/AdView;

    .line 18
    .line 19
    new-instance p1, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAdListener;

    .line 20
    .line 21
    invoke-direct {p1, p8, p0}, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAdListener;-><init>(Lcom/unity3d/scar/adapter/common/IScarBannerAdListenerWrapper;Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdListener;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/AdView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/ads/AdRequest;Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/AdView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/AdView;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    .line 15
    .line 16
    iget v1, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    iget v2, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/AdView;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/AdView;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdListener;

    .line 40
    .line 41
    check-cast v0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAdListener;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/google/android/gms/ads/AdListener;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/AdView;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method
