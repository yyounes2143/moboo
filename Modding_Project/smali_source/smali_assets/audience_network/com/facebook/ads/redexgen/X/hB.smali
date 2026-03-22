.class public final Lcom/facebook/ads/redexgen/X/hB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/TL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A71()Ljava/lang/String;
    .locals 1

    .line 84398
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7F()Ljava/lang/String;
    .locals 1

    .line 84399
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7e(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Se;
    .locals 1

    .line 84400
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A8O()Ljava/lang/String;
    .locals 1

    .line 84401
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A98()Ljava/lang/String;
    .locals 2

    .line 84402
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v0, :cond_0

    .line 84403
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v0

    .line 84404
    :goto_0
    return-object v0

    .line 84405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AAR()Z
    .locals 1

    .line 84406
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v0

    return v0
.end method

.method public final AAX()Z
    .locals 1

    .line 84407
    const/4 v0, 0x0

    return v0
.end method

.method public final AAb()Ljava/lang/Boolean;
    .locals 1

    .line 84408
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isTestMode(Landroid/content/Context;)Z
    .locals 1

    .line 84409
    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
