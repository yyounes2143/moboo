.class public final synthetic Lcom/facebook/ads/redexgen/X/47;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4B;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/4D;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/4D;Lcom/facebook/ads/redexgen/X/4B;)V
    .locals 0

    .line 12062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/47;->A01:Lcom/facebook/ads/redexgen/X/4D;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/47;->A00:Lcom/facebook/ads/redexgen/X/4B;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 12063
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A01:Lcom/facebook/ads/redexgen/X/4D;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A00:Lcom/facebook/ads/redexgen/X/4B;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4D;->A0B(Lcom/facebook/ads/redexgen/X/4B;)V

    return-void
.end method
