.class public final Lcom/facebook/ads/redexgen/X/lJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gw;


# instance fields
.field public final A00:J

.field public final A01:Z

.field public final A02:[J

.field public final A03:[J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 8

    .line 96491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96492
    array-length v1, p1

    array-length v0, p2

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 96493
    array-length v1, p2

    .line 96494
    .local v0, "length":I
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A01:Z

    .line 96495
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A01:Z

    if-eqz v0, :cond_0

    aget-wide v6, p2, v3

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-lez v0, :cond_0

    .line 96496
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:[J

    .line 96497
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:[J

    .line 96498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:[J

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:[J

    invoke-static {p2, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96500
    :goto_2
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/lJ;->A00:J

    .line 96501
    return-void

    .line 96502
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:[J

    .line 96503
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:[J

    goto :goto_2

    .line 96504
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 96505
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A7l()J
    .locals 2

    .line 96506
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A00:J

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 8

    .line 96507
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A01:Z

    if-nez v0, :cond_0

    .line 96508
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gx;->A04:Lcom/facebook/ads/redexgen/X/Gx;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 96509
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:[J

    .line 96510
    const/4 v4, 0x1

    invoke-static {v0, p1, p2, v4, v4}, Lcom/facebook/ads/redexgen/X/4a;->A0L([JJZZ)I

    move-result v7

    .line 96511
    .local v0, "targetIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:[J

    aget-wide v2, v0, v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:[J

    aget-wide v0, v0, v7

    new-instance v6, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 96512
    .local v2, "leftSeekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/Gx;->A01:J

    cmp-long v0, v1, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:[J

    array-length v0, v0

    sub-int/2addr v0, v4

    if-ne v7, v0, :cond_2

    .line 96513
    .end local v1
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 96514
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v4, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v2, v1, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 96515
    .local v1, "rightSeekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0
.end method

.method public final AAa()Z
    .locals 1

    .line 96516
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A01:Z

    return v0
.end method
