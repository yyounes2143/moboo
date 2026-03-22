.class public final Lcom/facebook/ads/redexgen/X/9B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/nl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/CD;
    }
.end annotation


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/nl;

.field public final A03:Lcom/facebook/ads/redexgen/X/CD;

.field public final A04:[B


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nl;ILcom/facebook/ads/redexgen/X/CD;)V
    .locals 2

    .line 25650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25651
    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 25652
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9B;->A02:Lcom/facebook/ads/redexgen/X/nl;

    .line 25653
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9B;->A01:I

    .line 25654
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9B;->A03:Lcom/facebook/ads/redexgen/X/CD;

    .line 25655
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A04:[B

    .line 25656
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9B;->A00:I

    .line 25657
    return-void

    .line 25658
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25659
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9B;->A02:Lcom/facebook/ads/redexgen/X/nl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A04:[B

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-interface {v1, v0, v7, v6}, Lcom/facebook/ads/redexgen/X/20;->read([BII)I

    move-result v0

    .line 25660
    .local v0, "bytesRead":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 25661
    return v7

    .line 25662
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A04:[B

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v4, v0, 0x4

    .line 25663
    .local v4, "metadataLength":I
    if-nez v4, :cond_1

    .line 25664
    return v6

    .line 25665
    :cond_1
    const/4 v3, 0x0

    .line 25666
    .local v5, "offset":I
    move v1, v4

    .line 25667
    .local v6, "lengthRemaining":I
    new-array v2, v4, [B

    .line 25668
    .local v7, "metadata":[B
    :goto_0
    if-lez v1, :cond_3

    .line 25669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A02:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/20;->read([BII)I

    move-result v0

    .line 25670
    if-ne v0, v5, :cond_2

    .line 25671
    return v7

    .line 25672
    :cond_2
    add-int/2addr v3, v0

    .line 25673
    sub-int/2addr v1, v0

    goto :goto_0

    .line 25674
    :cond_3
    :goto_1
    if-lez v4, :cond_4

    add-int/lit8 v0, v4, -0x1

    aget-byte v0, v2, v0

    if-nez v0, :cond_4

    .line 25675
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 25676
    :cond_4
    if-lez v4, :cond_5

    .line 25677
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9B;->A03:Lcom/facebook/ads/redexgen/X/CD;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v2, v4}, Lcom/facebook/ads/redexgen/X/4J;-><init>([BI)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CD;->ADR(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 25678
    :cond_5
    return v6
.end method


# virtual methods
.method public final A3v(Lcom/facebook/ads/redexgen/X/5H;)V
    .locals 1

    .line 25679
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A02:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/nl;->A3v(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 25681
    return-void
.end method

.method public final A8l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 25682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A02:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->A8l()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A9H()Landroid/net/Uri;
    .locals 1

    .line 25683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A02:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->A9H()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final AFy(Lcom/facebook/ads/redexgen/X/56;)J
    .locals 1

    .line 25684
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final close()V
    .locals 1

    .line 25685
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25686
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A00:I

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 25687
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9B;->A00()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25688
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A00:I

    .line 25689
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9B;->A02:Lcom/facebook/ads/redexgen/X/nl;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A00:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/20;->read([BII)I

    move-result v1

    .line 25690
    .local v0, "bytesRead":I
    if-eq v1, v2, :cond_1

    .line 25691
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A00:I

    .line 25692
    :cond_1
    return v1

    .line 25693
    :cond_2
    return v2
.end method
