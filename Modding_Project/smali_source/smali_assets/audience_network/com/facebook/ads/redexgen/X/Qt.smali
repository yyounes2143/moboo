.class public abstract Lcom/facebook/ads/redexgen/X/Qt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Landroid/content/Context;)V
    .locals 2

    .line 61536
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/RB;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Qs;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Qs;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qq;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Qq;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Qs;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->start()V

    .line 61537
    return-void
.end method
