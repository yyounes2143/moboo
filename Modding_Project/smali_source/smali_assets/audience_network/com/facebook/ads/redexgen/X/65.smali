.class public final synthetic Lcom/facebook/ads/redexgen/X/65;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9W;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/71;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9W;Lcom/facebook/ads/redexgen/X/71;)V
    .locals 0

    .line 17337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/65;->A00:Lcom/facebook/ads/redexgen/X/9W;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/65;->A01:Lcom/facebook/ads/redexgen/X/71;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 17338
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/65;->A00:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/65;->A01:Lcom/facebook/ads/redexgen/X/71;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9W;->A1E(Lcom/facebook/ads/redexgen/X/71;)V

    return-void
.end method
