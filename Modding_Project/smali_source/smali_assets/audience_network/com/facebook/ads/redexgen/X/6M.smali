.class public final Lcom/facebook/ads/redexgen/X/6M;
.super Lcom/facebook/ads/redexgen/X/dL;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Lcom/facebook/ads/redexgen/X/LL;)V
    .locals 1

    .line 17808
    if-nez p3, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/7T;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7T;-><init>()V

    .line 17809
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/dL;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 17810
    return-void

    .line 17811
    :cond_0
    invoke-interface {p3}, Lcom/facebook/ads/redexgen/X/LL;->ABm()Lcom/facebook/ads/redexgen/X/7d;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A0F()Lcom/facebook/ads/redexgen/X/LH;
    .locals 1

    .line 17812
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/j9;
    .locals 1

    .line 17813
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/j9;

    return-object v0
.end method
