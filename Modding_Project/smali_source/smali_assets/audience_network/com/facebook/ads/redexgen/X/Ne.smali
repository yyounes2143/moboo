.class public final Lcom/facebook/ads/redexgen/X/Ne;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/gy;->A0F(Lcom/facebook/ads/redexgen/X/MP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/gy;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gy;)V
    .locals 0

    .line 54234
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 54235
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 54236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/gy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/gy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 54237
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gm;->A6c()Lcom/facebook/ads/Ad;

    move-result-object v0

    .line 54238
    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 54239
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 54240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/gy;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A03(Lcom/facebook/ads/redexgen/X/gw;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;

    .line 54241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/gy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A05(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/hy;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hy;->A2A(Z)V

    .line 54242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/gy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/gy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 54243
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gm;->A6c()Lcom/facebook/ads/Ad;

    move-result-object v0

    .line 54244
    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 54245
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 54246
    return-void
.end method

.method public final onRewardedVideoClosed()V
    .locals 1

    .line 54247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/gy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    .line 54248
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 1

    .line 54249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ne;->A00:Lcom/facebook/ads/redexgen/X/gy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    .line 54250
    return-void
.end method
