.class public final Lcom/facebook/ads/redexgen/X/i9;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/i6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/i6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/i6;)V
    .locals 0

    .line 85669
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/i9;->A00:Lcom/facebook/ads/redexgen/X/i6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 85670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i9;->A00:Lcom/facebook/ads/redexgen/X/i6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i6;->A02(Lcom/facebook/ads/redexgen/X/i6;)Lcom/facebook/ads/redexgen/X/Mk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i9;->A00:Lcom/facebook/ads/redexgen/X/i6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i6;->A02(Lcom/facebook/ads/redexgen/X/i6;)Lcom/facebook/ads/redexgen/X/Mk;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mk;->ACi()V

    .line 85672
    :cond_0
    return-void
.end method
