.class public final Lcom/facebook/ads/redexgen/X/6H;
.super Lcom/facebook/ads/redexgen/X/OD;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static A09:I

.field public static A0A:I

.field public static A0B:I

.field public static A0C:I

.field public static A0D:I

.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/Ua;

.field public A03:Z

.field public final A04:I

.field public final A05:Landroid/os/Handler;

.field public final A06:Landroid/view/inputmethod/InputMethodManager;

.field public final A07:Ljava/lang/Runnable;

.field public final A08:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 387
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KCgVVt0Ap7UjFwdZVPwtujaSBd4wOGh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "pwlBzpehZvT0dx09nfsqJf3x9Ohs0th5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vfZ4vr2K2y2ARDvqPAWs6IAB7KSzcYkK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bFCbuQIkoS9nYpv83ewRiG67IWanvmGf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GLbAB0S4L"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VAKU94yPMVJGstkAs9GlkzAfXtUrDcQU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ELeO8zIeBErz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BBoYkiBeDILGrcaYIrD29JxsdoJmJVn4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6H;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6H;->A09()V

    const/16 v1, 0x1c2

    sput v1, Lcom/facebook/ads/redexgen/X/6H;->A0B:I

    .line 388
    const/16 v0, 0x1f4

    sput v0, Lcom/facebook/ads/redexgen/X/6H;->A09:I

    .line 389
    const/16 v0, 0x32

    sput v0, Lcom/facebook/ads/redexgen/X/6H;->A0A:I

    .line 390
    sput v1, Lcom/facebook/ads/redexgen/X/6H;->A0D:I

    .line 391
    const/16 v0, 0x96

    sput v0, Lcom/facebook/ads/redexgen/X/6H;->A0C:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R0;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Ljava/lang/String;I)V
    .locals 3

    .line 17477
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/OD;-><init>(Lcom/facebook/ads/redexgen/X/R0;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;)V

    .line 17478
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A00:I

    .line 17479
    iput v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A01:I

    .line 17480
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A03:Z

    .line 17481
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xq;-><init>(Lcom/facebook/ads/redexgen/X/6H;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A07:Ljava/lang/Runnable;

    .line 17482
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/6H;->A08:Ljava/lang/String;

    .line 17483
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A05:Landroid/os/Handler;

    .line 17484
    const/16 v2, 0x70

    const/16 v1, 0xc

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/dL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A06:Landroid/view/inputmethod/InputMethodManager;

    .line 17485
    iput p6, p0, Lcom/facebook/ads/redexgen/X/6H;->A04:I

    .line 17486
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/6H;)I
    .locals 0

    .line 17487
    iget p0, p0, Lcom/facebook/ads/redexgen/X/6H;->A04:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/6H;)I
    .locals 0

    .line 17488
    iget p0, p0, Lcom/facebook/ads/redexgen/X/6H;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/6H;)I
    .locals 2

    .line 17489
    iget v1, p0, Lcom/facebook/ads/redexgen/X/6H;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A00:I

    return v1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/6H;)Landroid/os/Handler;
    .locals 0

    .line 17490
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6H;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/6H;)Ljava/lang/Runnable;
    .locals 0

    .line 17491
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6H;->A07:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/6H;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/6H;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6H;->A0F:[Ljava/lang/String;

    const-string v1, "rGUQ6sPwqM0P"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .locals 1

    .line 17492
    const/high16 v0, 0x60000000

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 17493
    return-void
.end method

.method private A07()V
    .locals 5

    .line 17494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A08:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 17495
    return-void

    .line 17496
    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A08:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 17497
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/R0;

    const/16 v2, 0xc

    const/16 v1, 0x1f

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/R0;->A0E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V

    .line 17498
    :cond_1
    :goto_0
    return-void

    .line 17499
    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A08:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17500
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/R0;

    const/16 v2, 0x50

    const/16 v1, 0x20

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/R0;->A0E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V

    goto :goto_0

    .line 17501
    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A08:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17502
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/R0;

    const/16 v2, 0x2b

    const/16 v1, 0x25

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/R0;->A0E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V

    goto :goto_0

    .line 17503
    :cond_4
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A08:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17504
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/R0;

    sget-object v0, Lcom/facebook/ads/redexgen/X/dh;->A04:Lcom/facebook/ads/redexgen/X/dh;

    .line 17505
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dh;->A03()Ljava/lang/String;

    move-result-object v0

    .line 17506
    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/R0;->A0E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V

    goto :goto_0
.end method

.method private A08()V
    .locals 1

    .line 17507
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 17508
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0xb8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6H;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x5et
        0x51t
        0x54t
        0x5et
        0x56t
        0x62t
        0x4et
        0x52t
        0x48t
        0x4ft
        0x5et
        0x58t
        0x24t
        0x28t
        0x2at
        0x69t
        0x21t
        0x26t
        0x24t
        0x22t
        0x25t
        0x28t
        0x28t
        0x2ct
        0x69t
        0x26t
        0x23t
        0x34t
        0x69t
        0x25t
        0x26t
        0x29t
        0x29t
        0x22t
        0x35t
        0x69t
        0x24t
        0x2bt
        0x2et
        0x24t
        0x2ct
        0x22t
        0x23t
        0x76t
        0x7at
        0x78t
        0x3bt
        0x73t
        0x74t
        0x76t
        0x70t
        0x77t
        0x7at
        0x7at
        0x7et
        0x3bt
        0x74t
        0x71t
        0x66t
        0x3bt
        0x7ct
        0x7bt
        0x61t
        0x70t
        0x67t
        0x66t
        0x61t
        0x7ct
        0x61t
        0x7ct
        0x74t
        0x79t
        0x3bt
        0x76t
        0x79t
        0x7ct
        0x76t
        0x7et
        0x70t
        0x71t
        0x2t
        0xet
        0xct
        0x4ft
        0x7t
        0x0t
        0x2t
        0x4t
        0x3t
        0xet
        0xet
        0xat
        0x4ft
        0x0t
        0x5t
        0x12t
        0x4ft
        0xft
        0x0t
        0x15t
        0x8t
        0x17t
        0x4t
        0x4ft
        0x0t
        0x5t
        0x3et
        0x2t
        0xdt
        0x8t
        0x2t
        0xat
        0x35t
        0x32t
        0x2ct
        0x29t
        0x28t
        0x3t
        0x31t
        0x39t
        0x28t
        0x34t
        0x33t
        0x38t
        0x1et
        0x18t
        0xet
        0x19t
        0x34t
        0x9t
        0x1et
        0xdt
        0xdt
        0xet
        0x19t
        0xet
        0xft
        0x34t
        0x8t
        0x7t
        0x2t
        0x8t
        0x0t
        0x34t
        0x2t
        0xat
        0x9t
        0x34t
        0x8t
        0x7t
        0x2t
        0x8t
        0x0t
        0x18t
        0x51t
        0x57t
        0x41t
        0x56t
        0x7bt
        0x46t
        0x51t
        0x42t
        0x42t
        0x41t
        0x56t
        0x41t
        0x40t
        0x7bt
        0x47t
        0x48t
        0x4dt
        0x47t
        0x4ft
        0x7bt
        0x4dt
        0x45t
        0x46t
        0x7bt
        0x50t
        0x5dt
        0x54t
        0x4dt
        0x4at
        0x43t
    .end array-data
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/6H;)V
    .locals 0

    .line 17509
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6H;->A06()V

    return-void
