.class public final synthetic Lcom/facebook/ads/redexgen/X/Cc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9A;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Gw;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9A;Lcom/facebook/ads/redexgen/X/Gw;)V
    .locals 0

    .line 33059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cc;->A00:Lcom/facebook/ads/redexgen/X/9A;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Cc;->A01:Lcom/facebook/ads/redexgen/X/Gw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 33060
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cc;->A00:Lcom/facebook/ads/redexgen/X/9A;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cc;->A01:Lcom/facebook/ads/redexgen/X/Gw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A0e(Lcom/facebook/ads/redexgen/X/Gw;)V

    return-void
.end method
