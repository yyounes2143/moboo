.class public final Lcom/facebook/ads/redexgen/X/Ft;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4H;->A0f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4H;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4H;)V
    .locals 0

    .line 36516
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 36517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Lcom/facebook/ads/redexgen/X/4H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4H;->A02(Lcom/facebook/ads/redexgen/X/4H;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Lcom/facebook/ads/redexgen/X/4H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4H;->A02(Lcom/facebook/ads/redexgen/X/4H;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36518
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Lcom/facebook/ads/redexgen/X/4H;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/G2;->A01:Z

    .line 36519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Lcom/facebook/ads/redexgen/X/4H;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 36520
    :cond_0
    return-void
.end method
