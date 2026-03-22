.class public Lcom/facebook/ads/redexgen/X/gI;
.super Lcom/facebook/ads/redexgen/X/QO;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;,
        Lcom/facebook/ads/redexgen/X/Q1;,
        Lcom/facebook/ads/redexgen/X/Q2;,
        Lcom/facebook/ads/redexgen/X/Q3;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

.field public A04:Lcom/facebook/ads/redexgen/X/Q8;

.field public A05:Z

.field public A06:I

.field public A07:Lcom/facebook/ads/redexgen/X/Q3;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/Q1;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Q2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2775
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZTDwmEtle1avZIcEXO6Ngzge8j05pfT9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "s1YfUPq4amp3sGXTr0KOnMWCCCkrB2x5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RLSriKm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hA4l3MFFurEjuKvfb479JjwTp2cnC09n"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5GFF521rSn4TdhEStccPhauxYrt7NMVp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XQN2s9DMc1xKucEpv2CitIAcNHBR8E7y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8ubGCSX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EFysGv6XChRnXfWxG2n7d2ksHTdYT6om"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gI;->A0V()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 82371
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/gI;-><init>(Landroid/content/Context;IZ)V

    .line 82372
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 82373
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QO;-><init>()V

    .line 82374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0A:Z

    .line 82375
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    .line 82376
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0C:Z

    .line 82377
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A0B:Z

    .line 82378
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    .line 82379
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A02:I

    .line 82380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 82381
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q1;-><init>(Lcom/facebook/ads/redexgen/X/gI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    .line 82382
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Q2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0E:Lcom/facebook/ads/redexgen/X/Q2;

    .line 82383
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A06:I

    .line 82384
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/gI;->A2C(I)V

    .line 82385
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/gI;->A0h(Z)V

    .line 82386
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A1T(Z)V

    .line 82387
    return-void
.end method

.method private final A04(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 5

    .line 82388
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 82389
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_0
    return v4

    .line 82390
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A0B:Z

    .line 82391
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 82392
    if-lez p1, :cond_2

    const/4 v3, 0x1

    .line 82393
    .local v0, "layoutDirection":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 82394
    .local v3, "absDy":I
    invoke-direct {p0, v3, v2, v0, p3}, Lcom/facebook/ads/redexgen/X/gI;->A0Y(IIZLcom/facebook/ads/redexgen/X/Qd;)V

    .line 82395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    .line 82396
    invoke-direct {p0, p2, v0, p3, v4}, Lcom/facebook/ads/redexgen/X/gI;->A07(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 82397
    .local v2, "consumed":I
    if-gez v1, :cond_3

    .line 82398
    return v4

    .line 82399
    :cond_2
    const/4 v3, -0x1

    goto :goto_0

    .line 82400
    :cond_3
    if-le v2, v1, :cond_4

    mul-int/2addr v3, v1

    .line 82401
    .local v1, "scrolled":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    neg-int v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0J(I)V

    .line 82402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/Q3;->A04:I

    .line 82403
    return v3

    .line 82404
    :cond_4
    move v3, p1

    goto :goto_1
.end method

.method private A05(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Z)I
    .locals 3

    .line 82405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v0

    sub-int/2addr v0, p1

    .line 82406
    .local v0, "gap":I
    .local v1, "fixOffset":I
    if-lez v0, :cond_1

    .line 82407
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/gI;->A04(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    neg-int v2, v0

    .line 82408
    add-int/2addr p1, v2

    .line 82409
    if-eqz p4, :cond_0

    .line 82410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v1

    sub-int/2addr v1, p1

    .line 82411
    if-lez v1, :cond_0

    .line 82412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0J(I)V

    .line 82413
    add-int/2addr v1, v2

    return v1

    .line 82414
    :cond_0
    return v2

    .line 82415
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private A06(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Z)I
    .locals 3

    .line 82416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    sub-int v0, p1, v0

    .line 82417
    .local v0, "gap":I
    .local v1, "fixOffset":I
    if-lez v0, :cond_1

    .line 82418
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/gI;->A04(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    neg-int v2, v0

    .line 82419
    add-int/2addr p1, v2

    .line 82420
    if-eqz p4, :cond_0

    .line 82421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    sub-int/2addr p1, v0

    .line 82422
    if-lez p1, :cond_0

    .line 82423
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    neg-int v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0J(I)V

    .line 82424
    sub-int/2addr v2, p1

    return v2

    .line 82425
    :cond_0
    return v2

    .line 82426
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Qd;Z)I
    .locals 7

    .line 82427
    iget v5, p2, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    .line 82428
    .local v0, "start":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_1

    .line 82429
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    if-gez v0, :cond_0

    .line 82430
    iget v1, p2, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    .line 82431
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0e(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;)V

    .line 82432
    :cond_1
    iget v3, p2, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    add-int/2addr v3, v0

    .line 82433
    .local v1, "remainingSpace":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A0E:Lcom/facebook/ads/redexgen/X/Q2;

    .line 82434
    .local v3, "layoutChunkResult":Lcom/facebook/ads/redexgen/X/Q2;
    :cond_2
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A09:Z

    if-nez v0, :cond_3

    if-lez v3, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Lcom/facebook/ads/redexgen/X/Q3;->A05(Lcom/facebook/ads/redexgen/X/Qd;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82435
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Q2;->A00()V

    .line 82436
    invoke-virtual {p0, p1, p3, p2, v2}, Lcom/facebook/ads/redexgen/X/gI;->A2F(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Q2;)V

    .line 82437
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Q2;->A01:Z

    if-eqz v0, :cond_5

    .line 82438
    :cond_4
    :goto_0
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    sub-int/2addr v5, v0

    return v5

    .line 82439
    :cond_5
    iget v6, p2, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Q2;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A05:I

    mul-int/2addr v1, v0

    add-int/2addr v6, v1

    iput v6, p2, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 82440
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Q2;->A03:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Q3;->A08:Ljava/util/List;

    if-nez v0, :cond_6

    .line 82441
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    if-nez v0, :cond_7

    .line 82442
    :cond_6
    iget v1, p2, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Q2;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    .line 82443
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Q2;->A00:I

    sub-int/2addr v3, v0

    .line 82444
    :cond_7
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    if-eq v0, v4, :cond_9

    .line 82445
    iget v1, p2, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Q2;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    .line 82446
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    if-gez v0, :cond_8

    .line 82447
    iget v1, p2, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    .line 82448
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0e(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;)V

    .line 82449
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Q2;->A02:Z

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 7

    .line 82450
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    if-nez v0, :cond_0

    .line 82451
    const/4 v0, 0x0

    return v0

    .line 82452
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 82453
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 82454
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/gI;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0B:Z

    xor-int/2addr v0, v1

    .line 82455
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/gI;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/gI;->A0B:Z

    .line 82456
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Qh;->A00(Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q8;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QO;Z)I

    move-result v0

    return v0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 8

    .line 82457
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    if-nez v0, :cond_1

    .line 82458
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "J9JFedtgHh7lzsKv2wGVe5URJzbGPRgH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    .line 82459
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 82460
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 82461
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/gI;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0B:Z

    xor-int/2addr v0, v1

    .line 82462
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/gI;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/gI;->A0B:Z

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    .line 82463
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Qh;->A02(Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q8;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QO;ZZ)I

    move-result v0

    return v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 7

    .line 82464
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    if-nez v0, :cond_0

    .line 82465
    const/4 v0, 0x0

    return v0

    .line 82466
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 82467
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 82468
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/gI;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0B:Z

    xor-int/2addr v0, v1

    .line 82469
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/gI;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/gI;->A0B:Z

    .line 82470
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Qh;->A01(Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q8;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QO;Z)I

    move-result v0

    return v0
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 1

    .line 82471
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qd;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0B()I

    move-result v0

    return v0

    .line 82473
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private A0D()Landroid/view/View;
    .locals 2

    .line 82474
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0H(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0E()Landroid/view/View;
    .locals 2

    .line 82475
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0H(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0F()Landroid/view/View;
    .locals 1

    .line 82476
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private A0G()Landroid/view/View;
    .locals 1

    .line 82477
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0H(II)Landroid/view/View;
    .locals 3

    .line 82478
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 82479
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    .line 82480
    .local v0, "next":I
    :goto_0
    if-nez v0, :cond_2

    .line 82481
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 82482
    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 82483
    .local v1, "preferredBoundsFlag":I
    .local v2, "acceptableBoundsFlag":I
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82484
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 82485
    const/16 v2, 0x4104

    .line 82486
    const/16 v1, 0x4004

    .line 82487
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    if-nez v0, :cond_3

    .line 82488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A04:Lcom/facebook/ads/redexgen/X/Ql;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/Ql;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 82489
    :goto_2
    return-object v0

    .line 82490
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A05:Lcom/facebook/ads/redexgen/X/Ql;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/Ql;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 82491
    :cond_4
    const/16 v2, 0x1041

    .line 82492
    const/16 v1, 0x1001

    goto :goto_1
.end method

.method private final A0I(IIZZ)Landroid/view/View;
    .locals 6

    .line 82493
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 82494
    .local v0, "preferredBoundsFlag":I
    const/4 v3, 0x0

    .line 82495
    .local v1, "acceptableBoundsFlag":I
    if-eqz p3, :cond_1

    .line 82496
    const/16 v4, 0x6003

    .line 82497
    :goto_0
    if-eqz p4, :cond_0

    .line 82498
    const/16 v3, 0x140

    .line 82499
    :cond_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 82500
    :cond_1
    const/16 v4, 0x140

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "CO2lCdhiUyNnJNyVLVKK7uQ85cne8EHP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    .line 82501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A04:Lcom/facebook/ads/redexgen/X/Ql;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/Ql;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 82502
    :goto_1
    return-object v0

    .line 82503
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A05:Lcom/facebook/ads/redexgen/X/Ql;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/Ql;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;
    .locals 6

    .line 82504
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v4

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qd;->A03()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/gI;->A2A(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;
    .locals 6

    .line 82505
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qd;->A03()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/gI;->A2A(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;
    .locals 1

    .line 82506
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0D()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82507
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0E()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;
    .locals 1

    .line 82508
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0E()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82509
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0D()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;
    .locals 1

    .line 82510
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0J(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82511
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0L(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;
    .locals 1

    .line 82512
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0L(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82513
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0J(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0Q(ZZ)Landroid/view/View;
    .locals 2

    .line 82514
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_0

    .line 82515
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 82516
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0R(ZZ)Landroid/view/View;
    .locals 2

    .line 82517
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_0

    .line 82518
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 82519
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final A0S()Lcom/facebook/ads/redexgen/X/Q3;
    .locals 1

    .line 82520
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Q3;-><init>()V

    return-object v0
.end method

.method public static A0T(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0U()V
    .locals 2

    .line 82521
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2H()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82522
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    .line 82523
    :goto_0
    return-void

    .line 82524
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0A:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    goto :goto_0
.end method

.method public static A0V()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gI;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x18t
        0x0t
        0x17t
        0x1at
        0x1ft
        0x12t
        0x56t
        0x19t
        0x4t
        0x1ft
        0x13t
        0x18t
        0x2t
        0x17t
        0x2t
        0x1ft
        0x19t
        0x18t
        0x4ct
    .end array-data
.end method

.method private A0W(II)V
    .locals 3

    .line 82525
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    .line 82526
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 82527
    :goto_0
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Q3;->A03:I

    .line 82528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A01:I

    .line 82529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A05:I

    .line 82530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput p2, v0, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 82531
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    .line 82532
    return-void

    .line 82533
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private A0X(II)V
    .locals 3

    .line 82534
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    .line 82535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A01:I

    .line 82536
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 82537
    :goto_0
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Q3;->A03:I

    .line 82538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A05:I

    .line 82539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput p2, v0, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 82540
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    .line 82541
    return-void

    .line 82542
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A0Y(IIZLcom/facebook/ads/redexgen/X/Qd;)V
    .locals 5

    .line 82543
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A09:Z

    .line 82544
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/gI;->A0C(Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    .line 82545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A05:I

    .line 82546
    const/4 v4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 82547
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    .line 82548
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0F()Landroid/view/View;

    move-result-object v3

    .line 82549
    .local v2, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_1

    .line 82550
    :goto_0
    iput v4, v1, Lcom/facebook/ads/redexgen/X/Q3;->A03:I

    .line 82551
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Q3;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Q3;->A01:I

    .line 82552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Q8;->A0C(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 82553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Q8;->A0C(Landroid/view/View;)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82554
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v0

    sub-int/2addr v2, v0

    .line 82555
    .end local v2    # "child":Landroid/view/View;
    .local v0, "scrollingOffset":I
    .end local v2
    .restart local v0    # "scrollingOffset":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput p2, v0, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    .line 82556
    if-eqz p3, :cond_0

    .line 82557
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    .line 82558
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    .line 82559
    return-void

    .line 82560
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 82561
    .end local v0    # "scrollingOffset":I
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0G()Landroid/view/View;

    move-result-object v3

    .line 82562
    .restart local v2    # "child":Landroid/view/View;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    .line 82563
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 82564
    :cond_3
    iput v4, v1, Lcom/facebook/ads/redexgen/X/Q3;->A03:I

    .line 82565
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Q3;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Q3;->A01:I

    .line 82566
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 82567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v0

    neg-int v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82568
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/Q1;)V
    .locals 2

    .line 82569
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Q1;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Q1;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0W(II)V

    .line 82570
    return-void
.end method

.method private A0a(Lcom/facebook/ads/redexgen/X/Q1;)V
    .locals 2

    .line 82571
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Q1;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Q1;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0X(II)V

    .line 82572
    return-void
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/QW;I)V
    .locals 6

    .line 82573
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v5

    .line 82574
    .local v0, "childCount":I
    if-gez p2, :cond_0

    .line 82575
    return-void

    .line 82576
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A06()I

    move-result v3

    sub-int/2addr v3, p2

    .line 82577
    .local v1, "limit":I
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "5eQap7viEGWOuRbzagNYDGjkAWEMIhVp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_5

    .line 82578
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v4, v5, :cond_8

    .line 82579
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v1

    .line 82580
    .local v3, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82581
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 82582
    .restart local v3    # "child":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "EiwXPaP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "4OvxlWI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v3, v4}, Lcom/facebook/ads/redexgen/X/gI;->A0d(Lcom/facebook/ads/redexgen/X/QW;II)V

    .line 82583
    return-void

    .line 82584
    .end local v3    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v3, v4}, Lcom/facebook/ads/redexgen/X/gI;->A0d(Lcom/facebook/ads/redexgen/X/QW;II)V

    .line 82585
    return-void

    .line 82586
    :cond_5
    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_8

    .line 82587
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v1

    .line 82588
    .restart local v3    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82589
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_7

    .line 82590
    .restart local v3    # "child":Landroid/view/View;
    :cond_6
    add-int/lit8 v0, v5, -0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/gI;->A0d(Lcom/facebook/ads/redexgen/X/QW;II)V

    .line 82591
    return-void

    .line 82592
    .end local v3    # "child":Landroid/view/View;
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 82593
    .end local v2    # "i":I
    .end local v3
    :cond_8
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/QW;I)V
    .locals 7

    .line 82594
    if-gez p2, :cond_0

    .line 82595
    return-void

    .line 82596
    .local v0, "limit":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v3

    .line 82597
    .local v1, "childCount":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_4

    .line 82598
    add-int/lit8 v4, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v4, :cond_7

    .line 82599
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v5

    .line 82600
    .local v3, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "CCkneFsBnjHsOQTiipl2DNgji2H70UcR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Q8;->A0C(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82601
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Q8;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_3

    .line 82602
    .restart local v3    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, p1, v0, v4}, Lcom/facebook/ads/redexgen/X/gI;->A0d(Lcom/facebook/ads/redexgen/X/QW;II)V

    .line 82603
    return-void

    .line 82604
    .end local v3    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 82605
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v3, :cond_7

    .line 82606
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v1

    .line 82607
    .restart local v3    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0C(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82608
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_6

    .line 82609
    .restart local v3    # "child":Landroid/view/View;
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/gI;->A0d(Lcom/facebook/ads/redexgen/X/QW;II)V

    .line 82610
    return-void

    .line 82611
    .end local v3    # "child":Landroid/view/View;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 82612
    .end local v2    # "i":I
    .end local v3
    :cond_7
    return-void
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/QW;II)V
    .locals 1

    .line 82613
    if-ne p2, p3, :cond_0

    .line 82614
    return-void

    .line 82615
    :cond_0
    if-le p3, p2, :cond_1

    .line 82616
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 82617
    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A16(ILcom/facebook/ads/redexgen/X/QW;)V

    .line 82618
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 82619
    .restart local v0    # "i":I
    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 82620
    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/QO;->A16(ILcom/facebook/ads/redexgen/X/QW;)V

    .line 82621
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 82622
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;)V
    .locals 2

    .line 82623
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A0B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A09:Z

    if-eqz v0, :cond_1

    .line 82624
    :cond_0
    return-void

    .line 82625
    :cond_1
    iget v1, p2, Lcom/facebook/ads/redexgen/X/Q3;->A05:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 82626
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0b(Lcom/facebook/ads/redexgen/X/QW;I)V

    .line 82627
    :goto_0
    return-void

    .line 82628
    :cond_2
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0c(Lcom/facebook/ads/redexgen/X/QW;I)V

    goto :goto_0
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;II)V
    .locals 13

    .line 82629
    move-object v2, p0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qd;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82630
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A24()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82631
    :cond_0
    return-void

    .line 82632
    :cond_1
    const/4 v5, 0x0

    .local v3, "scrapExtraStart":I
    const/4 v3, 0x0

    .line 82633
    .local v4, "scrapExtraEnd":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A0J()Ljava/util/List;

    move-result-object v8

    .line 82634
    .local v5, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 82635
    .local v6, "scrapSize":I
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v7

    .line 82636
    .local v8, "firstChildPos":I
    const/4 v6, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v6, v9, :cond_6

    .line 82637
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/Qg;

    .line 82638
    .local v10, "scrap":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82639
    .end local v10    # "scrap":Lcom/facebook/ads/redexgen/X/Qg;
    .end local v11
    .end local v12
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82640
    :cond_2
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Qg;->A0O()I

    move-result v0

    .line 82641
    .local v11, "position":I
    const/4 v12, 0x1

    if-ge v0, v7, :cond_4

    const/4 v10, 0x1

    :goto_2
    iget-boolean v4, v2, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    const/4 v0, -0x1

    if-eq v10, v4, :cond_3

    .line 82642
    const/4 v12, -0x1

    .line 82643
    .local v12, "direction":I
    :cond_3
    if-ne v12, v0, :cond_5

    .line 82644
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_1

    .line 82645
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 82646
    :cond_5
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_1

    .line 82647
    .end local v9    # "i":I
    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput-object v8, v0, Lcom/facebook/ads/redexgen/X/Q3;->A08:Ljava/util/List;

    .line 82648
    if-lez v5, :cond_7

    .line 82649
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0G()Landroid/view/View;

    move-result-object v0

    .line 82650
    .local v9, "anchor":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v0

    move/from16 v4, p3

    invoke-direct {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/gI;->A0X(II)V

    .line 82651
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    .line 82652
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    .line 82653
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q3;->A04()V

    .line 82654
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {v2, p1, v0, p2, v1}, Lcom/facebook/ads/redexgen/X/gI;->A07(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    .line 82655
    :cond_7
    if-lez v3, :cond_8

    .line 82656
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0F()Landroid/view/View;

    move-result-object v0

    .line 82657
    .restart local v9    # "anchor":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v0

    move/from16 v4, p4

    invoke-direct {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/gI;->A0W(II)V

    .line 82658
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    .line 82659
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    .line 82660
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q3;->A04()V

    .line 82661
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {v2, p1, v0, p2, v1}, Lcom/facebook/ads/redexgen/X/gI;->A07(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    .line 82662
    :cond_8
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A08:Ljava/util/List;

    .line 82663
    return-void
.end method

.method private A0g(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q1;)V
    .locals 1

    .line 82664
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/gI;->A0k(Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82665
    return-void

    .line 82666
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/gI;->A0j(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q1;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82667
    return-void

    .line 82668
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Q1;->A02()V

    .line 82669
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0C:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qd;->A03()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p3, Lcom/facebook/ads/redexgen/X/Q1;->A01:I

    .line 82670
    return-void

    .line 82671
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0h(Z)V
    .locals 1

    .line 82672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/gI;->A20(Ljava/lang/String;)V

    .line 82673
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0A:Z

    if-ne p1, v0, :cond_0

    .line 82674
    return-void

    .line 82675
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/gI;->A0A:Z

    .line 82676
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A10()V

    .line 82677
    return-void
.end method

.method private final A0i()Z
    .locals 1

    .line 82678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A09()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82679
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A06()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 82680
    :goto_0
    return v0

    .line 82681
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0j(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q1;)Z
    .locals 5

    .line 82682
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 82683
    return v4

    .line 82684
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0u()Landroid/view/View;

    move-result-object v1

    .line 82685
    .local v0, "focused":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v1, p2}, Lcom/facebook/ads/redexgen/X/Q1;->A06(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qd;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82686
    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/Q1;->A05(Landroid/view/View;)V

    .line 82687
    return v3

    .line 82688
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0C:Z

    if-eq v1, v0, :cond_2

    .line 82689
    return v4

    .line 82690
    :cond_2
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    if-eqz v0, :cond_7

    .line 82691
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0O(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;

    move-result-object v2

    .line 82692
    .local v3, "referenceChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_8

    .line 82693
    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/Q1;->A04(Landroid/view/View;)V

    .line 82694
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A24()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82696
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82697
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82698
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Q8;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82699
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 82700
    .local v1, "notVisible":Z
    :cond_4
    if-eqz v4, :cond_5

    .line 82701
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    if-eqz v0, :cond_6

    .line 82702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v0

    .line 82703
    :goto_1
    iput v0, p3, Lcom/facebook/ads/redexgen/X/Q1;->A00:I

    .line 82704
    .end local v1    # "notVisible":Z
    :cond_5
    return v3

    .line 82705
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    goto :goto_1

    .line 82706
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0P(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 82707
    :cond_8
    return v4
.end method

.method private A0k(Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q1;)Z
    .locals 8

    .line 82708
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 82709
    :cond_0
    return v4

    .line 82710
    :cond_1
    iget v5, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "TFIDoufW7PPC7ZEj7Y5tPHllsDSURNN1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/high16 v0, -0x80000000

    if-ltz v5, :cond_3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qd;->A03()I

    move-result v1

    if-lt v2, v1, :cond_4

    .line 82711
    :cond_3
    iput v3, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    .line 82712
    iput v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A02:I

    .line 82713
    return v4

    .line 82714
    :cond_4
    iget v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Q1;->A01:I

    .line 82715
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 82716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    .line 82717
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    if-eqz v0, :cond_5

    .line 82718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Q1;->A00:I

    .line 82719
    :goto_0
    return v3

    .line 82720
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Q1;->A00:I

    goto :goto_0

    .line 82721
    :cond_6
    iget v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A02:I

    if-ne v1, v0, :cond_10

    .line 82722
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/gI;->A1o(I)Landroid/view/View;

    move-result-object v5

    .line 82723
    .local v0, "child":Landroid/view/View;
    if-eqz v5, :cond_c

    .line 82724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Q8;->A0D(Landroid/view/View;)I

    move-result v1

    .line 82725
    .local v3, "childSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0B()I

    move-result v0

    if-le v1, v0, :cond_7

    .line 82726
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Q1;->A02()V

    .line 82727
    return v3

    .line 82728
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82729
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "BfWLqmz6tLXTBl9sOf8GvQUpsUyqil7O"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sub-int/2addr v7, v6

    .line 82730
    .local v4, "startGap":I
    if-gez v7, :cond_9

    .line 82731
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/Q1;->A00:I

    .line 82732
    iput-boolean v4, p2, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    .line 82733
    return v3

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "F1yYn32nqotC7GL2fjmWFlYeH2UBHhCV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sub-int/2addr v7, v6

    .line 82734
    .local v4, "startGap":I
    if-gez v7, :cond_9

    goto :goto_1

    .line 82735
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82736
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Q8;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 82737
    .local v1, "endGap":I
    if-gez v1, :cond_a

    .line 82738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/Q1;->A00:I

    .line 82739
    iput-boolean v3, p2, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    .line 82740
    return v3

    .line 82741
    :cond_a
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    if-eqz v0, :cond_b

    .line 82742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Q8;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82743
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A05()I

    move-result v0

    add-int/2addr v1, v0

    .line 82744
    :goto_2
    iput v1, p2, Lcom/facebook/ads/redexgen/X/Q1;->A00:I

    .line 82745
    .end local v1    # "endGap":I
    .end local v3    # "childSize":I
    .end local v4    # "startGap":I
    goto :goto_4

    .line 82746
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v1

    goto :goto_2

    .line 82747
    :cond_c
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    if-lez v0, :cond_e

    .line 82748
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v1

    .line 82749
    .local v3, "pos":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    if-ge v0, v1, :cond_f

    const/4 v1, 0x1

    :goto_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-ne v1, v0, :cond_d

    const/4 v4, 0x1

    :cond_d
    iput-boolean v4, p2, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    .line 82750
    .end local v3    # "pos":I
    :cond_e
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Q1;->A02()V

    .line 82751
    :goto_4
    return v3

    .line 82752
    :cond_f
    const/4 v1, 0x0

    goto :goto_3

    .line 82753
    .end local v0    # "child":Landroid/view/View;
    :cond_10
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "6FIelR57229tmCeHfVqBadRckpOvBeMr"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v4, p2, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    .line 82754
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_12

    .line 82755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A02:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Q1;->A00:I

    .line 82756
    :goto_5
    return v3

    .line 82757
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A02:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/Q1;->A00:I

    goto :goto_5
.end method


# virtual methods
.method public A1f(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 2

    .line 82758
    iget v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 82759
    const/4 v0, 0x0

    return v0

    .line 82760
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/gI;->A04(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    return v0
.end method

.method public A1g(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 1

    .line 82761
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    if-nez v0, :cond_0

    .line 82762
    const/4 v0, 0x0

    return v0

    .line 82763
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/gI;->A04(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    return v0
.end method

.method public final A1h(Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 1

    .line 82764
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gI;->A08(Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    return v0
.end method

.method public final A1i(Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 1

    .line 82765
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gI;->A0A(Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    return v0
.end method

.method public final A1j(Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 1

    .line 82766
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gI;->A0B(Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    return v0
.end method

.method public final A1k(Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 1

    .line 82767
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gI;->A08(Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    return v0
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 1

    .line 82768
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gI;->A0A(Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    return v0
.end method

.method public final A1m(Lcom/facebook/ads/redexgen/X/Qd;)I
    .locals 1

    .line 82769
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gI;->A0B(Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v0

    return v0
.end method

.method public final A1n()Landroid/os/Parcelable;
    .locals 4

    .line 82770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 82771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    new-instance v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;)V

    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 82772
    :cond_0
    new-instance v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 82773
    .local v0, "state":Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    if-lez v0, :cond_2

    .line 82774
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 82775
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    xor-int/2addr v1, v0

    .line 82776
    .local v1, "didLayoutFromEnd":Z
    iput-boolean v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 82777
    if-eqz v1, :cond_1

    .line 82778
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0F()Landroid/view/View;

    move-result-object v2

    .line 82779
    .local v2, "refChild":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82780
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Q8;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    .line 82781
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 82782
    .end local v2    # "refChild":Landroid/view/View;
    :goto_0
    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v3}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 82783
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0G()Landroid/view/View;

    move-result-object v1

    .line 82784
    .restart local v2    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 82785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82786
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    goto :goto_0

    .line 82787
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    goto :goto_0
.end method

.method public final A1o(I)Landroid/view/View;
    .locals 2

    .line 82788
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v1

    .line 82789
    .local v0, "childCount":I
    if-nez v1, :cond_0

    .line 82790
    const/4 v0, 0x0

    return-object v0

    .line 82791
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v0

    .line 82792
    .local v1, "firstChild":I
    sub-int v0, p1, v0

    .line 82793
    .local p0, "viewPosition":I
    if-ltz v0, :cond_1

    if-ge v0, v1, :cond_1

    .line 82794
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v1

    .line 82795
    .local p1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 82796
    return-object v1

    .line 82797
    .end local p1    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A1o(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public A1p(Landroid/view/View;ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;
    .locals 5

    .line 82798
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0U()V

    .line 82799
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 82800
    return-object v4

    .line 82801
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/gI;->A29(I)I

    move-result v3

    .line 82802
    .local v0, "layoutDir":I
    const/high16 v2, -0x80000000

    if-ne v3, v2, :cond_1

    .line 82803
    return-object v4

    .line 82804
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 82805
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 82806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0B()I

    move-result v0

    int-to-float v1, v0

    const v0, 0x3eaaaaab

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 82807
    .local v3, "maxScroll":I
    const/4 v1, 0x0

    invoke-direct {p0, v3, v0, v1, p4}, Lcom/facebook/ads/redexgen/X/gI;->A0Y(IIZLcom/facebook/ads/redexgen/X/Qd;)V

    .line 82808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    .line 82809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A0B:Z

    .line 82810
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    const/4 v0, 0x1

    invoke-direct {p0, p3, v1, p4, v0}, Lcom/facebook/ads/redexgen/X/gI;->A07(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    .line 82811
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    .line 82812
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/gI;->A0N(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;

    move-result-object v2

    .line 82813
    .local v4, "nextCandidate":Landroid/view/View;
    .restart local v4    # "nextCandidate":Landroid/view/View;
    :goto_0
    if-ne v3, v0, :cond_2

    .line 82814
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0G()Landroid/view/View;

    move-result-object v1

    .line 82815
    .local v2, "nextFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82816
    if-nez v2, :cond_4

    .line 82817
    return-object v4

    .line 82818
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0F()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 82819
    .end local v4    # "nextCandidate":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/gI;->A0M(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 82820
    :cond_4
    return-object v1

    .line 82821
    :cond_5
    return-object v2
.end method

.method public A1q()Lcom/facebook/ads/redexgen/X/QP;
    .locals 2

    .line 82822
    const/4 v1, -0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/QP;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/QP;-><init>(II)V

    return-object v0
.end method

.method public A1r(I)V
    .locals 1

    .line 82823
    iput p1, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    .line 82824
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A02:I

    .line 82825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 82826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 82827
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A10()V

    .line 82828
    return-void
.end method

.method public final A1s(IILcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/QM;)V
    .locals 3

    .line 82829
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    if-nez v0, :cond_1

    .line 82830
    .local v0, "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 82831
    .end local v2
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/gI;
    :cond_0
    return-void

    .line 82832
    :cond_1
    move p1, p2

    goto :goto_0

    .line 82833
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 82834
    const/4 v2, 0x1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    .line 82835
    .local v2, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 82836
    .local p0, "absDy":I
    invoke-direct {p0, v1, v0, v2, p3}, Lcom/facebook/ads/redexgen/X/gI;->A0Y(IIZLcom/facebook/ads/redexgen/X/Qd;)V

    .line 82837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-virtual {p0, p3, v0, p4}, Lcom/facebook/ads/redexgen/X/gI;->A2G(Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/QM;)V

    .line 82838
    return-void

    .line 82839
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final A1t(ILcom/facebook/ads/redexgen/X/QM;)V
    .locals 5

    .line 82840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v1, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 82842
    .local v0, "fromEnd":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 82843
    .local v3, "anchorPos":I
    .restart local v3    # "anchorPos":I
    :goto_0
    if-eqz v1, :cond_0

    .line 82844
    .local v2, "direction":I
    .local v4, "targetPos":I
    :goto_1
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A06:I

    if-ge v1, v0, :cond_4

    .line 82845
    if-ltz v2, :cond_4

    if-ge v2, p1, :cond_4

    .line 82846
    invoke-interface {p2, v2, v4}, Lcom/facebook/ads/redexgen/X/QM;->A3u(II)V

    .line 82847
    add-int/2addr v2, v3

    .line 82848
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 82849
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 82850
    .end local v0    # "fromEnd":Z
    .end local v3    # "anchorPos":I
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0U()V

    .line 82851
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    .line 82852
    .restart local v0    # "fromEnd":Z
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    if-ne v0, v3, :cond_3

    .line 82853
    if-eqz v1, :cond_2

    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 82854
    .end local v3
    :cond_3
    iget v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    goto :goto_0

    .line 82855
    .end local p0    # "i":I
    :cond_4
    return-void
.end method

.method public final A1u(Landroid/os/Parcelable;)V
    .locals 2

    .line 82856
    instance-of v0, p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    if-nez v0, :cond_0

    .line 82857
    return-void

    .line 82858
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 82859
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    .line 82860
    return-void

    .line 82861
    :cond_1
    check-cast p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;->unwrap(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    .line 82862
    .local v1, "state":Landroid/os/Parcelable;
    instance-of v0, v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    .line 82863
    check-cast v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 82864
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A10()V

    .line 82865
    :cond_2
    return-void
.end method

.method public final A1v(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 82866
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A1v(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 82867
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    if-lez v0, :cond_0

    .line 82868
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A26()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_1

    .line 82869
    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "JM0e54P"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "62qYDCA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A27()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 82870
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1w(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;)V
    .locals 9

    .line 82871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v6, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    if-eq v0, v6, :cond_1

    .line 82872
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qd;->A03()I

    move-result v0

    if-nez v0, :cond_1

    .line 82873
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A1K(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 82874
    return-void

    .line 82875
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    .line 82877
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 82878
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_17

    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "TEU8GGg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "lg12FnG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/facebook/ads/redexgen/X/Q3;->A0B:Z

    .line 82879
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0U()V

    .line 82880
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0u()Landroid/view/View;

    move-result-object v5

    .line 82881
    .local v0, "focused":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Q1;->A03:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_14

    .line 82882
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q1;->A03()V

    .line 82883
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0C:Z

    xor-int/2addr v1, v0

    iput-boolean v1, v2, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    .line 82884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0g(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q1;)V

    .line 82885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Q1;->A03:Z

    .line 82886
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/gI;->A0C(Lcom/facebook/ads/redexgen/X/Qd;)I

    move-result v7

    .line 82887
    .local v3, "extra":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Q3;->A04:I

    if-ltz v0, :cond_13

    .line 82888
    .local v5, "extraForEnd":I
    const/4 v8, 0x0

    .line 82889
    .local v6, "extraForStart":I
    .restart local v5    # "extraForEnd":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    add-int/2addr v8, v0

    .line 82890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A08()I

    move-result v0

    add-int/2addr v7, v0

    .line 82891
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    if-eq v0, v6, :cond_5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A02:I

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_5

    .line 82892
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/gI;->A1o(I)Landroid/view/View;

    move-result-object v1

    .line 82893
    .local v7, "existing":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 82894
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_12

    .line 82895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82896
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v2, v0

    .line 82897
    .local v8, "current":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A02:I

    sub-int/2addr v2, v0

    .line 82898
    .local p0, "upcomingOffset":I
    .restart local p0    # "upcomingOffset":I
    :goto_2
    if-lez v2, :cond_11

    .line 82899
    add-int/2addr v8, v2

    .line 82900
    .end local v7    # "existing":Landroid/view/View;
    .end local v8    # "current":I
    .end local p0    # "upcomingOffset":I
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    if-eqz v0, :cond_f

    .line 82901
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    .line 82902
    .restart local v1
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-virtual {p0, p1, p2, v0, v6}, Lcom/facebook/ads/redexgen/X/gI;->A2E(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q1;I)V

    .line 82903
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A1J(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 82904
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A09:Z

    .line 82905
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Q3;->A0A:Z

    .line 82906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Q1;->A02:Z

    if-eqz v0, :cond_d

    .line 82907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0a(Lcom/facebook/ads/redexgen/X/Q1;)V

    .line 82908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v8, v0, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    .line 82909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/gI;->A07(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    .line 82910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 82911
    .local v7, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/Q3;->A01:I

    .line 82912
    .local v8, "firstElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    if-lez v0, :cond_7

    .line 82913
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "MJWLhmn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Xdeja1C"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    add-int/2addr v7, v0

    .line 82914
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0Z(Lcom/facebook/ads/redexgen/X/Q1;)V

    .line 82915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    .line 82916
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Q3;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Q3;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Q3;->A01:I

    .line 82917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/gI;->A07(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    .line 82918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 82919
    .local p0, "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    if-lez v0, :cond_8

    .line 82920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    .line 82921
    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/gI;->A0X(II)V

    .line 82922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    .line 82923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/gI;->A07(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    .line 82924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 82925
    .end local v8    # "firstElement":I
    .local v7, "startOffset":I
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    if-lez v0, :cond_9

    .line 82926
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0C:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 82927
    invoke-direct {p0, v2, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/gI;->A05(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    move-result v0

    .line 82928
    .local v4, "fixOffset":I
    add-int/2addr v6, v0

    .line 82929
    add-int/2addr v2, v0

    .line 82930
    invoke-direct {p0, v6, p1, p2, v4}, Lcom/facebook/ads/redexgen/X/gI;->A06(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    move-result v0

    .line 82931
    .end local v4    # "fixOffset":I
    .local v2, "fixOffset":I
    add-int/2addr v6, v0

    .line 82932
    add-int/2addr v2, v0

    .line 82933
    .end local v2    # "fixOffset":I
    .end local v2
    :cond_9
    :goto_7
    invoke-direct {p0, p1, p2, v6, v2}, Lcom/facebook/ads/redexgen/X/gI;->A0f(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;II)V

    .line 82934
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qd;->A07()Z

    move-result v0

    if-nez v0, :cond_a

    .line 82935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0I()V

    .line 82936
    :goto_8
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0C:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A08:Z

    .line 82937
    return-void

    .line 82938
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q1;->A03()V

    goto :goto_8

    .line 82939
    :cond_b
    invoke-direct {p0, v6, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/gI;->A06(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    move-result v0

    .line 82940
    .restart local v4    # "fixOffset":I
    add-int/2addr v6, v0

    .line 82941
    add-int/2addr v2, v0

    .line 82942
    invoke-direct {p0, v2, p1, p2, v4}, Lcom/facebook/ads/redexgen/X/gI;->A05(ILcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    move-result v0

    .line 82943
    .end local v4    # "fixOffset":I
    .restart local v2    # "fixOffset":I
    add-int/2addr v6, v0

    .line 82944
    add-int/2addr v2, v0

    goto :goto_7

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "HkWuM96xU0ciNRE25G4cwktgC29lbS6I"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    add-int/2addr v7, v0

    goto :goto_5

    .line 82945
    .end local v7    # "startOffset":I
    .end local p0    # "endOffset":I
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0Z(Lcom/facebook/ads/redexgen/X/Q1;)V

    .line 82946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    .line 82947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/gI;->A07(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    .line 82948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 82949
    .restart local p0    # "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/Q3;->A01:I

    .line 82950
    .local v7, "lastElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    if-lez v0, :cond_e

    .line 82951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    add-int/2addr v8, v0

    .line 82952
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0a(Lcom/facebook/ads/redexgen/X/Q1;)V

    .line 82953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v8, v0, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    .line 82954
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/Q3;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Q3;->A03:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/facebook/ads/redexgen/X/Q3;->A01:I

    .line 82955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/gI;->A07(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    .line 82956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 82957
    .local v8, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    if-lez v0, :cond_8

    .line 82958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A00:I

    .line 82959
    invoke-direct {p0, v5, v2}, Lcom/facebook/ads/redexgen/X/gI;->A0W(II)V

    .line 82960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Q3;->A02:I

    .line 82961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {p0, p1, v0, p2, v4}, Lcom/facebook/ads/redexgen/X/gI;->A07(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Qd;Z)I

    .line 82962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    goto/16 :goto_6

    .line 82963
    .end local v1
    :cond_f
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    if-eqz v0, :cond_10

    goto/16 :goto_4

    .line 82964
    :cond_10
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 82965
    :cond_11
    sub-int/2addr v7, v2

    goto/16 :goto_3

    .line 82966
    .end local v8    # "startOffset":I
    .end local p0    # "endOffset":I
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82967
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    .line 82968
    .restart local v8    # "startOffset":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/gI;->A02:I

    sub-int/2addr v2, v1

    goto/16 :goto_2

    .line 82969
    .end local v5    # "extraForEnd":I
    .end local v6    # "extraForStart":I
    :cond_13
    move v8, v7

    .line 82970
    .restart local v6    # "extraForStart":I
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 82971
    :cond_14
    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82972
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_16

    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "cu8BBcv0k6hBgzqZsr0VN3sfifuVMQ62"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v8, v7, :cond_15

    :goto_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82973
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Q8;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 82974
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v0

    if-gt v1, v0, :cond_4

    .line 82975
    :cond_15
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Q1;->A05(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_16
    if-ge v8, v7, :cond_15

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1x(Lcom/facebook/ads/redexgen/X/Qd;)V
    .locals 1

    .line 82976
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A1x(Lcom/facebook/ads/redexgen/X/Qd;)V

    .line 82977
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 82978
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    .line 82979
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A02:I

    .line 82980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0D:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q1;->A03()V

    .line 82981
    return-void
.end method

.method public final A1y(Lcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 1

    .line 82982
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/QO;->A1y(Lcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/QW;)V

    .line 82983
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A09:Z

    if-eqz v0, :cond_0

    .line 82984
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/QO;->A1K(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 82985
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QW;->A0P()V

    .line 82986
    :cond_0
    return-void
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/Qd;I)V
    .locals 2

    .line 82987
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6g;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gH;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/gH;-><init>(Landroid/content/Context;)V

    .line 82988
    .local v0, "linearSmoothScroller":Lcom/facebook/ads/redexgen/X/gH;
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/Qb;->A0A(I)V

    .line 82989
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A1N(Lcom/facebook/ads/redexgen/X/Qb;)V

    .line 82990
    return-void
.end method

.method public final A20(Ljava/lang/String;)V
    .locals 1

    .line 82991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 82992
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A20(Ljava/lang/String;)V

    .line 82993
    :cond_0
    return-void
.end method

.method public final A21()Z
    .locals 2

    .line 82994
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0a()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 82995
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0k()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 82996
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A1U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 82997
    :goto_0
    return v0

    .line 82998
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A22()Z
    .locals 1

    .line 82999
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A23()Z
    .locals 2

    .line 83000
    iget v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A24()Z
    .locals 2

    .line 83001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A0C:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A25()I
    .locals 3

    .line 83002
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 83003
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A26()I
    .locals 3

    .line 83004
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/gI;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 83005
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A27()I
    .locals 4

    .line 83006
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v3

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/gI;->A0I(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 83007
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public final A28()I
    .locals 1

    .line 83008
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    return v0
.end method

.method public final A29(I)I
    .locals 7

    .line 83009
    const/4 v6, -0x1

    const/high16 v5, -0x80000000

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 83010
    return v5

    .line 83011
    :sswitch_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    if-ne v0, v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    .line 83012
    :sswitch_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    if-ne v0, v4, :cond_1

    :goto_0
    return v6

    .line 83013
    :cond_1
    const/high16 v6, -0x80000000

    goto :goto_0

    .line 83014
    :sswitch_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    if-nez v0, :cond_2

    :goto_1
    return v6

    .line 83015
    :cond_2
    const/high16 v6, -0x80000000

    goto :goto_1

    .line 83016
    :sswitch_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    if-ne v0, v4, :cond_3

    .line 83017
    return v4

    .line 83018
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83019
    return v6

    .line 83020
    :cond_4
    return v4

    .line 83021
    :sswitch_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    if-ne v0, v4, :cond_5

    .line 83022
    return v6

    .line 83023
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2H()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "JFBGAdvw0W46p1IiHd184rfjlhxsbjRk"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    .line 83024
    return v4

    .line 83025
    :cond_6
    return v6

    .line 83026
    :sswitch_5
    iget v3, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "A4gNOGqmCbgTlyYHXDAs3UqrHjABAhAn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_9

    const/4 v5, 0x1

    :cond_9
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x11 -> :sswitch_2
        0x21 -> :sswitch_1
        0x42 -> :sswitch_5
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public A2A(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;III)Landroid/view/View;
    .locals 7

    .line 83027
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2B()V

    .line 83028
    const/4 v6, 0x0

    .line 83029
    .local v0, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 83030
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v4

    .line 83031
    .local v2, "boundsStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q8;->A07()I

    move-result v3

    .line 83032
    .local v3, "boundsEnd":I
    if-le p4, p3, :cond_3

    const/4 v2, 0x1

    .line 83033
    .local v5, "i":I
    :goto_0
    if-eq p3, p4, :cond_5

    .line 83034
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v1

    .line 83035
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v0

    .line 83036
    .local p0, "position":I
    if-ltz v0, :cond_0

    if-ge v0, p5, :cond_0

    .line 83037
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QP;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83038
    if-nez v6, :cond_0

    .line 83039
    move-object v6, v1

    .line 83040
    .end local v6    # "view":Landroid/view/View;
    .end local p0    # "position":I
    :cond_0
    :goto_1
    add-int/2addr p3, v2

    goto :goto_0

    .line 83041
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 83042
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q8;->A0C(Landroid/view/View;)I

    move-result v0

    if-ge v0, v4, :cond_4

    .line 83043
    :cond_2
    if-nez v5, :cond_0

    .line 83044
    move-object v5, v1

    goto :goto_1

    .line 83045
    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    .line 83046
    :cond_4
    return-object v1

    .line 83047
    .end local v5    # "i":I
    :cond_5
    if-eqz v5, :cond_6

    :goto_2
    return-object v5

    :cond_6
    move-object v5, v6

    goto :goto_2
.end method

.method public final A2B()V
    .locals 4

    .line 83048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    if-nez v0, :cond_1

    .line 83049
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gI;->A0S()Lcom/facebook/ads/redexgen/X/Q3;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "6FRvOBuqOIFmnj4QgnBJgNDOjl7oudHL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/gI;->A07:Lcom/facebook/ads/redexgen/X/Q3;

    .line 83050
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    if-nez v0, :cond_2

    .line 83051
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Q8;->A02(Lcom/facebook/ads/redexgen/X/QO;I)Lcom/facebook/ads/redexgen/X/Q8;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 83052
    :cond_2
    return-void
.end method

.method public final A2C(I)V
    .locals 4

    .line 83053
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 83054
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/gI;->A20(Ljava/lang/String;)V

    .line 83055
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    if-ne p1, v0, :cond_1

    .line 83056
    return-void

    .line 83057
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    .line 83058
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    .line 83059
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A10()V

    .line 83060
    return-void

    .line 83061
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gI;->A0T(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A2D(II)V
    .locals 1

    .line 83062
    iput p1, p0, Lcom/facebook/ads/redexgen/X/gI;->A01:I

    .line 83063
    iput p2, p0, Lcom/facebook/ads/redexgen/X/gI;->A02:I

    .line 83064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 83065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 83066
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A10()V

    .line 83067
    return-void
.end method

.method public A2E(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q1;I)V
    .locals 0

    .line 83068
    return-void
.end method

.method public A2F(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/Q2;)V
    .locals 14

    .line 83069
    move-object v7, p0

    move-object/from16 v5, p3

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/Q3;->A03(Lcom/facebook/ads/redexgen/X/QW;)Landroid/view/View;

    move-result-object v9

    .line 83070
    .local v10, "view":Landroid/view/View;
    const/4 v3, 0x1

    move-object/from16 v4, p4

    if-nez v9, :cond_0

    .line 83071
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Q2;->A01:Z

    .line 83072
    return-void

    .line 83073
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/QP;

    .line 83074
    .local v12, "params":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Q3;->A08:Ljava/util/List;

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-nez v0, :cond_9

    .line 83075
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Q3;->A05:I

    if-ne v0, v6, :cond_8

    const/4 v0, 0x1

    :goto_0
    if-ne v1, v0, :cond_7

    .line 83076
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/QO;->A19(Landroid/view/View;)V

    .line 83077
    :goto_1
    invoke-virtual {v7, v9, v8, v8}, Lcom/facebook/ads/redexgen/X/QO;->A1C(Landroid/view/View;II)V

    .line 83078
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Q8;->A0D(Landroid/view/View;)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Q2;->A00:I

    .line 83079
    iget v0, v7, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    if-ne v0, v3, :cond_5

    .line 83080
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gI;->A2H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83081
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0j()I

    move-result v12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0h()I

    move-result v0

    sub-int/2addr v12, v0

    .line 83082
    .local v0, "right":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Q8;->A0E(Landroid/view/View;)I

    move-result v0

    sub-int v10, v12, v0

    .line 83083
    .local v2, "left":I
    .restart local v0    # "right":I
    :goto_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/Q3;->A05:I

    if-ne v0, v6, :cond_3

    .line 83084
    iget v13, v5, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 83085
    .local v1, "bottom":I
    iget v11, v5, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Q2;->A00:I

    sub-int/2addr v11, v0

    .line 83086
    .local v3, "top":I
    .end local v0    # "right":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    .local v13, "right":I
    .local p0, "bottom":I
    .local p1, "left":I
    .local p2, "top":I
    :goto_3
    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/QO;->A1D(Landroid/view/View;IIII)V

    .line 83087
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/QP;->A02()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/QP;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83088
    :cond_1
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Q2;->A03:Z

    .line 83089
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Q2;->A02:Z

    .line 83090
    return-void

    .line 83091
    .end local v1    # "bottom":I
    .end local v3
    :cond_3
    iget v11, v5, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 83092
    .restart local v3    # "top":I
    iget v13, v5, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Q2;->A00:I

    add-int/2addr v13, v0

    .restart local v1    # "bottom":I
    goto :goto_3

    .line 83093
    .end local v0
    .end local v2
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0g()I

    move-result v10

    .line 83094
    .restart local v2    # "left":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Q8;->A0E(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    goto :goto_2

    .line 83095
    .end local v0
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0i()I

    move-result v11

    .line 83096
    .restart local v3    # "top":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/gI;->A04:Lcom/facebook/ads/redexgen/X/Q8;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Q8;->A0E(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v11

    .line 83097
    .local v0, "bottom":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/Q3;->A05:I

    if-ne v0, v6, :cond_6

    .line 83098
    iget v12, v5, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 83099
    .local v1, "right":I
    iget v10, v5, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Q2;->A00:I

    sub-int/2addr v10, v0

    .restart local v2    # "left":I
    goto :goto_3

    .line 83100
    .end local v1    # "right":I
    .end local v2    # "left":I
    :cond_6
    iget v10, v5, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    .line 83101
    .restart local v2    # "left":I
    iget v12, v5, Lcom/facebook/ads/redexgen/X/Q3;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Q2;->A00:I

    add-int/2addr v12, v0

    goto :goto_3

    .line 83102
    :cond_7
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/QO;->A1B(Landroid/view/View;I)V

    goto :goto_1

    .line 83103
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 83104
    :cond_9
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Q3;->A05:I

    if-ne v0, v6, :cond_a

    const/4 v0, 0x1

    :goto_4
    if-ne v1, v0, :cond_b

    .line 83105
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/QO;->A18(Landroid/view/View;)V

    goto/16 :goto_1

    .line 83106
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 83107
    :cond_b
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/QO;->A1A(Landroid/view/View;I)V

    goto/16 :goto_1
.end method

.method public A2G(Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Q3;Lcom/facebook/ads/redexgen/X/QM;)V
    .locals 3

    .line 83108
    iget v2, p2, Lcom/facebook/ads/redexgen/X/Q3;->A01:I

    .line 83109
    .local v0, "pos":I
    if-ltz v2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qd;->A03()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 83110
    const/4 v1, 0x0

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Q3;->A07:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/QM;->A3u(II)V

    .line 83111
    :cond_0
    return-void
.end method

.method public final A2H()Z
    .locals 2

    .line 83112
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0c()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A4y(I)Landroid/graphics/PointF;
    .locals 6

    .line 83113
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v0

    if-nez v0, :cond_0

    .line 83114
    const/4 v0, 0x0

    return-object v0

    .line 83115
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v0

    .line 83116
    .local v1, "firstChildPos":I
    const/4 v4, 0x1

    if-ge p1, v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/gI;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/gI;->A0G:[Ljava/lang/String;

    const-string v1, "FFnbbIQmxzlcCB5QJgqtb02Njm6aLfkX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_2

    const/4 v4, -0x1

    .line 83117
    .local v0, "direction":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gI;->A00:I

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 83118
    int-to-float v1, v4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 83119
    :cond_3
    int-to-float v1, v4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
