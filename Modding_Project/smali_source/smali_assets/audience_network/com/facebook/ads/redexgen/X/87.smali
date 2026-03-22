.class public final synthetic Lcom/facebook/ads/redexgen/X/87;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/or;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/5j;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/8C;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8C;Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V
    .locals 0

    .line 22629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/87;->A02:Lcom/facebook/ads/redexgen/X/8C;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/or;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/87;->A01:Lcom/facebook/ads/redexgen/X/5j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 22630
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/87;->A02:Lcom/facebook/ads/redexgen/X/8C;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/87;->A00:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/87;->A01:Lcom/facebook/ads/redexgen/X/5j;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8C;->A06(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V

    return-void
.end method
