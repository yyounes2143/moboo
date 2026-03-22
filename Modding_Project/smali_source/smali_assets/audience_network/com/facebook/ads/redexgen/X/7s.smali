.class public final Lcom/facebook/ads/redexgen/X/7s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/kk;


# instance fields
.field public final A00:J

.field public final A01:[J

.field public final A02:[J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 3

    .line 22486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22487
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7s;->A01:[J

    .line 22488
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7s;->A02:[J

    .line 22489
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v1

    if-eqz v0, :cond_0

    .line 22490
    :goto_0
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:J

    .line 22491
    return-void

    .line 22492
    :cond_0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p2, v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0O(J)J

    move-result-wide p3

    goto :goto_0
.end method

.method public static A00(J[J[J)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[J[J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 22493
    const/4 v0, 0x1

    invoke-static {p2, p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0L([JJZZ)I

    move-result v0

    .line 22494
    .local v3, "previousReferenceIndex":I
    aget-wide v6, p2, v0

    .line 22495
    .local v4, "xPreviousReference":J
    aget-wide v10, p3, v0

    .line 22496
    .local v6, "yPreviousReference":J
    add-int/lit8 v1, v0, 0x1

    .line 22497
    .local v8, "nextReferenceIndex":I
    array-length v0, p2

    if-ne v1, v0, :cond_0

    .line 22498
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 22499
    :cond_0
    aget-wide v4, p2, v1

    .line 22500
    .local v9, "xNextReference":J
    aget-wide v8, p3, v1

    .line 22501
    .local v11, "yNextReference":J
    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 22502
    const-wide/16 v2, 0x0

    .line 22503
    .local v0, "proportion":D
    :goto_0
    sub-long/2addr v8, v10

    long-to-double v0, v8

    mul-double/2addr v0, v2

    double-to-long v2, v0

    add-long/2addr v2, v10

    .line 22504
    .local p1, "y":J
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .end local v0    # "proportion":D
    .local p4, "proportion":D
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 22505
    :cond_1
    long-to-double v2, p0

    long-to-double v0, v6

    sub-double/2addr v2, v0

    sub-long/2addr v4, v6

    long-to-double v0, v4

    div-double/2addr v2, v0

    goto :goto_0
.end method

.method public static A01(JLcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;J)Lcom/facebook/ads/redexgen/X/7s;
    .locals 9

    .line 22506
    iget-object v0, p2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;->A03:[I

    array-length v5, v0

    .line 22507
    .local v0, "referenceCount":I
    add-int/lit8 v0, v5, 0x1

    new-array v4, v0, [J

    .line 22508
    .local v1, "referencePositions":[J
    add-int/lit8 v0, v5, 0x1

    new-array v3, v0, [J

    .line 22509
    .local v2, "referenceTimesMs":[J
    const/4 v2, 0x0

    aput-wide p0, v4, v2

    .line 22510
    const-wide/16 v0, 0x0

    aput-wide v0, v3, v2

    .line 22511
    .local v3, "position":J
    const-wide/16 v7, 0x0

    .line 22512
    .local v5, "timeMs":J
    const/4 v2, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v2, v5, :cond_0

    .line 22513
    iget v6, p2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;->A00:I

    iget-object v1, p2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;->A03:[I

    add-int/lit8 v0, v2, -0x1

    aget v0, v1, v0

    add-int/2addr v6, v0

    int-to-long v0, v6

    add-long/2addr p0, v0

    .line 22514
    iget v6, p2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;->A01:I

    iget-object v1, p2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/MlltFrame;->A04:[I

    add-int/lit8 v0, v2, -0x1

    aget v0, v1, v0

    add-int/2addr v6, v0

    int-to-long v0, v6

    add-long/2addr v7, v0

    .line 22515
    aput-wide p0, v4, v2

    .line 22516
    aput-wide v7, v3, v2

    .line 22517
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22518
    .end local v7    # "i":I
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {v0, v4, v3, p3, p4}, Lcom/facebook/ads/redexgen/X/7s;-><init>([J[JJ)V

    return-object v0
.end method


# virtual methods
.method public final A7b()J
    .locals 2

    .line 22519
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A7l()J
    .locals 2

    .line 22520
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:J

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 6

    .line 22521
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:J

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4a;->A0T(JJJ)J

    move-result-wide v0

    .line 22522
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0P(J)J

    move-result-wide v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7s;->A02:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A01:[J

    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/7s;->A00(J[J[J)Landroid/util/Pair;

    move-result-object v2

    .line 22523
    .local v0, "timeMsAndPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0O(J)J

    move-result-wide v4

    .line 22524
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 22525
    .local v1, "position":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0
.end method

.method public final A99(J)J
    .locals 2

    .line 22526
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7s;->A01:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A02:[J

    .line 22527
    invoke-static {p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/7s;->A00(J[J[J)Landroid/util/Pair;

    move-result-object v0

    .line 22528
    .local v0, "positionAndTimeMs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0O(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final AAa()Z
    .locals 1

    .line 22529
    const/4 v0, 0x1

    return v0
.end method
