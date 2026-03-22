.class public final Lcom/facebook/ads/redexgen/X/7t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/kk;


# instance fields
.field public A00:J

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/45;

.field public final A03:Lcom/facebook/ads/redexgen/X/45;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 3

    .line 22530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22531
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:J

    .line 22532
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/7t;->A01:J

    .line 22533
    new-instance v0, Lcom/facebook/ads/redexgen/X/45;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/45;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Lcom/facebook/ads/redexgen/X/45;

    .line 22534
    new-instance v0, Lcom/facebook/ads/redexgen/X/45;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/45;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A02:Lcom/facebook/ads/redexgen/X/45;

    .line 22535
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Lcom/facebook/ads/redexgen/X/45;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/45;->A04(J)V

    .line 22536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A02:Lcom/facebook/ads/redexgen/X/45;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/45;->A04(J)V

    .line 22537
    return-void
.end method


# virtual methods
.method public final A00(J)V
    .locals 0

    .line 22538
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:J

    .line 22539
    return-void
.end method

.method public final A01(JJ)V
    .locals 1

    .line 22540
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7t;->A02(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22541
    return-void

    .line 22542
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Lcom/facebook/ads/redexgen/X/45;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/45;->A04(J)V

    .line 22543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A02:Lcom/facebook/ads/redexgen/X/45;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/45;->A04(J)V

    .line 22544
    return-void
.end method

.method public final A02(J)Z
    .locals 4

    .line 22545
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Lcom/facebook/ads/redexgen/X/45;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Lcom/facebook/ads/redexgen/X/45;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/45;->A02()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/45;->A03(I)J

    move-result-wide v0

    .line 22546
    .local v0, "lastIndexedTimeUs":J
    sub-long/2addr p1, v0

    const-wide/32 v1, 0x186a0

    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final A7b()J
    .locals 2

    .line 22547
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A01:J

    return-wide v0
.end method

.method public final A7l()J
    .locals 2

    .line 22548
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:J

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 8

    .line 22549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Lcom/facebook/ads/redexgen/X/45;

    .line 22550
    const/4 v4, 0x1

    invoke-static {v0, p1, p2, v4, v4}, Lcom/facebook/ads/redexgen/X/4a;->A0C(Lcom/facebook/ads/redexgen/X/45;JZZ)I

    move-result v7

    .line 22551
    .local v0, "targetIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Lcom/facebook/ads/redexgen/X/45;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/45;->A03(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A02:Lcom/facebook/ads/redexgen/X/45;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/45;->A03(I)J

    move-result-wide v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 22552
    .local v2, "seekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/Gx;->A01:J

    cmp-long v0, v1, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Lcom/facebook/ads/redexgen/X/45;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/45;->A02()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne v7, v0, :cond_1

    .line 22553
    .end local v1
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 22554
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Lcom/facebook/ads/redexgen/X/45;

    add-int/lit8 v0, v7, 0x1

    .line 22555
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/45;->A03(I)J

    move-result-wide v4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7t;->A02:Lcom/facebook/ads/redexgen/X/45;

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/45;->A03(I)J

    move-result-wide v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 22556
    .local v1, "nextSeekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0
.end method

.method public final A99(J)J
    .locals 2

    .line 22557
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7t;->A02:Lcom/facebook/ads/redexgen/X/45;

    .line 22558
    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0C(Lcom/facebook/ads/redexgen/X/45;JZZ)I

    move-result v1

    .line 22559
    .local v0, "targetIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7t;->A03:Lcom/facebook/ads/redexgen/X/45;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/45;->A03(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final AAa()Z
    .locals 1

    .line 22560
    const/4 v0, 0x1

    return v0
.end method
