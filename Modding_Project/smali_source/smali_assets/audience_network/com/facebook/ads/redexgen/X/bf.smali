.class public abstract Lcom/facebook/ads/redexgen/X/bf;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/ai;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/FH;)Lcom/facebook/ads/redexgen/X/5Q;
    .locals 1

    .line 76993
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 76994
    new-instance v0, Lcom/facebook/ads/redexgen/X/0e;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/0e;-><init>(Lcom/facebook/ads/redexgen/X/ai;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/FH;)V

    .line 76995
    :goto_0
    return-object v0

    .line 76996
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/0f;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/0f;-><init>(Lcom/facebook/ads/redexgen/X/ai;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/FH;)V

    goto :goto_0
.end method
