.class public Lcom/facebook/ads/redexgen/X/lS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gw;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:Z


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 3

    .line 96658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96659
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lS;->A05:J

    .line 96660
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/lS;->A04:J

    .line 96661
    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    const/4 p6, 0x1

    :cond_0
    iput p6, p0, Lcom/facebook/ads/redexgen/X/lS;->A01:I

    .line 96662
    iput p5, p0, Lcom/facebook/ads/redexgen/X/lS;->A00:I

    .line 96663
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/lS;->A06:Z

    .line 96664
    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 96665
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/lS;->A02:J

    .line 96666
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A03:J

    .line 96667
    :goto_0
    return-void

    .line 96668
    :cond_1
    sub-long v0, p1, p3

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A02:J

    .line 96669
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/lS;->A01(JJI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A03:J

    goto :goto_0
.end method

.method private A00(J)J
    .locals 8

    .line 96670
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A00:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0x7a1200

    div-long/2addr v2, v0

    .line 96671
    .local v0, "positionOffset":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A01:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A01:I

    int-to-long v0, v0

    mul-long/2addr v2, v0

    .line 96672
    .end local v0    # "positionOffset":J
    .local v2, "positionOffset":J
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/lS;->A02:J

    const-wide/16 v4, -0x1

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    .line 96673
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/lS;->A02:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A01:I

    int-to-long v0, v0

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 96674
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 96675
    .end local v2    # "positionOffset":J
    .restart local v0    # "positionOffset":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A04:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static A01(JJI)J
    .locals 2

    .line 96676
    const-wide/16 v0, 0x0

    sub-long/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x8

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    int-to-long v0, p4

    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final A02(J)J
    .locals 3

    .line 96677
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/lS;->A04:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A00:I

    invoke-static {p1, p2, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/lS;->A01(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7l()J
    .locals 2

    .line 96678
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A03:J

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 11

    .line 96679
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/lS;->A02:J

    const-wide/16 v9, -0x1

    cmp-long v0, v1, v9

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A06:Z

    if-nez v0, :cond_0

    .line 96680
    const-wide/16 v4, 0x0

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lS;->A04:J

    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 96681
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/lS;->A00(J)J

    move-result-wide v1

    .line 96682
    .local v0, "seekFramePosition":J
    invoke-virtual {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/lS;->A02(J)J

    move-result-wide v3

    .line 96683
    .local v4, "seekTimeUs":J
    new-instance v6, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v6, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 96684
    .local v6, "seekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/lS;->A02:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_1

    cmp-long v0, v3, p1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A01:I

    int-to-long v7, v0

    add-long/2addr v7, v1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lS;->A05:J

    cmp-long v0, v7, v3

    if-ltz v0, :cond_2

    .line 96685
    .end local v2
    .end local v7
    .end local v9
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 96686
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A01:I

    int-to-long v4, v0

    add-long/2addr v4, v1

    .line 96687
    .local v2, "secondSeekPosition":J
    invoke-virtual {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/lS;->A02(J)J

    move-result-wide v2

    .line 96688
    .local v7, "secondSeekTimeUs":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 96689
    .local v9, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0
.end method

.method public final AAa()Z
    .locals 5

    .line 96690
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lS;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lS;->A06:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
