.class public final Lcom/facebook/ads/redexgen/X/90;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/lN;


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:[B

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/nl;

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 498
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YlHQuKLayYbpqzx9FSV6CQrLdQj96AeM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S4RZcb4lBSGk97kEvSl91HaEV0P4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uVSfNf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Coq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aQ2CxhcvUBulJYKynnVyQo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "flTysjHMhLtcJrzUbSTnFz15x2mZl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8oFgaOvQgeQ1BxQlutu1jILF1QVjJ1FW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wjWZdP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/90;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nl;JJ)V
    .locals 7

    .line 24417
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, p4

    move-wide v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/90;-><init>(Lcom/facebook/ads/redexgen/X/nl;JJZ)V

    .line 24418
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nl;JJZ)V
    .locals 1

    .line 24419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24420
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/90;->A05:Lcom/facebook/ads/redexgen/X/nl;

    .line 24421
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/90;->A02:J

    .line 24422
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/90;->A04:J

    .line 24423
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    .line 24424
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A06:[B

    .line 24425
    return-void
.end method

.method private A00(I)I
    .locals 1

    .line 24426
    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 24427
    .local v0, "bytesSkipped":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/90;->A05(I)V

    .line 24428
    return v0
.end method

.method private A01([BII)I
    .locals 3

    .line 24429
    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 24430
    return v2

    .line 24431
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 24432
    .local v0, "peekBytes":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24433
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/90;->A05(I)V

    .line 24434
    return v1
.end method

.method private A02([BIIIZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24435
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 24436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A05:Lcom/facebook/ads/redexgen/X/nl;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/20;->read([BII)I

    move-result v1

    .line 24437
    .local v0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 24438
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 24439
    return v0

    .line 24440
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 24441
    :cond_1
    add-int/2addr p4, v1

    return p4

    .line 24442
    .end local v0    # "bytesRead":I
    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private A03(I)V
    .locals 4

    .line 24443
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 24444
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/90;->A02:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/90;->A02:J

    .line 24445
    :cond_0
    return-void
.end method

.method private A04(I)V
    .locals 4

    .line 24446
    iget v3, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    add-int/2addr v3, p1

    .line 24447
    .local v0, "requiredLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    array-length v0, v0

    if-le v3, v0, :cond_0

    .line 24448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    array-length v0, v0

    mul-int/lit8 v2, v0, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v3

    const/high16 v0, 0x80000

    add-int/2addr v0, v3

    .line 24449
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A07(III)I

    move-result v1

    .line 24450
    .local v1, "newPeekCapacity":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    .line 24451
    .end local v1    # "newPeekCapacity":I
    :cond_0
    return-void
.end method

.method private A05(I)V
    .locals 7

    .line 24452
    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    .line 24453
    const/4 v5, 0x0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    .line 24454
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    .line 24455
    .local v1, "newPeekBuffer":[B
    iget v2, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    array-length v1, v0

    const/high16 v0, 0x80000

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_0

    .line 24456
    iget v1, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    const/high16 v0, 0x10000

    add-int/2addr v1, v0

    new-array v6, v1, [B

    .line 24457
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    iget v3, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/90;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/90;->A07:[Ljava/lang/String;

    const-string v1, "U6HOVF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "FLrwJS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v4, p1, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24458
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    .line 24459
    return-void
.end method


# virtual methods
.method public final A06(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24460
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/90;->A00(I)I

    move-result v4

    .line 24461
    .local v0, "bytesSkipped":I
    :goto_0
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/90;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/90;->A07:[Ljava/lang/String;

    const-string v1, "VT2oIT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "AHKvNZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v4, p1, :cond_0

    if-eq v4, v3, :cond_0

    .line 24462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A06:[B

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 24463
    .local p1, "minLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/90;->A06:[B

    neg-int v2, v4

    .line 24464
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/90;->A02([BIIIZ)I

    move-result v4

    .line 24465
    .end local p1    # "minLength":I
    goto :goto_0

    .line 24466
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/90;->A03(I)V

    .line 24467
    if-eq v4, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A3z(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/90;->A40(IZ)Z

    .line 24469
    return-void
.end method

.method public final A40(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24470
    move v3, p1

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/90;->A04(I)V

    .line 24471
    iget v4, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    sub-int/2addr v4, v0

    .line 24472
    .local v0, "bytesPeeked":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 24473
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    .line 24474
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/90;->A02([BIIIZ)I

    move-result v4

    .line 24475
    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    .line 24476
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/90;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24477
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    goto :goto_0

    .line 24478
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/90;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 24479
    sget-object v2, Lcom/facebook/ads/redexgen/X/90;->A07:[Ljava/lang/String;

    const-string v1, "05c"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x1

    return v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/90;->A07:[Ljava/lang/String;

    const-string v1, "U9yRyStfgEDvt0OpJggQJXPRXL9S"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "yvkfr8ZSlHssIeYh6rwGG04GsxspU"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3
.end method

.method public final A8G()J
    .locals 2

    .line 24480
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/90;->A04:J

    return-wide v0
.end method

.method public final A8a()J
    .locals 4

    .line 24481
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/90;->A02:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A8f()J
    .locals 2

    .line 24482
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/90;->A02:J

    return-wide v0
.end method

.method public final A9H()Landroid/net/Uri;
    .locals 1

    .line 24483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A05:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->A9H()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final AG8([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24484
    move v3, p3

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/90;->A04(I)V

    .line 24485
    iget v1, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    sub-int/2addr v1, v0

    .line 24486
    .local v0, "peekBufferRemainingBytes":I
    if-nez v1, :cond_1

    .line 24487
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    .line 24488
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/90;->A02([BIIIZ)I

    move-result v2

    .line 24489
    .local v1, "bytesPeeked":I
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 24490
    return v0

    .line 24491
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/90;->A00:I

    goto :goto_0

    .line 24492
    .end local v1    # "bytesPeeked":I
    :cond_1
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 24493
    .restart local v1    # "bytesPeeked":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24494
    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    .line 24495
    return v2
.end method

.method public final AG9([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24496
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/90;->AGA([BIIZ)Z

    .line 24497
    return-void
.end method

.method public final AGA([BIIZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24498
    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/90;->A40(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24499
    const/4 v0, 0x0

    return v0

    .line 24500
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/90;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    sub-int/2addr v0, p3

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24501
    const/4 v0, 0x1

    return v0
.end method

.method public final AGh([BIIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24502
    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/90;->A01([BII)I

    move-result v4

    .line 24503
    .local v0, "bytesRead":I
    :goto_0
    const/4 v0, -0x1

    if-ge v4, v3, :cond_0

    if-eq v4, v0, :cond_0

    .line 24504
    move-object v0, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/90;->A02([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 24505
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/90;->A03(I)V

    .line 24506
    if-eq v4, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final AI1()V
    .locals 1

    .line 24507
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:I

    .line 24508
    return-void
.end method

.method public final AJG(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24509
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/90;->A00(I)I

    move-result v3

    .line 24510
    .local v0, "bytesSkipped":I
    if-nez v3, :cond_0

    .line 24511
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/90;->A06:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A06:[B

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/90;->A02([BIIIZ)I

    move-result v3

    .line 24512
    :cond_0
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/90;->A03(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/90;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24513
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/90;->A07:[Ljava/lang/String;

    const-string v1, "4muWdj2u5Q3eId9F7O7O9kyn7QS9F70y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "MQBZi4ACHP4vbg8D4iuKjBQaYQ9ASuUs"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3
.end method

.method public final AJJ(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/90;->A06(IZ)Z

    .line 24515
    return-void
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24516
    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/90;->A01([BII)I

    move-result v0

    .line 24517
    .local v0, "bytesRead":I
    if-nez v0, :cond_0

    .line 24518
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/90;->A02([BIIIZ)I

    move-result v0

    .line 24519
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/90;->A03(I)V

    .line 24520
    return v0
.end method

.method public final readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/90;->AGh([BIIZ)Z

    .line 24522
    return-void
.end method
