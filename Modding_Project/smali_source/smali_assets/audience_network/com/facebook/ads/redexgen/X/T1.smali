.class public abstract Lcom/facebook/ads/redexgen/X/T1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Ljava/lang/String;)V
    .locals 2

    .line 65142
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SP;->A00()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v1

    .line 65143
    .local v0, "sdkContext":Lcom/facebook/ads/redexgen/X/cu;
    if-eqz v1, :cond_0

    .line 65144
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/U7;->A2O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65145
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Su;->A9w(Ljava/lang/String;)V

    .line 65146
    :cond_0
    return-void
.end method
