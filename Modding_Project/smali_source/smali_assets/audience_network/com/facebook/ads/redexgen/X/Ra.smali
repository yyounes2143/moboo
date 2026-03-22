.class public final Lcom/facebook/ads/redexgen/X/Ra;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;


# instance fields
.field public A00:Lcom/facebook/ads/AdExperienceType;

.field public A01:Lcom/facebook/ads/redexgen/X/RZ;

.field public A02:Ljava/lang/String;

.field public A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RZ;)V
    .locals 0

    .line 62969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62970
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A01:Lcom/facebook/ads/redexgen/X/RZ;

    .line 62971
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 4

    .line 62972
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ra;->A01:Lcom/facebook/ads/redexgen/X/RZ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ra;->A02:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A00:Lcom/facebook/ads/AdExperienceType;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A03:Z

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RZ;->A07(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 62973
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 62974
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ra;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;
    .locals 0

    .line 62975
    return-object p0
.end method

.method public final withAdExperience(Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 62976
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A00:Lcom/facebook/ads/AdExperienceType;

    .line 62977
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 62978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A01:Lcom/facebook/ads/redexgen/X/RZ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RZ;->A06(Lcom/facebook/ads/RewardedVideoAdListener;)V

    .line 62979
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 62980
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Ra;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 62981
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A02:Ljava/lang/String;

    .line 62982
    return-object p0
.end method

.method public final withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 62983
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A03:Z

    .line 62984
    return-object p0
.end method

.method public final withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 62985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A01:Lcom/facebook/ads/redexgen/X/RZ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RZ;->A05(Lcom/facebook/ads/RewardData;)V

    .line 62986
    return-object p0
.end method
