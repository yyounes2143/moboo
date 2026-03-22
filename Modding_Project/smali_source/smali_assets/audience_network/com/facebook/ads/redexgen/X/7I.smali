.class public final Lcom/facebook/ads/redexgen/X/7I;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/7I;

.field public static final A03:Lcom/facebook/ads/redexgen/X/7I;

.field public static final A04:Lcom/facebook/ads/redexgen/X/7I;

.field public static final A05:Lcom/facebook/ads/redexgen/X/7I;

.field public static final A06:Lcom/facebook/ads/redexgen/X/7I;


# instance fields
.field public final A00:J

.field public final A01:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 423
    const-wide/16 v3, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/7I;

    invoke-direct {v0, v3, v4, v3, v4}, Lcom/facebook/ads/redexgen/X/7I;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/7I;

    .line 424
    const-wide v1, 0x7fffffffffffffffL

    new-instance v0, Lcom/facebook/ads/redexgen/X/7I;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/facebook/ads/redexgen/X/7I;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7I;->A02:Lcom/facebook/ads/redexgen/X/7I;

    .line 425
    new-instance v0, Lcom/facebook/ads/redexgen/X/7I;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/redexgen/X/7I;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/7I;

    .line 426
    new-instance v0, Lcom/facebook/ads/redexgen/X/7I;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/7I;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7I;->A05:Lcom/facebook/ads/redexgen/X/7I;

    .line 427
    sget-object v0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/7I;

    sput-object v0, Lcom/facebook/ads/redexgen/X/7I;->A03:Lcom/facebook/ads/redexgen/X/7I;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 4

    .line 21247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21248
    const/4 v3, 0x1

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 21249
    cmp-long v0, p3, v1

    if-ltz v0, :cond_0

    :goto_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 21250
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/7I;->A01:J

    .line 21251
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:J

    .line 21252
    return-void

    .line 21253
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 21254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00(JJJ)J
    .locals 13

    .line 21255
    move-object v3, p0

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/7I;->A01:J

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    move-wide v7, p1

    if-nez v0, :cond_0

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/7I;->A00:J

    cmp-long v0, v1, v4

    if-nez v0, :cond_0

    .line 21256
    return-wide v7

    .line 21257
    :cond_0
    iget-wide v9, v3, Lcom/facebook/ads/redexgen/X/7I;->A01:J

    .line 21258
    const-wide/high16 v11, -0x8000000000000000L

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/4a;->A0V(JJJ)J

    move-result-wide v5

    .line 21259
    .local v7, "minPositionUs":J
    iget-wide v9, v3, Lcom/facebook/ads/redexgen/X/7I;->A00:J

    const-wide v11, 0x7fffffffffffffffL

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/4a;->A0S(JJJ)J

    move-result-wide v3

    .line 21260
    .local v1, "maxPositionUs":J
    const/4 v2, 0x1

    cmp-long v0, v5, p3

    if-gtz v0, :cond_2

    cmp-long v0, p3, v3

    if-gtz v0, :cond_2

    const/4 v1, 0x1

    .line 21261
    .local v5, "firstSyncPositionValid":Z
    :goto_0
    cmp-long v0, v5, p5

    if-gtz v0, :cond_1

    cmp-long v0, p5, v3

    if-gtz v0, :cond_1

    .line 21262
    .local v3, "secondSyncPositionValid":Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 21263
    sub-long v0, p3, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v0, p5, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-gtz v0, :cond_3

    .line 21264
    return-wide p3

    .line 21265
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 21266
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 21267
    :cond_3
    return-wide p5

    .line 21268
    :cond_4
    if-eqz v1, :cond_5

    .line 21269
    return-wide p3

    .line 21270
    :cond_5
    if-eqz v2, :cond_6

    .line 21271
    return-wide p5

    .line 21272
    :cond_6
    return-wide v5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 21273
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 21274
    return v5

    .line 21275
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 21276
    .end local v2
    :cond_1
    return v2

    .line 21277
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/7I;

    .line 21278
    .local v2, "other":Lcom/facebook/ads/redexgen/X/7I;
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/7I;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/7I;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/7I;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .line 21279
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A01:J

    long-to-int v0, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    return v3
.end method
