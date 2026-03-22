.class public final synthetic Lcom/facebook/ads/redexgen/X/CP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/CE;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/CG;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/CW;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/CX;

.field public final synthetic A04:Ljava/lang/Object;

.field public final synthetic A05:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/CW;Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 32843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CP;->A02:Lcom/facebook/ads/redexgen/X/CW;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CP;->A03:Lcom/facebook/ads/redexgen/X/CX;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/CP;->A00:Lcom/facebook/ads/redexgen/X/CE;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/CP;->A01:Lcom/facebook/ads/redexgen/X/CG;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/CP;->A04:Ljava/lang/Object;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/CP;->A05:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 32844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CP;->A02:Lcom/facebook/ads/redexgen/X/CW;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CP;->A03:Lcom/facebook/ads/redexgen/X/CX;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CP;->A00:Lcom/facebook/ads/redexgen/X/CE;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/CP;->A01:Lcom/facebook/ads/redexgen/X/CG;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/CP;->A04:Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/CP;->A05:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/CW;->A0G(Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
