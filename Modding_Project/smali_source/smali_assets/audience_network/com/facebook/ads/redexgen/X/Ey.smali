.class public abstract synthetic Lcom/facebook/ads/redexgen/X/Ey;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/3X;)Lcom/facebook/ads/redexgen/X/lb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/concurrent/Executor;",
            ">(TT;",
            "Lcom/facebook/ads/redexgen/X/3X<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/Ez;"
        }
    .end annotation

    .line 35357
    .local p0, "executor":Ljava/util/concurrent/Executor;, "TT;"
    .local p1, "releaseCallback":Lcom/facebook/ads/redexgen/X/3X;, "Lcom/facebook/ads/androidx/media3/common/util/Consumer<TT;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/lb;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/lb;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/3X;)V

    return-object v0
.end method
