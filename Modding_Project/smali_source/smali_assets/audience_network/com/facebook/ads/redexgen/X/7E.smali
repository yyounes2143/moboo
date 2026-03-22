.class public final Lcom/facebook/ads/redexgen/X/7E;
.super Lcom/facebook/ads/redexgen/X/hU;
.source ""


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

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/iA;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/73;

.field public final synthetic A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7B;ZZLcom/facebook/ads/redexgen/X/73;Lcom/facebook/ads/redexgen/X/iA;)V
    .locals 0

    .line 21221
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/7E;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7E;->A02:Lcom/facebook/ads/redexgen/X/73;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/7E;->A01:Lcom/facebook/ads/redexgen/X/iA;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/hU;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 3

    .line 21222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7E;->A01:Lcom/facebook/ads/redexgen/X/iA;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    .line 21223
    return-void
.end method

.method public final A01(Z)V
    .locals 5

    .line 21224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A02(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A03:Z

    if-eqz v0, :cond_0

    .line 21225
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    .line 21226
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A02(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7E;->A02:Lcom/facebook/ads/redexgen/X/73;

    new-instance v1, Lcom/facebook/ads/redexgen/X/iJ;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/iJ;-><init>(Lcom/facebook/ads/redexgen/X/7E;)V

    .line 21227
    const/4 v0, 0x0

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/bu;->A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/br;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v0

    .line 21228
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/7B;->A04(Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/bt;

    .line 21229
    :goto_0
    return-void

    .line 21230
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A03(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0I:Lcom/facebook/ads/redexgen/X/Vb;

    if-ne v1, v0, :cond_1

    .line 21231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A02(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->ADn()V

    .line 21232
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A06(Lcom/facebook/ads/redexgen/X/7B;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A01:Lcom/facebook/ads/redexgen/X/iA;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF4(Lcom/facebook/ads/redexgen/X/iA;)V

    goto :goto_0
.end method
