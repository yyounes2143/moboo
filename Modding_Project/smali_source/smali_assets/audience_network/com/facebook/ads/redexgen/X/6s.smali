.class public final Lcom/facebook/ads/redexgen/X/6s;
.super Lcom/facebook/ads/redexgen/X/Or;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/hK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Or<",
        "Lcom/facebook/ads/redexgen/X/hK;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hK;)V
    .locals 0

    .line 20661
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Or;-><init>(Ljava/lang/Object;)V

    .line 20662
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 20663
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Or;->A08()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/hK;

    .line 20664
    .local v0, "controller":Lcom/facebook/ads/redexgen/X/hK;
    if-nez v1, :cond_0

    .line 20665
    return-void

    .line 20666
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/hK;->A01(Lcom/facebook/ads/redexgen/X/hK;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xg;->A02(Lcom/facebook/ads/redexgen/X/dL;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20667
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/hK;->A07()V

    .line 20668
    :goto_0
    return-void

    .line 20669
    :cond_1
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/hK;->A00(Lcom/facebook/ads/redexgen/X/hK;)Landroid/os/Handler;

    move-result-object v3

    .line 20670
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/hK;->A02(Lcom/facebook/ads/redexgen/X/hK;)Ljava/lang/Runnable;

    move-result-object v2

    .line 20671
    const-wide/16 v0, 0x1388

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
