.class public final synthetic Lcom/facebook/ads/redexgen/X/CT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/CE;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/CG;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/CW;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/CX;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/CW;Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;)V
    .locals 0

    .line 32857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CT;->A02:Lcom/facebook/ads/redexgen/X/CW;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CT;->A03:Lcom/facebook/ads/redexgen/X/CX;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/CT;->A00:Lcom/facebook/ads/redexgen/X/CE;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/CT;->A01:Lcom/facebook/ads/redexgen/X/CG;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 32858
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/CT;->A02:Lcom/facebook/ads/redexgen/X/CW;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CT;->A03:Lcom/facebook/ads/redexgen/X/CX;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CT;->A00:Lcom/facebook/ads/redexgen/X/CE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CT;->A01:Lcom/facebook/ads/redexgen/X/CG;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CW;->A0E(Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;)V

    return-void
.end method
