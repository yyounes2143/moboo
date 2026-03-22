.class public final Lcom/facebook/ads/redexgen/X/D0;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dc;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/E1;

.field public final A01:Landroid/graphics/Paint;

.field public final A02:Lcom/facebook/ads/redexgen/X/dL;

.field public final A03:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A04:Lcom/facebook/ads/redexgen/X/DE;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 641
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4xWU9o1Qdv49zg4k19WdZrOQJ68qlBKJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QfpLWsUkij8dLfBb7Aagb5qXzjDoxZj6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QolGMRpELvSET2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SiemLW4oVdpf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uXL2k0aAaj67psTeNQKHhn5IgBi2NdXT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OArHsnP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "A54GrsZIV89x3qzJRphed5abiMfcDTpl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7SQmPw6zIXtGY8y4ylHwiNNuEQdMSmlG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D0;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D0;->A06()V

    const/high16 v1, 0x42200000    # 40.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/D0;->A08:I

    .line 642
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/D0;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;)V
    .locals 4

    .line 33463
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33464
    new-instance v0, Lcom/facebook/ads/redexgen/X/2q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2q;-><init>(Lcom/facebook/ads/redexgen/X/D0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A04:Lcom/facebook/ads/redexgen/X/DE;

    .line 33465
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/D0;->A03:Lcom/facebook/ads/redexgen/X/Ua;

    .line 33466
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D0;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 33467
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A01:Landroid/graphics/Paint;

    .line 33468
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D0;->A01:Landroid/graphics/Paint;

    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33469
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/D0;->setColorFilter(I)V

    .line 33470
    sget v3, Lcom/facebook/ads/redexgen/X/D0;->A07:I

    sget v2, Lcom/facebook/ads/redexgen/X/D0;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/D0;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/D0;->A07:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D0;->setPadding(IIII)V

    .line 33471
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D0;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/D0;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33472
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/D0;->A05()V

    .line 33473
    new-instance v0, Lcom/facebook/ads/redexgen/X/du;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/du;-><init>(Lcom/facebook/ads/redexgen/X/D0;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/D0;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33474
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/D0;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 33475
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/D0;->A02:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/D0;)Lcom/facebook/ads/redexgen/X/Ua;
    .locals 0

    .line 33476
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/D0;->A03:Lcom/facebook/ads/redexgen/X/Ua;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/D0;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 0

    .line 33477
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/E1;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/D0;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 1

    .line 33478
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0Z:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/D0;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33479
    return-void
.end method

.method private A05()V
    .locals 1

    .line 33480
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0b:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/D0;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33481
    return-void
.end method

.method public static A06()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/D0;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x64t
        -0x3ct
        -0x3dt
        -0x4ct
        0x6ft
        -0x70t
        -0x4dt
    .end array-data
.end method

.method private A07()Z
    .locals 2

    .line 33482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/E1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getVolume()F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/D0;)Z
    .locals 0

    .line 33483
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/D0;->A07()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A09()V
    .locals 4

    .line 33484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/E1;

    if-nez v0, :cond_0

    .line 33485
    return-void

    .line 33486
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/D0;->A07()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/D0;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/D0;->A06:[Ljava/lang/String;

    const-string v1, "aX931uSfPaE8IiOHtPCxhipRkXbTn1t9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ET7wr0zhj8rUQx1GjBOUHwAZuNFVr5BQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 33487
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/D0;->A04()V

    .line 33488
    :goto_0
    return-void

    .line 33489
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/D0;->A05()V

    goto :goto_0
.end method

.method public final AAm(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 2

    .line 33490
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/E1;

    .line 33491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/E1;

    if-eqz v0, :cond_0

    .line 33492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A04:Lcom/facebook/ads/redexgen/X/DE;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A05(Lcom/facebook/ads/redexgen/X/Tf;)Z

    .line 33493
    :cond_0
    return-void
.end method

.method public final AJk(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 5

    .line 33494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/E1;

    if-eqz v0, :cond_0

    .line 33495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/D0;->A04:Lcom/facebook/ads/redexgen/X/DE;

    sget-object v2, Lcom/facebook/ads/redexgen/X/D0;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/D0;->A06:[Ljava/lang/String;

    const-string v1, "f5V50lgekxKfxPRjN4EQZ5T7YD8zyqkA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "6bYokHrcutoPgrqwaKTDD5vNcVht1LGT"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Te;->A06(Lcom/facebook/ads/redexgen/X/Tf;)Z

    .line 33496
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A00:Lcom/facebook/ads/redexgen/X/E1;

    .line 33497
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 33498
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/D0;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 33499
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/D0;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 33500
    .local v1, "y":I
    int-to-float v3, v1

    int-to-float v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D0;->A01:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33501
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 33502
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 33503
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 33504
    sget v1, Lcom/facebook/ads/redexgen/X/D0;->A08:I

    .line 33505
    .local v0, "width":I
    sget v0, Lcom/facebook/ads/redexgen/X/D0;->A08:I

    .line 33506
    .local v1, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/D0;->setMeasuredDimension(II)V

    .line 33507
    return-void
.end method
