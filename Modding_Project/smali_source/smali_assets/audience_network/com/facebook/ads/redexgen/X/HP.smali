.class public final Lcom/facebook/ads/redexgen/X/HP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4n;->A1D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4n;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4n;)V
    .locals 0

    .line 39370
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HP;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACp()V
    .locals 2

    .line 39371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HP;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A09(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HP;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A02(Lcom/facebook/ads/redexgen/X/4n;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->ACy(I)V

    .line 39372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HP;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A09(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cT;->ACZ()V

    .line 39373
    return-void
.end method

.method public final AEn(F)V
    .locals 2

    .line 39374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HP;->A00:Lcom/facebook/ads/redexgen/X/4n;

    .line 39375
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A02(Lcom/facebook/ads/redexgen/X/4n;)I

    move-result v0

    int-to-float v1, v0

    sub-float/2addr v1, p1

    .line 39376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HP;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A0S(Lcom/facebook/ads/redexgen/X/4n;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 39377
    .local v0, "seenTime":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HP;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A0S(Lcom/facebook/ads/redexgen/X/4n;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HP;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A02(Lcom/facebook/ads/redexgen/X/4n;)I

    move-result v0

    :goto_1
    int-to-float v0, v0

    .line 39378
    .local v1, "totalForce":F
    div-float/2addr v1, v0

    .line 39379
    .local p0, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HP;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A09(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/cT;->AJs(F)V

    .line 39380
    return-void

    .line 39381
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HP;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A03(Lcom/facebook/ads/redexgen/X/4n;)I

    move-result v0

    goto :goto_1

    .line 39382
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HP;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A0A(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getDuration()I

    move-result v0

    goto :goto_0
.end method
