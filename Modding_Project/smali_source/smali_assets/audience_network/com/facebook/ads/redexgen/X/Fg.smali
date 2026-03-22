.class public final synthetic Lcom/facebook/ads/redexgen/X/Fg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/or;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/5j;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Fn;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Fn;Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V
    .locals 0

    .line 36430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fg;->A02:Lcom/facebook/ads/redexgen/X/Fn;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/or;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Fg;->A01:Lcom/facebook/ads/redexgen/X/5j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 36431
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fg;->A02:Lcom/facebook/ads/redexgen/X/Fn;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A01:Lcom/facebook/ads/redexgen/X/5j;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A06(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V

    return-void
.end method
