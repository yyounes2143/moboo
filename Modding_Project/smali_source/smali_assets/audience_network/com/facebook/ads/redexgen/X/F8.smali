.class public final Lcom/facebook/ads/redexgen/X/F8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/F9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Matcher"
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public final A07:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 684
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YTIu3Vn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UgV0dVBsF1M"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pIviJbsaSM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YRJw92sn8ClSg6Q4bJSzxpSFsRc8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "De9p72HHNg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aSkX5CORfxKKNLr7lZM9dpeS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "y4dNop8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rrUtKYvHJjjV4JhtAgjqVGmRGK2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F8;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35534
    const/16 v0, 0xf

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A07:[Z

    .line 35535
    return-void
.end method

.method public static A00(J)I
    .locals 2

    .line 35536
    const-wide/16 v0, 0xf

    rem-long/2addr p0, v0

    long-to-int v0, p0

    return v0
.end method


# virtual methods
.method public final A01()J
    .locals 6

    .line 35537
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/F8;->A05:J

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/F8;->A06:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A05:J

    div-long/2addr v2, v0

    goto :goto_0
.end method

.method public final A02()J
    .locals 2

    .line 35538
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A06:J

    return-wide v0
.end method

.method public final A03()V
    .locals 2

    .line 35539
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A03:J

    .line 35540
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A05:J

    .line 35541
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A06:J

    .line 35542
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:I

    .line 35543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A07:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 35544
    return-void
.end method

.method public final A04(J)V
    .locals 13

    .line 35545
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/F8;->A03:J

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x1

    cmp-long v0, v6, v1

    if-nez v0, :cond_1

    .line 35546
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/F8;->A02:J

    .line 35547
    .end local v0
    .end local v2
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/F8;->A03:J

    add-long/2addr v2, v4

    sget-object v4, Lcom/facebook/ads/redexgen/X/F8;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35548
    :cond_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/F8;->A03:J

    cmp-long v0, v1, v4

    if-nez v0, :cond_2

    .line 35549
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/F8;->A02:J

    sub-long v0, p1, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:J

    .line 35550
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A06:J

    .line 35551
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/F8;->A05:J

    goto :goto_0

    .line 35552
    :cond_2
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A04:J

    sub-long v11, p1, v0

    .line 35553
    .local v0, "lastFrameDurationNs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/F8;->A00(J)I

    move-result v10

    .line 35554
    .local v2, "recentFrameOutlierIndex":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:J

    sub-long v0, v11, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v6, 0xf4240

    const/4 v2, 0x1

    cmp-long v0, v8, v6

    if-gtz v0, :cond_3

    .line 35555
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A05:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A05:J

    .line 35556
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A06:J

    add-long/2addr v0, v11

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A06:J

    .line 35557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A07:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_0

    .line 35558
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F8;->A07:[Z

    const/4 v0, 0x0

    aput-boolean v0, v1, v10

    .line 35559
    iget v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:I

    goto :goto_0

    .line 35560
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A07:[Z

    aget-boolean v0, v0, v10

    if-nez v0, :cond_0

    .line 35561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A07:[Z

    aput-boolean v2, v0, v10

    .line 35562
    iget v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:I

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/facebook/ads/redexgen/X/F8;->A08:[Ljava/lang/String;

    const-string v1, "BdNCjozPAX"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "W9aocN1f7Z"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/F8;->A03:J

    .line 35563
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/F8;->A04:J

    .line 35564
    return-void
.end method

.method public final A05()Z
    .locals 5

    .line 35565
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/F8;->A03:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 35566
    const/4 v0, 0x0

    return v0

    .line 35567
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F8;->A07:[Z

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/F8;->A03:J

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/F8;->A00(J)I

    move-result v0

    aget-boolean v0, v4, v0

    return v0
.end method

.method public final A06()Z
    .locals 5

    .line 35568
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/F8;->A03:J

    const-wide/16 v1, 0xf

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
