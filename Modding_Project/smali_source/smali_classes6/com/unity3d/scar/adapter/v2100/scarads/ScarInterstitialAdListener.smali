.class public Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;
.super Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdListener;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdListener;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener$1;-><init>(Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    .line 10
    .line 11
    new-instance v0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener$2;-><init>(Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAd;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;)Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;)Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/scarads/ScarInterstitialAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    .line 2
    .line 3
    return-object v0
.end method
