.class public final Lcom/facebook/ads/redexgen/X/lK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gw;


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/Gh;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3109
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1Tt6ltc55g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ops4n6D0RsDIbcNK2iFIW7Ay7S5Nano"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QFUbJLsUaFmSVLdjzr36RpAXorrqi07i"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7FxugF0ZmqBQk4dAnarwpNTfiaTe1g6g"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "N3T7HRrxqFzk5rl0dpC6S3h47ocLp3rK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Rq3uRmlvLOcLbWX3oXceNMTvaDTByq6j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8TmLuftHICqYkzwVWbIwZIwFPzZSJxQj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4hmJxBFNQAJLWam3xj85pvhcrB85xjeQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lK;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gh;J)V
    .locals 0

    .line 96517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96518
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lK;->A01:Lcom/facebook/ads/redexgen/X/Gh;

    .line 96519
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/lK;->A00:J

    .line 96520
    return-void
.end method

.method private A00(JJ)Lcom/facebook/ads/redexgen/X/Gx;
    .locals 5

    .line 96521
    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A01:Lcom/facebook/ads/redexgen/X/Gh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gh;->A07:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    .line 96522
    .local v0, "seekTimeUs":J
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lK;->A00:J

    add-long/2addr v3, p3

    .line 96523
    .local v2, "seekPosition":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final A7l()J
    .locals 2

    .line 96524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lK;->A01:Lcom/facebook/ads/redexgen/X/Gh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gh;->A06()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 10

    .line 96525
    move-object v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/lK;->A01:Lcom/facebook/ads/redexgen/X/Gh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gh;->A0A:Lcom/facebook/ads/redexgen/X/Gg;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96526
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/lK;->A01:Lcom/facebook/ads/redexgen/X/Gh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gh;->A0A:Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Gg;->A01:[J

    .line 96527
    .local v3, "pointSampleNumbers":[J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/lK;->A01:Lcom/facebook/ads/redexgen/X/Gh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gh;->A0A:Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Gg;->A00:[J

    .line 96528
    .local v4, "pointOffsets":[J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/lK;->A01:Lcom/facebook/ads/redexgen/X/Gh;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Gh;->A07(J)J

    move-result-wide v0

    .line 96529
    .local v5, "targetSampleNumber":J
    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v8, v2}, Lcom/facebook/ads/redexgen/X/4a;->A0L([JJZZ)I

    move-result v4

    .line 96530
    .local v8, "index":I
    const-wide/16 v2, 0x0

    const/4 v9, -0x1

    if-ne v4, v9, :cond_1

    move-wide v0, v2

    .line 96531
    .local p2, "seekPointSampleNumber":J
    :goto_0
    if-ne v4, v9, :cond_0

    .line 96532
    .local v9, "seekPointOffsetFromFirstFrame":J
    :goto_1
    invoke-direct {v7, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/lK;->A00(JJ)Lcom/facebook/ads/redexgen/X/Gx;

    move-result-object v3

    .line 96533
    .local p1, "seekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Gx;->A01:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_3

    array-length v9, v6

    sub-int/2addr v9, v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/lK;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 96534
    :cond_0
    aget-wide v2, v5, v4

    goto :goto_1

    .line 96535
    :cond_1
    aget-wide v0, v6, v4

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/lK;->A02:[Ljava/lang/String;

    const-string v1, "o5tsTNyqew751hc5myqwVOdw8F1gICkG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "VidtQTuToVY7NImzxnJwSrK8bx75lEQY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, v9, :cond_4

    .line 96536
    .end local v1
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 96537
    :cond_4
    add-int/lit8 v0, v4, 0x1

    aget-wide v0, v6, v0

    add-int/lit8 v2, v4, 0x1

    aget-wide v4, v5, v2

    .line 96538
    invoke-direct {v7, v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/lK;->A00(JJ)Lcom/facebook/ads/redexgen/X/Gx;

    move-result-object v1

    .line 96539
    .local v1, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0
.end method

.method public final AAa()Z
    .locals 1

    .line 96540
    const/4 v0, 0x1

    return v0
.end method
