.class public final Lcom/facebook/ads/redexgen/X/jd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kf;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/4J;

.field public final A05:Lcom/facebook/ads/redexgen/X/KW;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3018
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EnQWPJ3V2xjVAThncas5joPITTvIB7EF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1EuaMqG73HQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rjBteZjJ0vNfufCjCKCkAuxJVtJJHvWb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xDvWT2DyWg3zA1fFgEAgA6zc8FBdFJ1B"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sfKNNRwM9cmkD7QHngaf04"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qaF2qGcI8dYBUqEwfxAr3oVVO8wm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "moKLjsoCWr0SdwKtjYcTHr1Csc5rll9E"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bRjHr7kF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jd;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KW;)V
    .locals 2

    .line 89593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89594
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jd;->A05:Lcom/facebook/ads/redexgen/X/KW;

    .line 89595
    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 89596
    return-void
.end method


# virtual methods
.method public final A53(Lcom/facebook/ads/redexgen/X/4J;I)V
    .locals 6

    .line 89597
    and-int/lit8 v0, p2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 89598
    .local v0, "payloadUnitStartIndicator":Z
    :goto_0
    const/4 v1, -0x1

    .line 89599
    .local v3, "payloadStartPosition":I
    if-eqz v2, :cond_0

    .line 89600
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 89601
    .local v4, "payloadStartOffset":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v1

    add-int/2addr v1, v0

    .line 89602
    .end local v4    # "payloadStartOffset":I
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A03:Z

    if-eqz v0, :cond_3

    .line 89603
    if-nez v2, :cond_2

    .line 89604
    return-void

    .line 89605
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 89606
    :cond_2
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/jd;->A03:Z

    .line 89607
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89608
    iput v5, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    .line 89609
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lez v0, :cond_a

    .line 89610
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_6

    .line 89611
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    if-nez v0, :cond_4

    .line 89612
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 89613
    .local v4, "tableId":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89614
    const/16 v0, 0xff

    if-ne v1, v0, :cond_4

    .line 89615
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/jd;->A03:Z

    .line 89616
    return-void

    .line 89617
    .end local v4    # "tableId":I
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    rsub-int/lit8 v0, v0, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 89618
    .local v4, "headerBytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 89619
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    .line 89620
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    if-ne v0, v3, :cond_3

    .line 89621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 89623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v2

    .line 89625
    .local p0, "secondHeaderByte":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 89626
    .local p1, "thirdHeaderByte":I
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A02:Z

    .line 89627
    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A01:I

    .line 89628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A01:I

    if-ge v1, v0, :cond_3

    .line 89629
    iget v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 89630
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v0, 0x1002

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 89631
    .local v5, "limit":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0c(I)V

    goto/16 :goto_1

    .line 89632
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 89633
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 89634
    .local v4, "bodyBytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 89635
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    .line 89636
    iget v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A01:I

    if-ne v1, v0, :cond_3

    .line 89637
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A02:Z

    if-eqz v0, :cond_8

    .line 89638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A01:I

    const/4 v0, -0x1

    invoke-static {v2, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0I([BIII)I

    move-result v0

    if-eqz v0, :cond_7

    .line 89639
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/jd;->A03:Z

    .line 89640
    return-void

    .line 89641
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A01:I

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    goto :goto_3

    .line 89642
    :cond_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 89643
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89644
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jd;->A05:Lcom/facebook/ads/redexgen/X/KW;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jd;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/jd;->A06:[Ljava/lang/String;

    const-string v1, "q6sMTbjJkDPtFUqTMgY1hgSKkn8mDgdv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/KW;->A52(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 89645
    iput v5, p0, Lcom/facebook/ads/redexgen/X/jd;->A00:I

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 89646
    :cond_a
    return-void
.end method

.method public final AA2(Lcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 1

    .line 89647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A05:Lcom/facebook/ads/redexgen/X/KW;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KW;->AA2(Lcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 89648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A03:Z

    .line 89649
    return-void
.end method

.method public final AIL()V
    .locals 1

    .line 89650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jd;->A03:Z

    .line 89651
    return-void
.end method
