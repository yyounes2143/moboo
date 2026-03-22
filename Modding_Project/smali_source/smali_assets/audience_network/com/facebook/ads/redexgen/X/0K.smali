.class public final Lcom/facebook/ads/redexgen/X/0K;
.super Lcom/facebook/ads/redexgen/X/0h;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5s;

.field public A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 6

    .line 3533
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/0h;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 3534
    new-instance v0, Lcom/facebook/ads/redexgen/X/5s;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/5s;-><init>(Lcom/facebook/ads/redexgen/X/0h;ILjava/util/List;Lcom/facebook/ads/redexgen/X/eX;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0K;->A00:Lcom/facebook/ads/redexgen/X/5s;

    .line 3535
    return-void
.end method


# virtual methods
.method public final A20(Lcom/facebook/ads/redexgen/X/eX;)V
    .locals 1

    .line 3536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0K;->A00:Lcom/facebook/ads/redexgen/X/5s;

    if-eqz v0, :cond_0

    .line 3537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0K;->A00:Lcom/facebook/ads/redexgen/X/5s;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5s;->A0c(Lcom/facebook/ads/redexgen/X/eX;)V

    .line 3538
    :cond_0
    return-void
.end method

.method public getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/5s;
    .locals 1

    .line 3539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0K;->A00:Lcom/facebook/ads/redexgen/X/5s;

    return-object v0
.end method

.method public setCardsInfo(Ljava/util/ArrayList;)V
    .locals 2

    .line 3540
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0K;->A01:Ljava/util/List;

    .line 3541
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0K;->A00:Lcom/facebook/ads/redexgen/X/5s;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0K;->A01:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5s;->A0d(Ljava/util/List;)V

    .line 3542
    return-void
.end method
