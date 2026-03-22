.class public final Lcom/facebook/ads/redexgen/X/ib;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/iZ;->AD8(Lcom/facebook/ads/redexgen/X/5G;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/iZ;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/5G;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iZ;Lcom/facebook/ads/redexgen/X/5G;)V
    .locals 0

    .line 86519
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ib;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ib;->A01:Lcom/facebook/ads/redexgen/X/5G;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 86520
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ib;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iZ;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A0D(Lcom/facebook/ads/redexgen/X/7L;)V

    .line 86521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iZ;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A06(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86522
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ib;->A01:Lcom/facebook/ads/redexgen/X/5G;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iZ;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A06(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->setAdViewabilityChecker(Lcom/facebook/ads/redexgen/X/eX;)V

    .line 86523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A00:Lcom/facebook/ads/redexgen/X/iZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/iZ;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A06(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 86524
    :cond_0
    return-void
.end method
