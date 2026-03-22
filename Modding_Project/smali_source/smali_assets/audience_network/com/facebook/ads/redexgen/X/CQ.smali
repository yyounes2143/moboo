.class public final synthetic Lcom/facebook/ads/redexgen/X/CQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/CG;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/CW;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/CX;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/CW;Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CG;)V
    .locals 0

    .line 32845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CQ;->A01:Lcom/facebook/ads/redexgen/X/CW;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CQ;->A02:Lcom/facebook/ads/redexgen/X/CX;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/CQ;->A00:Lcom/facebook/ads/redexgen/X/CG;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 32846
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CQ;->A01:Lcom/facebook/ads/redexgen/X/CW;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CQ;->A02:Lcom/facebook/ads/redexgen/X/CX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CQ;->A00:Lcom/facebook/ads/redexgen/X/CG;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CW;->A0H(Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CG;)V

    return-void
.end method
