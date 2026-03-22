.class public final Lcom/facebook/ads/redexgen/X/5m;
.super Lcom/facebook/ads/redexgen/X/DX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5h;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 0

    .line 16479
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5m;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 3

    .line 16480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5m;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A05(Lcom/facebook/ads/redexgen/X/5h;)V

    .line 16481
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5m;->A00:Lcom/facebook/ads/redexgen/X/5h;

    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 16482
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 16483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5m;->A00:Lcom/facebook/ads/redexgen/X/5h;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5h;->A07:Lcom/facebook/ads/redexgen/X/FH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0N()Lcom/facebook/ads/redexgen/X/bY;

    move-result-object v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/bY;->AFc(I)V

    .line 16484
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 16485
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5m;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method
