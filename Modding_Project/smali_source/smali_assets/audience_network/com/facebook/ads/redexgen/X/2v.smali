.class public final Lcom/facebook/ads/redexgen/X/2v;
.super Lcom/facebook/ads/redexgen/X/DP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/D3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/D3;)V
    .locals 0

    .line 10435
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2v;->A00:Lcom/facebook/ads/redexgen/X/D3;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DP;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DQ;)V
    .locals 2

    .line 10436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2v;->A00:Lcom/facebook/ads/redexgen/X/D3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D3;->A00(Lcom/facebook/ads/redexgen/X/D3;)Lcom/facebook/ads/redexgen/X/e0;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e0;->setChecked(Z)V

    .line 10437
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10438
    check-cast p1, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2v;->A00(Lcom/facebook/ads/redexgen/X/DQ;)V

    return-void
.end method
