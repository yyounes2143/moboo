.class public final Lcom/facebook/ads/redexgen/X/gy;
.super Lcom/facebook/ads/redexgen/X/MQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/gw;->A0C(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/gw;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gy;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gw;)V
    .locals 0

    .line 83968
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MQ;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gy;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gy;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x9t
        0x18t
        0x1t
        0x24t
        0x28t
        0x29t
        0x33t
        0x35t
        0x28t
        0x2bt
        0x2bt
        0x22t
        0x35t
        0x67t
        0x2et
        0x34t
        0x67t
        0x29t
        0x32t
        0x2bt
        0x2bt
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 83969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerFailed()V

    .line 83970
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 83971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerSuccess()V

    .line 83972
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 83973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A02(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    .line 83975
    :cond_0
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 83976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A02(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoActivityDestroyed()V

    .line 83978
    :cond_0
    return-void
.end method

.method public final A0A()V
    .locals 5

    .line 83979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A02(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    .line 83981
    .end local v0
    :goto_0
    return-void

    .line 83982
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 83983
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A02(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Rb;

    .line 83984
    .local v0, "configBuilder":Lcom/facebook/ads/redexgen/X/Rb;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A01(Lcom/facebook/ads/redexgen/X/gw;)J

    move-result-wide v0

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Rb;->A02(J)Lcom/facebook/ads/redexgen/X/Rb;

    .line 83985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A02(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Rb;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/RewardedVideoAd;->show(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    goto :goto_0
.end method

.method public final A0C()V
    .locals 2

    .line 83986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gw;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3C()V

    .line 83987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gm;->A6c()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 83988
    return-void
.end method

.method public final A0D()V
    .locals 2

    .line 83989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gm;->A6c()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 83990
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/MP;)V
    .locals 6

    .line 83991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A07(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gw;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 83993
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0N:I

    const/4 v2, 0x3

    const/16 v1, 0x12

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gy;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 83994
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gy;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 83995
    return-void

    .line 83996
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/iA;

    .line 83997
    .local v0, "rvAdapter":Lcom/facebook/ads/redexgen/X/iA;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A03:Lcom/facebook/ads/RewardData;

    if-eqz v0, :cond_1

    .line 83998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A03:Lcom/facebook/ads/RewardData;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/iA;->A02(Lcom/facebook/ads/RewardData;)V

    .line 83999
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/iA;->A0H()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/gm;->A00:I

    .line 84000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/gw;->A0E(Lcom/facebook/ads/redexgen/X/gw;Z)Z

    .line 84001
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A07(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0I()Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A06(Lcom/facebook/ads/redexgen/X/gw;Lcom/facebook/ads/redexgen/X/Mo;)Lcom/facebook/ads/redexgen/X/Mo;

    .line 84002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A05(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 84003
    const/4 v3, 0x0

    .line 84004
    .local v1, "iGsChainAdsFrequency":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A05(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1T()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 84006
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A05(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1x()I

    move-result v3

    .line 84007
    :cond_2
    if-lez v3, :cond_3

    .line 84008
    new-instance v5, Lcom/facebook/ads/redexgen/X/WR;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/WR;-><init>()V

    .line 84009
    .local v3, "chainer":Lcom/facebook/ads/redexgen/X/WR;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/gw;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 84010
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A06:Ljava/lang/String;

    .line 84011
    invoke-virtual {v5, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/WR;->A09(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gw;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v5, v0, v2}, Lcom/facebook/ads/redexgen/X/WR;->A08(Lcom/facebook/ads/redexgen/X/dL;Z)V

    .line 84013
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/gw;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 84014
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/gm;->A0D:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 84015
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A06:Ljava/lang/String;

    .line 84016
    invoke-virtual {v5, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/WR;->A07(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    .line 84017
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/gw;->A03(Lcom/facebook/ads/redexgen/X/gw;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;

    .line 84018
    .end local v1    # "iGsChainAdsFrequency":I
    .end local v3    # "chainer":Lcom/facebook/ads/redexgen/X/WR;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A02(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A05(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/hy;->A2A(Z)V

    .line 84020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 84021
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A02(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    .line 84022
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    .line 84023
    invoke-interface {v0, v2}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 84024
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A05(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0p()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 84025
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A02:Lcom/facebook/ads/AdExperienceType;

    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdExperience(Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ne;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ne;-><init>(Lcom/facebook/ads/redexgen/X/gy;)V

    .line 84026
    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    .line 84027
    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object v1

    .line 84028
    .local v1, "loadAdConfig":Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A02(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    .line 84029
    .end local v1    # "loadAdConfig":Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;
    :goto_1
    return-void

    .line 84030
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gm;->A6c()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_1

    .line 84031
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/gw;->A07:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/WR;->A08(Lcom/facebook/ads/redexgen/X/dL;Z)V

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 5

    .line 84032
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A0B(Lcom/facebook/ads/redexgen/X/gw;Z)V

    .line 84033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84034
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 84035
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A00(Lcom/facebook/ads/redexgen/X/gw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v2

    .line 84036
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 84037
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V1;->A04()Ljava/lang/String;

    move-result-object v0

    .line 84038
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3F(JILjava/lang/String;)V

    .line 84039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A04(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gy;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 84040
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gw;->A08(Lcom/facebook/ads/redexgen/X/gw;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gm;->A6c()Lcom/facebook/ads/Ad;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WT;->A00(Lcom/facebook/ads/redexgen/X/V1;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 84041
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 84042
    return-void
.end method
