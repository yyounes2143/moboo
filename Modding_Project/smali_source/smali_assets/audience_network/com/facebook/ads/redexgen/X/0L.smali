.class public final Lcom/facebook/ads/redexgen/X/0L;
.super Lcom/facebook/ads/redexgen/X/0d;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ck;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Xy;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/Xy;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/6F;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "J7yX0QGw9CwhbXJlOgK1AZPNtt2UF0On"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oXMSY1TARkqssgt6s8jHvILUEU9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ivvOLLZvAzFcQQYEM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "46hEJr0dkjUa2YxjnqHHZtVzHBYgDtfX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qOyhICr4SrTKnx9gG6JsVKrXp45uLK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kbgvhlczlSdLn8qANYfrfCagYhnCySOb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Z6RoLzaVoBLmlhzvAeWOPUTl5laN13sF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YB9cTMd7bVO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0L;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0L;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 3

    .line 3543
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/0d;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 3544
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A03:I

    .line 3545
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A02:I

    .line 3546
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A01:I

    .line 3547
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A00:I

    .line 3548
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A05:Z

    .line 3549
    new-instance v2, Lcom/facebook/ads/redexgen/X/ch;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/ch;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/cg;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/cg;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/6F;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/6F;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/ch;Lcom/facebook/ads/redexgen/X/cg;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A06:Lcom/facebook/ads/redexgen/X/6F;

    .line 3550
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0L;->A02()V

    .line 3551
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;)V
    .locals 3

    .line 3552
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/0d;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;)V

    .line 3553
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A03:I

    .line 3554
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A02:I

    .line 3555
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A01:I

    .line 3556
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A00:I

    .line 3557
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A05:Z

    .line 3558
    new-instance v2, Lcom/facebook/ads/redexgen/X/ch;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/ch;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/cg;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/cg;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/6F;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/6F;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/ch;Lcom/facebook/ads/redexgen/X/cg;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A06:Lcom/facebook/ads/redexgen/X/6F;

    .line 3559
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0L;->A02()V

    .line 3560
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3561
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/0d;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    .line 3562
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A03:I

    .line 3563
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A02:I

    .line 3564
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A01:I

    .line 3565
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A00:I

    .line 3566
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A05:Z

    .line 3567
    new-instance v2, Lcom/facebook/ads/redexgen/X/ch;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/ch;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/cg;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/cg;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/6F;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/6F;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/ch;Lcom/facebook/ads/redexgen/X/cg;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A06:Lcom/facebook/ads/redexgen/X/6F;

    .line 3568
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0L;->A02()V

    .line 3569
    return-void
.end method