.end method

.method public static synthetic A0B(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 17510
    const/4 p0, 0x1

    return p0
.end method

.method private setPadding(I)V
    .locals 2

    .line 17592
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 17593
    sget v0, Lcom/facebook/ads/redexgen/X/6H;->A0C:I

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/6H;->setPadding(IIII)V

    .line 17594
    :goto_0
    return-void

    .line 17595
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/6H;->A0D:I

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/6H;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public final A0E()Lcom/facebook/ads/redexgen/X/ZY;
    .locals 1

    .line 17511
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Lcom/facebook/ads/redexgen/X/6H;)V

    return-object v0
.end method

.method public final A0F()V
    .locals 8

    .line 17512
    const/high16 v0, 0x60000000

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 17513
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6H;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6H;->setPadding(I)V

    .line 17514
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 17515
    .local v0, "shape":Landroid/graphics/drawable/GradientDrawable;
    sget v0, Lcom/facebook/ads/redexgen/X/6H;->A0A:I

    int-to-float v7, v0

    sget v0, Lcom/facebook/ads/redexgen/X/6H;->A0A:I

    int-to-float v6, v0

    sget v0, Lcom/facebook/ads/redexgen/X/6H;->A0A:I

    int-to-float v4, v0

    sget v0, Lcom/facebook/ads/redexgen/X/6H;->A0A:I

    int-to-float v1, v0

    const/16 v0, 0x8

    new-array v2, v0, [F

    const/4 v3, 0x0

    aput v7, v2, v3

    const/4 v0, 0x1

    aput v6, v2, v0

    const/4 v0, 0x2

    aput v4, v2, v0

    const/4 v4, 0x3

    aput v1, v2, v4

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v2, v0

    const/4 v0, 0x5

    aput v1, v2, v0

    const/4 v0, 0x6

    aput v1, v2, v0

    const/4 v0, 0x7

    aput v1, v2, v0

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 17516
    const/4 v2, -0x1

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 17517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/ZO;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17518
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Xp;-><init>()V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17519
    const/4 v5, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17520
    .local v3, "controlsViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/6H;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17522
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17523
    .local v4, "webViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZO;->getId()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17524
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/LJ;->setBackgroundColor(I)V

    .line 17526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/6H;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/LJ;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17528
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/6H;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17529
    const/high16 v1, 0x40000000    # 2.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 17530
    .local v5, "progressBarHeightPx":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17531
    .local v7, "progressBarParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZO;->getId()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0C:Lcom/facebook/ads/redexgen/X/ZP;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/ZP;->setProgress(I)V

    .line 17533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0C:Lcom/facebook/ads/redexgen/X/ZP;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/6H;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17534
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6H;->A06()V

    .line 17535
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 17536
    return-void
.end method

.method public final A0G()V
    .locals 3

    .line 17537
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6H;->A08()V

    .line 17538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->overridePendingTransition(II)V

    .line 17539
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v0

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v0, v0, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 17540
    .local v0, "slide_out_down":Landroid/view/animation/TranslateAnimation;
    sget v0, Lcom/facebook/ads/redexgen/X/6H;->A09:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 17541
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 17542
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xs;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xs;-><init>(Lcom/facebook/ads/redexgen/X/6H;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 17543
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/6H;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17544
    return-void
.end method

.method public final A0H(Ljava/lang/String;)V
    .locals 4

    .line 17545
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A04:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A03:Z

    if-nez v0, :cond_1

    .line 17546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A03:Z

    .line 17547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A05:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17548
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    .line 17549
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v3

    .line 17550
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A02:Lcom/facebook/ads/redexgen/X/Ua;

    if-eqz v0, :cond_0

    .line 17552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6H;->A02:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0J:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 17553
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6H;->A07()V

    .line 17554
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A09:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A04:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/US;->AB8(Ljava/lang/String;Ljava/util/Map;)V

    .line 17555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A08:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17556
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 17557
    .local v1, "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A04:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17558
    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A05:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17559
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17560
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17561
    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A06:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17562
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17563
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A09:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A04:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/US;->ABH(Ljava/lang/String;Ljava/util/Map;)V

    .line 17565
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public final AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 3

    .line 17566
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/OD;->AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V

    .line 17567
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OD;->A04:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A09:Lcom/facebook/ads/redexgen/X/US;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A02:Lcom/facebook/ads/redexgen/X/Ua;

    .line 17568
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 17569
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/OD;->onAttachedToWindow()V

    .line 17570
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6H;->A08()V

    .line 17571
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v0

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v0, v0, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 17572
    .local v0, "slide_in_up_from_bottom":Landroid/view/animation/TranslateAnimation;
    sget v0, Lcom/facebook/ads/redexgen/X/6H;->A0B:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 17573
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 17574
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xr;-><init>(Lcom/facebook/ads/redexgen/X/6H;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 17575
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/6H;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17576
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 17577
    .local v0, "this":Lcom/facebook/ads/redexgen/X/6H;
    .local p0, "view":Landroid/view/View;
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6H;->A0G()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17578
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/6H;
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 17579
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/OD;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 17580
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6H;->setPadding(I)V

    .line 17581
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 17582
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/OD;->onDestroy()V

    .line 17583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6H;->A05:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17584
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 17585
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 17586
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 17587
    :pswitch_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A01:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A01:I

    .line 17588
    iget v1, p0, Lcom/facebook/ads/redexgen/X/6H;->A01:I

    const/4 v0, 0x5

    if-lt v1, v0, :cond_0

    .line 17589
    const/16 v2, 0x7c

    const/16 v1, 0x1e

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6H;->A0H(Ljava/lang/String;)V

    goto :goto_0

    .line 17590
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6H;->A06:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6H;->A06:Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/facebook/ads/redexgen/X/6H;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6H;->A0F:[Ljava/lang/String;

    const-string v1, "wSSlTu5XSXtb"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17591
    const/16 v2, 0x9a

    const/16 v1, 0x1e

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/6H;->A0H(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
