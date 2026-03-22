.class public final synthetic Lcom/facebook/ads/redexgen/X/8X;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8F;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/8J;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/8F;)V
    .locals 0

    .line 23315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8X;->A01:Lcom/facebook/ads/redexgen/X/8J;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8X;->A00:Lcom/facebook/ads/redexgen/X/8F;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 23316
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8X;->A01:Lcom/facebook/ads/redexgen/X/8J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8X;->A00:Lcom/facebook/ads/redexgen/X/8F;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0d(Lcom/facebook/ads/redexgen/X/8J;Lcom/facebook/ads/redexgen/X/8F;)V

    return-void
.end method
