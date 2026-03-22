.class public Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;
.super Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdListener;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAd;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdListener;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener$1;-><init>(Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    .line 10
    .line 11
    new-instance v0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener$2;-><init>(Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    .line 17
    .line 18
    new-instance v0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener$3;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener$3;-><init>(Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAd;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;)Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;)Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/google/android/gms/ads/OnUserEarnedRewardListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarRewardedAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    .line 2
    .line 3
    return-object v0
.end method
