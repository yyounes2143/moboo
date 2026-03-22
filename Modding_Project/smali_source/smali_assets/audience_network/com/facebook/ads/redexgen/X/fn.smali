.class public final Lcom/facebook/ads/redexgen/X/fn;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/fm;->AD8(Lcom/facebook/ads/redexgen/X/5G;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/fm;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/5G;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fm;Lcom/facebook/ads/redexgen/X/5G;)V
    .locals 0

    .line 81586
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fn;->A00:Lcom/facebook/ads/redexgen/X/fm;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/fn;->A01:Lcom/facebook/ads/redexgen/X/5G;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 81587
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fn;->A01:Lcom/facebook/ads/redexgen/X/5G;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fn;->A00:Lcom/facebook/ads/redexgen/X/fm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/fm;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    .line 81588
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1B()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    .line 81589
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->setAdViewabilityChecker(Lcom/facebook/ads/redexgen/X/eX;)V

    .line 81590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fn;->A00:Lcom/facebook/ads/redexgen/X/fm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/fm;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1f(ZZ)V

    .line 81591
    return-void
.end method
