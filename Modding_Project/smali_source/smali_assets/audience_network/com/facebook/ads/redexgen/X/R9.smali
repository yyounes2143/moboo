.class public final Lcom/facebook/ads/redexgen/X/R9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/BidderTokenProviderApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/S6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62198
    new-instance v0, Lcom/facebook/ads/redexgen/X/S6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/S6;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Lcom/facebook/ads/redexgen/X/S6;

    .line 62199
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/S6;
    .locals 1

    .line 62200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Lcom/facebook/ads/redexgen/X/S6;

    return-object v0
.end method

.method public final getBidderToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 62201
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:Lcom/facebook/ads/redexgen/X/S6;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RB;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/S6;->A06(Lcom/facebook/ads/redexgen/X/cu;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
