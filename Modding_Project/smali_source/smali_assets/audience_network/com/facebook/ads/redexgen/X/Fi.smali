.class public final synthetic Lcom/facebook/ads/redexgen/X/Fi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/o4;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Fn;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Fn;Lcom/facebook/ads/redexgen/X/o4;)V
    .locals 0

    .line 36434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fi;->A01:Lcom/facebook/ads/redexgen/X/Fn;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fi;->A00:Lcom/facebook/ads/redexgen/X/o4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 36435
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fi;->A01:Lcom/facebook/ads/redexgen/X/Fn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fi;->A00:Lcom/facebook/ads/redexgen/X/o4;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A08(Lcom/facebook/ads/redexgen/X/o4;)V

    return-void
.end method
