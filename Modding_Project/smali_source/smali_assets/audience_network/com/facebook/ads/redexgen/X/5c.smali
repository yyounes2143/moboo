.class public final Lcom/facebook/ads/redexgen/X/5c;
.super Lcom/facebook/ads/redexgen/X/DP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JS;)V
    .locals 0

    .line 15517
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5c;->A00:Lcom/facebook/ads/redexgen/X/JS;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DP;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DQ;)V
    .locals 1

    .line 15518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5c;->A00:Lcom/facebook/ads/redexgen/X/JS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A04(Lcom/facebook/ads/redexgen/X/JS;)Lcom/facebook/ads/redexgen/X/ce;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5c;->A00:Lcom/facebook/ads/redexgen/X/JS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A04(Lcom/facebook/ads/redexgen/X/JS;)Lcom/facebook/ads/redexgen/X/ce;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ce;->AJT()V

    .line 15520
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 15521
    check-cast p1, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5c;->A00(Lcom/facebook/ads/redexgen/X/DQ;)V

    return-void
.end method
