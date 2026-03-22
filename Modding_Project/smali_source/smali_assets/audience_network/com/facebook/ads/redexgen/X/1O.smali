.class public final Lcom/facebook/ads/redexgen/X/1O;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8613
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1O;->A01:I

    .line 8614
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1O;->A02:I

    .line 8615
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1O;->A04:I

    .line 8616
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1O;->A00:I

    .line 8617
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1O;->A03:I

    .line 8618
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/1O;
    .locals 0

    .line 8619
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1O;->A00:I

    .line 8620
    return-object p0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/1O;
    .locals 0

    .line 8621
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1O;->A01:I

    .line 8622
    return-object p0
.end method

.method public final A02(I)Lcom/facebook/ads/redexgen/X/1O;
    .locals 0

    .line 8623
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1O;->A02:I

    .line 8624
    return-object p0
.end method

.method public final A03(I)Lcom/facebook/ads/redexgen/X/1O;
    .locals 0

    .line 8625
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1O;->A03:I

    .line 8626
    return-object p0
.end method

.method public final A04(I)Lcom/facebook/ads/redexgen/X/1O;
    .locals 0

    .line 8627
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1O;->A04:I

    .line 8628
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/oy;
    .locals 7

    .line 8629
    new-instance v0, Lcom/facebook/ads/redexgen/X/oy;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/1O;->A01:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/1O;->A02:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/1O;->A04:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/1O;->A00:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/1O;->A03:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/oy;-><init>(IIIIILcom/facebook/ads/redexgen/X/1K;)V

    return-object v0
.end method