.method private A00(I)I
    .locals 7

    .line 3570
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A00:I

    mul-int/lit8 v6, v0, 0x2

    .line 3571
    .local v0, "spacing":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0L;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0L;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    .line 3572
    .local v1, "availableWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6g;->getAdapter()Lcom/facebook/ads/redexgen/X/QC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0B()I

    move-result v4

    .line 3573
    .local v2, "numItems":I
    const/4 v3, 0x0

    .line 3574
    .local v3, "numFullItems":I
    const v0, 0x7fffffff

    .line 3575
    .local v4, "itemSize":I
    :goto_0
    if-le v0, p1, :cond_1

    .line 3576
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v4, :cond_0

    .line 3577
    return p1

    .line 3578
    :cond_0
    mul-int v0, v3, v6

    sub-int v0, v5, v0

    int-to-float v2, v0

    int-to-float v1, v3

    const v0, 0x3eaa7efa    # 0.333f

    add-float/2addr v1, v0

    div-float/2addr v2, v1

    float-to-int v0, v2

    goto :goto_0

    .line 3579
    :cond_1
    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/0L;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2e

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/0L;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0L;->A08:[Ljava/lang/String;

    const-string v1, "76s3uTgYoGqvxE8PFJZmOuk3NB8C1jhQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 3580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A06:Lcom/facebook/ads/redexgen/X/6F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/gI;->A2C(I)V

    .line 3581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A06:Lcom/facebook/ads/redexgen/X/6F;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/0d;->setLayoutManager(Lcom/facebook/ads/redexgen/X/QO;)V

    .line 3582
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/0L;->setSaveEnabled(Z)V

    .line 3583
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/0d;->setSnapDelegate(Lcom/facebook/ads/redexgen/X/ck;)V

    .line 3584
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 3585
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0L;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x44t
        -0x45t
        -0x63t
        -0x52t
        -0x4ct
        -0x4et
        -0x70t
        -0x4bt
        -0x52t
        -0x45t
        -0x4ct
        -0x4et
        -0x4ft
    .end array-data
.end method

.method private A04(II)V
    .locals 4

    .line 3586
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A03:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A02:I

    if-ne p2, v0, :cond_0

    .line 3587
    return-void

    .line 3588
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/0L;->A03:I

    .line 3589
    iput p2, p0, Lcom/facebook/ads/redexgen/X/0L;->A02:I

    .line 3590
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0L;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0L;->A08:[Ljava/lang/String;

    const-string v1, "arB2ao"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 3591
    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0L;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3592
    :cond_2
    return-void
.end method


# virtual methods
.method public final A20(IZ)V
    .locals 1

    .line 3593
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/0d;->A20(IZ)V

    .line 3594
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/0L;->A04(II)V

    .line 3595
    return-void
.end method

.method public final A8g(I)I
    .locals 3

    .line 3596
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3597
    .local v0, "scrollXAbs":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0d;->A06:I

    if-gt v2, v0, :cond_0

    .line 3598
    const/4 v0, 0x0

    return v0

    .line 3599
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A01:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A01:I

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getChildSpacing()I
    .locals 1

    .line 3600
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A00:I

    return v0
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 3601
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6g;->onMeasure(II)V

    .line 3602
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0L;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0L;->getPaddingBottom()I

    move-result v0

    add-int/2addr v3, v0

    .line 3603
    .local v0, "verticalPadding":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A05:Z

    if-eqz v0, :cond_2

    .line 3604
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    float-to-int v1, v0

    .line 3605
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0L;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0F(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v1, v0

    add-int/2addr v1, v3

    .line 3606
    .local v1, "height":I
    .restart local v1    # "height":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3607
    :goto_1
    sub-int/2addr v1, v3

    .line 3608
    .local v2, "itemSize":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A05:Z

    if-eqz v0, :cond_1

    .line 3609
    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A09:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3610
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0L;->getMeasuredWidth()I

    move-result v1

    add-int v0, v2, v3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/0L;->setMeasuredDimension(II)V

    .line 3611
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A05:Z

    if-nez v0, :cond_0

    .line 3612
    iget v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A00:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/0L;->setChildWidth(I)V

    .line 3613
    :cond_0
    return-void

    .line 3614
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/0L;->A00(I)I

    move-result v2

    goto :goto_2

    .line 3615
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3616
    goto :goto_1

    .line 3617
    :sswitch_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 3618
    .end local v1    # "height":I
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0L;->getMeasuredWidth()I

    move-result v0

    int-to-float v1, v0

    const v0, 0x3ff47ae1    # 1.91f

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAdapter(Lcom/facebook/ads/redexgen/X/QC;)V
    .locals 2

    .line 3619
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0L;->A06:Lcom/facebook/ads/redexgen/X/6F;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A2J(I)V

    .line 3620
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/6g;->setAdapter(Lcom/facebook/ads/redexgen/X/QC;)V

    .line 3621
    return-void

    .line 3622
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setChildSpacing(I)V
    .locals 0

    .line 3623
    iput p1, p0, Lcom/facebook/ads/redexgen/X/0L;->A00:I

    .line 3624
    return-void
.end method

.method public setChildWidth(I)V
    .locals 6

    .line 3625
    iput p1, p0, Lcom/facebook/ads/redexgen/X/0L;->A01:I

    .line 3626
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0L;->getMeasuredWidth()I

    move-result v5

    .line 3627
    .local v0, "pageWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0L;->getPaddingLeft()I

    move-result v0

    sub-int v2, v5, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0L;->getPaddingRight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 3628
    .local v1, "innerWidth":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0L;->A06:Lcom/facebook/ads/redexgen/X/6F;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A01:I

    sub-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6F;->A2K(I)V

    .line 3629
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/0L;->A06:Lcom/facebook/ads/redexgen/X/6F;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0L;->A01:I

    int-to-double v2, v0

    int-to-double v0, v5

    div-double/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/6F;->A2I(D)V

    .line 3630
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    .line 3631
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/0L;->A20(IZ)V

    .line 3632
    return-void
.end method

.method public setOnPageChangedListener(Lcom/facebook/ads/redexgen/X/Xy;)V
    .locals 0

    .line 3633
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0L;->A04:Lcom/facebook/ads/redexgen/X/Xy;

    .line 3634
    return-void
.end method

.method public setShowTextInCarousel(Z)V
    .locals 0

    .line 3635
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/0L;->A05:Z

    .line 3636
    return-void
.end method
