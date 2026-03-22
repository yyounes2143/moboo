.class public Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener;
.super Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdListener;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/AdListener;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IScarBannerAdListenerWrapper;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/IScarBannerAdListenerWrapper;Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdListener;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener$1;-><init>(Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/AdListener;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IScarBannerAdListenerWrapper;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener;)Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener;)Lcom/unity3d/scar/adapter/common/IScarBannerAdListenerWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IScarBannerAdListenerWrapper;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/AdListener;

    .line 2
    .line 3
    return-object v0
.end method
