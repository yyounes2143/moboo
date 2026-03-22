.class public abstract Lcom/facebook/ads/redexgen/X/UB;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Bn;)V
    .locals 2

    .line 67384
    sget-object v0, Lcom/facebook/ads/redexgen/X/f3;->A07:Lcom/facebook/ads/redexgen/X/f3;

    .line 67385
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bn;->A5M(Lcom/facebook/ads/redexgen/X/f3;)Lcom/facebook/ads/redexgen/X/f2;

    move-result-object v1

    .line 67386
    .local v0, "syncBundle":Lcom/facebook/ads/redexgen/X/f2;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vi;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/redexgen/X/Vi;-><init>(Lcom/facebook/ads/redexgen/X/f2;Lcom/facebook/ads/redexgen/X/cu;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/f2;->A3t(Lcom/facebook/ads/redexgen/X/f4;)V

    .line 67387
    return-void
.end method
