.class public final Lcom/facebook/ads/redexgen/X/0x;
.super Lcom/facebook/ads/redexgen/X/94;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oH;II)V
    .locals 6

    .line 6633
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/0x;-><init>(Lcom/facebook/ads/redexgen/X/oH;IIILjava/lang/Object;)V

    .line 6634
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oH;IIILjava/lang/Object;)V
    .locals 1

    .line 6635
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/94;-><init>(Lcom/facebook/ads/redexgen/X/oH;[II)V

    .line 6636
    iput p4, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    .line 6637
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:Ljava/lang/Object;

    .line 6638
    return-void
.end method


# virtual methods
.method public final A8v()I
    .locals 1

    .line 6639
    const/4 v0, 0x0

    return v0
.end method
