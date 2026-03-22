.class public final Lcom/facebook/ads/redexgen/X/jS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gw;


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:Lcom/facebook/ads/redexgen/X/Kl;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Kl;IJJ)V
    .locals 2

    .line 88930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88931
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jS;->A04:Lcom/facebook/ads/redexgen/X/Kl;

    .line 88932
    iput p2, p0, Lcom/facebook/ads/redexgen/X/jS;->A00:I

    .line 88933
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/jS;->A03:J

    .line 88934
    sub-long/2addr p5, p3

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Kl;->A02:I

    int-to-long v0, v0

    div-long/2addr p5, v0

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/jS;->A01:J

    .line 88935
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/jS;->A01:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/jS;->A00(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jS;->A02:J

    .line 88936
    return-void
.end method

.method private A00(J)J
    .locals 8

    .line 88937
    move-wide v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jS;->A00:I

    int-to-long v0, v0

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jS;->A04:Lcom/facebook/ads/redexgen/X/Kl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Kl;->A04:I

    int-to-long v6, v0

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final A7l()J
    .locals 2

    .line 88938
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/jS;->A02:J

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 13

    .line 88939
    move-object v6, p0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/jS;->A04:Lcom/facebook/ads/redexgen/X/Kl;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Kl;->A04:I

    int-to-long v7, v0

    mul-long/2addr v7, p1

    iget v0, v6, Lcom/facebook/ads/redexgen/X/jS;->A00:I

    int-to-long v2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    div-long/2addr v7, v2

    .line 88940
    .local v1, "blockIndex":J
    iget-wide v11, v6, Lcom/facebook/ads/redexgen/X/jS;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v11, v0

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/4a;->A0T(JJJ)J

    move-result-wide v4

    .line 88941
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/jS;->A03:J

    iget-object v7, v6, Lcom/facebook/ads/redexgen/X/jS;->A04:Lcom/facebook/ads/redexgen/X/Kl;

    iget v7, v7, Lcom/facebook/ads/redexgen/X/Kl;->A02:I

    int-to-long v7, v7

    mul-long/2addr v7, v4

    add-long/2addr v2, v7

    .line 88942
    .local v3, "seekPosition":J
    invoke-direct {v6, v4, v5}, Lcom/facebook/ads/redexgen/X/jS;->A00(J)J

    move-result-wide v7

    .line 88943
    .local v5, "seekTimeUs":J
    new-instance v9, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v9, v7, v8, v2, v3}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 88944
    .local v7, "seekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    cmp-long v2, v7, p1

    if-gez v2, :cond_0

    iget-wide v7, v6, Lcom/facebook/ads/redexgen/X/jS;->A01:J

    sub-long/2addr v7, v0

    cmp-long v2, v4, v7

    if-nez v2, :cond_1

    .line 88945
    .end local v8
    .end local v10
    .end local v11
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/jS;
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v9}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 88946
    :cond_1
    add-long/2addr v0, v4

    .line 88947
    .local v11, "secondBlockIndex":J
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/jS;->A03:J

    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/jS;->A04:Lcom/facebook/ads/redexgen/X/Kl;

    iget v4, v4, Lcom/facebook/ads/redexgen/X/Kl;->A02:I

    int-to-long v4, v4

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 88948
    .local v8, "secondSeekPosition":J
    invoke-direct {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/jS;->A00(J)J

    move-result-wide v4

    .line 88949
    .local p0, "secondSeekTimeUs":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 88950
    .local v10, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v9, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0
.end method

.method public final AAa()Z
    .locals 1

    .line 88951
    const/4 v0, 0x1

    return v0
.end method
