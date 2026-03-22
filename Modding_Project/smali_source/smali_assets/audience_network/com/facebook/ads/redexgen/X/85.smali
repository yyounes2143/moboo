.class public final synthetic Lcom/facebook/ads/redexgen/X/85;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5g;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/8C;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8C;Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 0

    .line 22603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/85;->A01:Lcom/facebook/ads/redexgen/X/8C;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/85;->A00:Lcom/facebook/ads/redexgen/X/5g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 22604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/85;->A01:Lcom/facebook/ads/redexgen/X/8C;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A00:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8C;->A09(Lcom/facebook/ads/redexgen/X/5g;)V

    return-void
.end method
