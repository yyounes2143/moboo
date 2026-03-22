.class public final Lcom/facebook/ads/redexgen/X/iK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Re;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7B;->A0G(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7B;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7B;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86057
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iK;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/iK;->A01:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACM()V
    .locals 5

    .line 86058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iK;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A02(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iK;->A01:Z

    if-eqz v0, :cond_0

    .line 86059
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/iK;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iK;->A00:Lcom/facebook/ads/redexgen/X/7B;

    .line 86060
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A02(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iK;->A00:Lcom/facebook/ads/redexgen/X/7B;

    .line 86061
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A01(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/73;

    new-instance v1, Lcom/facebook/ads/redexgen/X/iL;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/iL;-><init>(Lcom/facebook/ads/redexgen/X/iK;)V

    .line 86062
    const/4 v0, 0x0

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/bu;->A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/br;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v0

    .line 86063
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/7B;->A04(Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/bt;

    .line 86064
    :goto_0
    return-void

    .line 86065
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iK;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A06(Lcom/facebook/ads/redexgen/X/7B;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iK;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iK;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF4(Lcom/facebook/ads/redexgen/X/iA;)V

    goto :goto_0
.end method

.method public final ACN()V
    .locals 3

    .line 86067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iK;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iK;->A00:Lcom/facebook/ads/redexgen/X/7B;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    .line 86068
    return-void
.end method
