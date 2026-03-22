.class public abstract Lcom/facebook/ads/redexgen/X/5Q;
.super Lcom/facebook/ads/redexgen/X/Ir;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Il;
    }
.end annotation


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;

.field public static final A0N:I

.field public static final A0O:I

.field public static final A0P:I


# instance fields
.field public A00:Landroid/widget/RelativeLayout;

.field public A01:Lcom/facebook/ads/redexgen/X/YM;

.field public A02:Lcom/facebook/ads/redexgen/X/bX;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/FH;

.field public A04:Lcom/facebook/ads/redexgen/X/cp;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/graphics/Paint;

.field public final A09:Landroid/graphics/Path;

.field public final A0A:Landroid/graphics/RectF;

.field public final A0B:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Wh;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A0E:Lcom/facebook/ads/redexgen/X/ai;

.field public final A0F:Lcom/facebook/ads/redexgen/X/DX;

.field public final A0G:Lcom/facebook/ads/redexgen/X/DR;

.field public final A0H:Lcom/facebook/ads/redexgen/X/DP;

.field public final A0I:Lcom/facebook/ads/redexgen/X/DN;

.field public final A0J:Lcom/facebook/ads/redexgen/X/DE;

.field public final A0K:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 348
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XgHadHW09EVAxZ9Csjyh8Iwd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cGY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0gnHO0byxZtUV0t5q6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nitlVKI6s75UlUdu4qHy2TBluRJ6Vnqb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dqu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CAnKNEP5j3LNWAO1IgUwk41cBq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Gj8h5dX0pUMTu0Q6FRM85YsFx7LjGw4a"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ydUjPQqek3X4wwrCfoz9Rz5n"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5Q;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5Q;->A03()V

    const/high16 v1, 0x3f800000    # 1.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5Q;->A0O:I

    .line 349
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5Q;->A0P:I

    .line 350
    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5Q;->A0N:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/FH;)V
    .locals 4

    .line 15335
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ir;-><init>(Lcom/facebook/ads/redexgen/X/ai;Z)V

    .line 15336
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A09:Landroid/graphics/Path;

    .line 15337
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0A:Landroid/graphics/RectF;

    .line 15338
    new-instance v0, Lcom/facebook/ads/redexgen/X/5Y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5Y;-><init>(Lcom/facebook/ads/redexgen/X/5Q;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0J:Lcom/facebook/ads/redexgen/X/DE;

    .line 15339
    new-instance v0, Lcom/facebook/ads/redexgen/X/5X;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5X;-><init>(Lcom/facebook/ads/redexgen/X/5Q;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0F:Lcom/facebook/ads/redexgen/X/DX;

    .line 15340
    new-instance v0, Lcom/facebook/ads/redexgen/X/5W;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5W;-><init>(Lcom/facebook/ads/redexgen/X/5Q;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0H:Lcom/facebook/ads/redexgen/X/DP;

    .line 15341
    new-instance v0, Lcom/facebook/ads/redexgen/X/5V;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5V;-><init>(Lcom/facebook/ads/redexgen/X/5Q;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0G:Lcom/facebook/ads/redexgen/X/DR;

    .line 15342
    new-instance v0, Lcom/facebook/ads/redexgen/X/5U;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5U;-><init>(Lcom/facebook/ads/redexgen/X/5Q;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0I:Lcom/facebook/ads/redexgen/X/DN;

    .line 15343
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0D:Lcom/facebook/ads/redexgen/X/Xn;

    .line 15344
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0E:Lcom/facebook/ads/redexgen/X/ai;

    .line 15345
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/FH;

    .line 15346
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0K:Ljava/lang/String;

    .line 15347
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 15348
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    .line 15349
    invoke-static {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/Wh;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Wf;)Lcom/facebook/ads/redexgen/X/Wh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0C:Lcom/facebook/ads/redexgen/X/Wh;

    .line 15350
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5Q;->setGravity(I)V

    .line 15351
    sget v3, Lcom/facebook/ads/redexgen/X/5Q;->A0O:I

    sget v2, Lcom/facebook/ads/redexgen/X/5Q;->A0O:I

    sget v1, Lcom/facebook/ads/redexgen/X/5Q;->A0O:I

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/5Q;->setPadding(IIII)V

    .line 15352
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 15353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5Q;->setUpView(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 15354
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A08:Landroid/graphics/Paint;

    .line 15355
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A08:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15356
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A08:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15357
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A08:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 15358
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A08:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15359
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5Q;)Lcom/facebook/ads/redexgen/X/FH;
    .locals 0

    .line 15360
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/FH;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/5Q;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5Q;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5Q;->A0M:[Ljava/lang/String;

    const-string v1, "5LW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "hlZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xb

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 1

    .line 15361
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/bX;

    if-nez v0, :cond_0

    .line 15362
    return-void

    .line 15363
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->A1T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A07:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->A1T()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A06:Z

    if-eqz v0, :cond_3

    .line 15364
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/bX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/bX;->ACO()V

    .line 15365
    :cond_3
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5Q;->A0L:[B

    return-void

    :array_0
    .array-data 1
        0x44t
        0x46t
        0x55t
        0x48t
        0x52t
        0x54t
        0x42t
        0x4bt
        0x78t
        0x44t
        0x46t
        0x55t
        0x43t
    .end array-data
.end method

.method private A04(Landroid/view/View;)V
    .locals 3

    .line 15366
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15367
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 15368
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/5Q;)V
    .locals 0

    .line 15369
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5Q;->A02()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/5Q;Z)Z
    .locals 0

    .line 15370
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A07:Z

    return p1
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/5Q;Z)Z
    .locals 0

    .line 15371
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A06:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 2

    .line 15452
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5Q;->setUpImageView(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 15453
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5Q;->setUpVideoView(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 15454
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5Q;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 15455
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/redexgen/X/YM;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 15456
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 15457
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5Q;->A1V(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 15458
    return-void
.end method


# virtual methods
.method public A0C()Z
    .locals 1

    .line 15372
    const/4 v0, 0x0

    return v0
.end method

.method public final A1B()V
    .locals 1

    .line 15373
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ae;->A1B()V

    .line 15374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0C:Lcom/facebook/ads/redexgen/X/Wh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wh;->A03()V

    .line 15375
    return-void
.end method

.method public final A1M()Z
    .locals 1

    .line 15376
    const/4 v0, 0x0

    return v0
.end method

.method public final A1P()V
    .locals 1

    .line 15377
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cp;->A01()V

    .line 15379
    :cond_0
    return-void
.end method

.method public final A1Q()V
    .locals 5

    .line 15380
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15381
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->A1R()V

    .line 15382
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    sget-object v3, Lcom/facebook/ads/redexgen/X/db;->A02:Lcom/facebook/ads/redexgen/X/db;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5Q;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5Q;->A0M:[Ljava/lang/String;

    const-string v1, "GrzUS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/cp;->A05(Lcom/facebook/ads/redexgen/X/db;)V

    .line 15383
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1R()V
    .locals 5

    .line 15384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A03:Lcom/facebook/ads/redexgen/X/FH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0P()Lcom/facebook/ads/redexgen/X/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ba;->getVolume()F

    move-result v4

    .line 15385
    .local v0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cp;->getVolume()F

    move-result v0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_0

    .line 15386
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5Q;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5Q;->A0M:[Ljava/lang/String;

    const-string v1, "cdp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "iOc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/cp;->setVolume(F)V

    .line 15387
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1S()Z
    .locals 4

    .line 15388
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cp;->A06()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5Q;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5Q;->A0M:[Ljava/lang/String;

    const-string v1, "SbvNib3Q04NWLkmSI4CaBbpy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1T()Z
    .locals 1

    .line 15389
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A05:Z

    return v0
.end method

.method public final synthetic A1U(Landroid/view/View;)V
    .locals 4

    .line 15390
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    return-void
.end method

.method public abstract A1V(Lcom/facebook/ads/redexgen/X/dL;)V
.end method

.method public final A1W(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15391
    .local p1, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cp;->A02()V

    .line 15392
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15393
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdEventManager()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0K:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/cp;->A04(Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Ljava/util/Map;)V

    .line 15394
    :cond_0
    return-void
.end method

.method public final getMediaContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .line 15395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A00:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/cp;
    .locals 1

    .line 15396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 15397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A09:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 15398
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0A:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15399
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5Q;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/5Q;->A0N:I

    int-to-float v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/5Q;->A0N:I

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 15400
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A09:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A08:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 15401
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/5Q;->A0O:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->getWidth()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/5Q;->A0O:I

    sub-int/2addr v1, v0

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->getHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/5Q;->A0O:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v4, v3, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15402
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5Q;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/5Q;->A0P:I

    int-to-float v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/5Q;->A0P:I

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 15403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A09:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 15404
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ir;->onDraw(Landroid/graphics/Canvas;)V

    .line 15405
    return-void
.end method

.method public setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 15406
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/aQ;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/aQ;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 15407
    return-void
.end method

.method public setCTAInfo(Lcom/facebook/ads/redexgen/X/Mz;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Mz;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15408
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0K:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/KE;->setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;)V

    .line 15409
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 15410
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/redexgen/X/YM;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YM;->setVisibility(I)V

    .line 15411
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->setVisibility(I)V

    .line 15412
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/redexgen/X/YM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 15413
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04()Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Il;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Il;-><init>(Lcom/facebook/ads/redexgen/X/5Q;Lcom/facebook/ads/redexgen/X/5Y;)V

    .line 15414
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A06(Lcom/facebook/ads/redexgen/X/Zo;)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v0

    .line 15415
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 15416
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 15417
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A05:Z

    .line 15418
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/bX;)V
    .locals 0

    .line 15419
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A02:Lcom/facebook/ads/redexgen/X/bX;

    .line 15420
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 3

    .line 15421
    new-instance v0, Lcom/facebook/ads/redexgen/X/YM;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/YM;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/redexgen/X/YM;

    .line 15422
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15423
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/redexgen/X/YM;

    .line 15424
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1J(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bd;-><init>(Lcom/facebook/ads/redexgen/X/5Q;)V

    .line 15425
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 15426
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/redexgen/X/YM;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A04(Landroid/view/View;)V

    .line 15427
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 3

    .line 15428
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A00:Landroid/widget/RelativeLayout;

    .line 15429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A00:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A04(Landroid/view/View;)V

    .line 15430
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0C:Lcom/facebook/ads/redexgen/X/Wh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0E:Lcom/facebook/ads/redexgen/X/ai;

    .line 15431
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wh;->A02(Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/Wg;

    move-result-object v2

    .line 15432
    .local v0, "supported":Lcom/facebook/ads/redexgen/X/Wg;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0E:Lcom/facebook/ads/redexgen/X/ai;

    .line 15433
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 15434
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0H()Lcom/facebook/ads/redexgen/X/SO;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Wg;->A01:Z

    .line 15435
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SO;->A00(Z)V

    .line 15436
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0C:Lcom/facebook/ads/redexgen/X/Wh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/Wh;)V

    .line 15437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0E:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1W()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 15438
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15439
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A00:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bc;-><init>(Lcom/facebook/ads/redexgen/X/5Q;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15440
    :cond_0
    :goto_0
    return-void

    .line 15441
    :cond_1
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Wg;->A00:Z

    if-eqz v0, :cond_0

    .line 15442
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A00:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bb;-><init>(Lcom/facebook/ads/redexgen/X/5Q;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 3

    .line 15443
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0K:Ljava/lang/String;

    .line 15444
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdEventManager()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 15445
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ua;
    new-instance v0, Lcom/facebook/ads/redexgen/X/cp;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/cp;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    .line 15446
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1K(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15447
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    .line 15448
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1L(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/be;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/be;-><init>(Lcom/facebook/ads/redexgen/X/5Q;)V

    .line 15449
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 15450
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A04(Landroid/view/View;)V

    .line 15451
    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 15459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cp;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 15460
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 2

    .line 15461
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A01:Lcom/facebook/ads/redexgen/X/YM;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YM;->setVisibility(I)V

    .line 15462
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->setVisibility(I)V

    .line 15463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cp;->setVideoURI(Ljava/lang/String;)V

    .line 15464
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0J:Lcom/facebook/ads/redexgen/X/DE;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A03(Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 15465
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0F:Lcom/facebook/ads/redexgen/X/DX;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A03(Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 15466
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0H:Lcom/facebook/ads/redexgen/X/DP;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A03(Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 15467
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0G:Lcom/facebook/ads/redexgen/X/DR;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A03(Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 15468
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5Q;->A04:Lcom/facebook/ads/redexgen/X/cp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Q;->A0I:Lcom/facebook/ads/redexgen/X/DN;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A03(Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 15469
    return-void
.end method
