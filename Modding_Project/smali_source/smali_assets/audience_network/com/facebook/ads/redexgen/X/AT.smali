.class public final synthetic Lcom/facebook/ads/redexgen/X/AT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AU;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/hq;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/AU;Lcom/facebook/ads/redexgen/X/hq;)V
    .locals 0

    .line 29411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/AU;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AT;->A01:Lcom/facebook/ads/redexgen/X/hq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 29412
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:Lcom/facebook/ads/redexgen/X/AU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A01:Lcom/facebook/ads/redexgen/X/hq;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AU;->A0B(Lcom/facebook/ads/redexgen/X/hq;)V

    return-void
.end method
